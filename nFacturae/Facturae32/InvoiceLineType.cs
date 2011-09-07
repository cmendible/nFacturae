using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace nFacturae.Facturae32
{
    public partial class InvoiceLineType
    {
        public InvoiceLineType AddRequiredFields(string itemDescription, double quantity, double unitPriceWithoutTax, double grossAmount)
        {
            this.ItemDescription = itemDescription;
            this.Quantity = quantity;
            this.UnitPriceWithoutTax = unitPriceWithoutTax;
            this.TotalCost = quantity * unitPriceWithoutTax;
            this.GrossAmount = grossAmount;

            return this;
        }

        public InvoiceLineType AddTax(TaxTypeCodeType taxTypeCode, double taxRate, double taxableBase)
        {
            if (this.TaxesOutputs == null)
                this.TaxesOutputs = new InvoiceLineTypeTax[] { };

            var tax = new InvoiceLineTypeTax();
            tax.TaxTypeCode = taxTypeCode;
            tax.TaxRate = taxRate;
            tax.TaxableBase = new AmountType() { TotalAmount = taxableBase };

            var taxes = new List<InvoiceLineTypeTax>(this.TaxesOutputs);
            taxes.Add(tax);
            this.TaxesOutputs = taxes.ToArray();

            return this;
        }
    }
}
