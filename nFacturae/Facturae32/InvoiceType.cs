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

            var invoices = new List<InvoiceLineType>(this.Items);
            invoices.Add(invoiceLine);
            this.Items = invoices.ToArray();

            this.InvoiceTotals.InvoiceTotal += invoiceLine.TotalCost;

            foreach (var tax in invoiceLine.TaxesOutputs)
            {
                var taxOutput = this.TaxesOutputs.Where(to => to.TaxTypeCode == tax.TaxTypeCode).SingleOrDefault();
                if (taxOutput == null)
                    taxOutput = new TaxOutputType() { TaxTypeCode = tax.TaxTypeCode, TaxRate = tax.TaxRate, TaxableBase = new AmountType() { TotalAmount = new DoubleTwoDecimalType(0) } };
                    
                taxOutput.TaxableBase.TotalAmount.Value += tax.TaxableBase.TotalAmount.Value;
            }

            return this;
        }
    }
   
}
