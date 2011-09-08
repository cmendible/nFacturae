using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace nFacturae.Facturae32
{
    public partial class InvoiceType
    {
        public InvoiceType HeatherAndIssueData(string invoiceNumber, InvoiceDocumentTypeType invoiceDocumentType, InvoiceClassType invoiceClassType, DateTime issueDate, 
            CurrencyCodeType invoiceCurrencyCode, LanguageCodeType languageCodeType)
        {
            this.InvoiceHeader = new InvoiceHeaderType() 
                { 
                    InvoiceNumber = invoiceNumber, 
                    InvoiceDocumentType = invoiceDocumentType, 
                    InvoiceClass = invoiceClassType 
                };

            this.InvoiceIssueData = new InvoiceIssueDataType() 
                { 
                    IssueDate = issueDate, 
                    TaxCurrencyCode = invoiceCurrencyCode, 
                    LanguageName = languageCodeType, 
                    InvoiceCurrencyCode = invoiceCurrencyCode 
                };

            this.TaxesOutputs = new TaxOutputType[] { };
            this.InvoiceTotals = new InvoiceTotalsType();

            this.InvoiceTotals.InvoiceTotal = new DoubleTwoDecimalType();
            this.InvoiceTotals.TotalGrossAmount = new DoubleTwoDecimalType();
            this.InvoiceTotals.TotalGeneralDiscounts = new DoubleTwoDecimalType();
            this.InvoiceTotals.TotalGeneralSurcharges = new DoubleTwoDecimalType();
            this.InvoiceTotals.TotalGrossAmountBeforeTaxes = new DoubleTwoDecimalType();
            this.InvoiceTotals.TotalTaxOutputs = new DoubleTwoDecimalType();
            this.InvoiceTotals.TotalTaxesWithheld = new DoubleTwoDecimalType();
            this.InvoiceTotals.TotalOutstandingAmount = new DoubleTwoDecimalType();
            this.InvoiceTotals.TotalExecutableAmount = new DoubleTwoDecimalType();

            //invoice.InvoiceIssueData.InvoicingPeriod = new PeriodDates() { StartDate = invoicingPeriodStartDate, EndDate = invoicingPeriodEndDate };
            return this;
        }

        public InvoiceType AddLine(Action<InvoiceLineType> line)
        {
            if (this.Items == null)
                this.Items = new InvoiceLineType[] { };

            if (this.TaxesOutputs == null)
                this.TaxesOutputs = new TaxOutputType[] { };

            if (this.InvoiceTotals == null)
                this.InvoiceTotals = new InvoiceTotalsType();

            var invoiceLine = new InvoiceLineType();
            line.Invoke(invoiceLine);

            this.Items = this.Items.Concat(new InvoiceLineType[] { invoiceLine }).ToArray();

            foreach (var tax in invoiceLine.TaxesOutputs)
            {
                var taxOutput = this.TaxesOutputs.Where(to => to.TaxTypeCode == tax.TaxTypeCode).SingleOrDefault();
                if (taxOutput == null)
                {
                    taxOutput = new TaxOutputType() 
                        { 
                            TaxTypeCode = tax.TaxTypeCode, 
                            TaxRate = tax.TaxRate, 
                            TaxableBase = new AmountType() { TotalAmount = new DoubleTwoDecimalType() },
                            TaxAmount = new AmountType() { TotalAmount = new DoubleTwoDecimalType() } 
                        };
                    this.TaxesOutputs = this.TaxesOutputs.Concat(new TaxOutputType[] { taxOutput }).ToArray();
                }

                taxOutput.TaxableBase.TotalAmount.Value += tax.TaxableBase.TotalAmount.Value;
                taxOutput.TaxAmount.TotalAmount.Value += tax.TaxAmount.TotalAmount.Value;
            }

            this.InvoiceTotals.TotalTaxOutputs.Value = this.TaxesOutputs.Sum(to => to.TaxAmount.TotalAmount.Value);
            this.InvoiceTotals.InvoiceTotal.Value = this.Items.Sum(i => i.GrossAmount.Value) + this.InvoiceTotals.TotalTaxOutputs.Value;
            this.InvoiceTotals.TotalGrossAmount.Value = this.Items.Sum(i => i.GrossAmount.Value);
            this.InvoiceTotals.TotalGrossAmountBeforeTaxes.Value = this.Items.Sum(i => i.GrossAmount.Value);
            this.InvoiceTotals.TotalOutstandingAmount.Value = this.InvoiceTotals.InvoiceTotal.Value;
            this.InvoiceTotals.TotalExecutableAmount.Value = this.InvoiceTotals.InvoiceTotal.Value;

            return this;
        }
    }
   
}
