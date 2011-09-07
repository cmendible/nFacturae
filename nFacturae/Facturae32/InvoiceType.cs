using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace nFacturae.Facturae32
{
    public partial class InvoiceType
    {
        public InvoiceType AddRequieredFields(string invoiceNumber, InvoiceDocumentTypeType invoiceDocumentType, InvoiceClassType invoiceClassType, DateTime issueDate, 
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
            this.Items = new InvoiceLineType[] { };

            //invoice.InvoiceIssueData.InvoicingPeriod = new PeriodDates() { StartDate = invoicingPeriodStartDate, EndDate = invoicingPeriodEndDate };
            return this;
        }

        public InvoiceType AddLine(Action<InvoiceLineType> line)
        {
            if (this.Items == null)
                this.Items = new InvoiceLineType[] { };

            var invoiceLine = new InvoiceLineType();
            line.Invoke(invoiceLine);

            var invoices = new List<InvoiceLineType>(this.Items);
            invoices.Add(invoiceLine);
            this.Items = invoices.ToArray();

            return this;
        }
    }
   
}
