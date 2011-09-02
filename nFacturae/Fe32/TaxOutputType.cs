namespace nFacturae.Facturae32
{
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.1")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://www.facturae.es/Facturae/2009/v3.2/Facturae")]
    [System.Xml.Serialization.XmlRootAttribute(Namespace="http://www.facturae.es/Facturae/2009/v3.2/Facturae", IsNullable=true)]
    public partial class TaxOutputType
    {
        
        private TaxTypeCodeType taxTypeCodeField;
        
        private double taxRateField;
        
        private AmountType taxableBaseField;
        
        private AmountType taxAmountField;
        
        private AmountType specialTaxableBaseField;
        
        private AmountType specialTaxAmountField;
        
        private double equivalenceSurchargeField;
        
        private bool equivalenceSurchargeFieldSpecified;
        
        private AmountType equivalenceSurchargeAmountField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual TaxTypeCodeType TaxTypeCode
        {
            get
            {
                return this.taxTypeCodeField;
            }
            set
            {
                this.taxTypeCodeField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual double TaxRate
        {
            get
            {
                return this.taxRateField;
            }
            set
            {
                this.taxRateField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual AmountType TaxableBase
        {
            get
            {
                return this.taxableBaseField;
            }
            set
            {
                this.taxableBaseField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual AmountType TaxAmount
        {
            get
            {
                return this.taxAmountField;
            }
            set
            {
                this.taxAmountField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual AmountType SpecialTaxableBase
        {
            get
            {
                return this.specialTaxableBaseField;
            }
            set
            {
                this.specialTaxableBaseField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual AmountType SpecialTaxAmount
        {
            get
            {
                return this.specialTaxAmountField;
            }
            set
            {
                this.specialTaxAmountField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual double EquivalenceSurcharge
        {
            get
            {
                return this.equivalenceSurchargeField;
            }
            set
            {
                this.equivalenceSurchargeField = value;
                this.EquivalenceSurchargeSpecified = true;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public virtual bool EquivalenceSurchargeSpecified
        {
            get
            {
                return this.equivalenceSurchargeFieldSpecified;
            }
            set
            {
                this.equivalenceSurchargeFieldSpecified = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual AmountType EquivalenceSurchargeAmount
        {
            get
            {
                return this.equivalenceSurchargeAmountField;
            }
            set
            {
                this.equivalenceSurchargeAmountField = value;
            }
        }
    }
}
