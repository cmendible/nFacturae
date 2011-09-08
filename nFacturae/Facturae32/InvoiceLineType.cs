using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace nFacturae.Facturae32
{
    public partial class InvoiceLineType
    {
        public InvoiceLineType Item(string itemDescription, double quantity, double unitPriceWithoutTax)
        {
            this.ItemDescription = itemDescription;
            this.Quantity = quantity;
            this.UnitPriceWithoutTax = new DoubleSixDecimalType(unitPriceWithoutTax);
            this.TotalCost =  new DoubleSixDecimalType(quantity * unitPriceWithoutTax);
            this.GrossAmount = new DoubleSixDecimalType(this.TotalCost.Value); // TotalCost - DiscountAmount + ChargeAmount 

            return this;
        }

        public InvoiceLineType AddTax(TaxTypeCodeType taxTypeCode, double taxRate, double taxableBase)
        {
            if (this.TaxesOutputs == null)
                this.TaxesOutputs = new InvoiceLineTypeTax[] { };

            var tax = new InvoiceLineTypeTax();
            tax.TaxTypeCode = taxTypeCode;
            tax.TaxRate = new DoubleTwoDecimalType(taxRate);
            tax.TaxableBase = new AmountType() { TotalAmount = new DoubleTwoDecimalType(taxableBase) };
            tax.TaxAmount = new AmountType() { TotalAmount = new DoubleTwoDecimalType(taxableBase * taxRate / 100) };

            this.TaxesOutputs = this.TaxesOutputs.Concat(new InvoiceLineTypeTax[] { tax }).ToArray();

            return this;
        }
    }
}
