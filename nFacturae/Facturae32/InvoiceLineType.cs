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

using System.Linq;

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
