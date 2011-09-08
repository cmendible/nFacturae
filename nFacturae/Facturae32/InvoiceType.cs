#region License

//===================================================================================
//Copyright 2011 HexaSystems Corporation
//===================================================================================
//Licensed under the Apache License, Version 2.0 (the "License");
//you may not use this file except in compliance with the License.
//You may obtain a copy of the License at
//http://www.apache.org/licenses/LICENSE-2.0
//===================================================================================
//Unless required by applicable law or agreed to in writing, software
//distributed under the License is distributed on an "AS IS" BASIS,
//WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//See the License for the specific language governing permissions and
//limitations under the License.
//===================================================================================

#endregion

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
