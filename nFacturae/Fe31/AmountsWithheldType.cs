namespace nFacturae.Facturae31
{
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.1")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://www.facturae.es/Facturae/2007/v3.1/Facturae")]
    [System.Xml.Serialization.XmlRootAttribute(Namespace="http://www.facturae.es/Facturae/2007/v3.1/Facturae", IsNullable=true)]
    public partial class AmountsWithheldType
    {
        
        private string withholdingReasonField;
        
        private double withholdingRateField;
        
        private bool withholdingRateFieldSpecified;
        
        private double withholdingAmountField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string WithholdingReason
        {
            get
            {
                return this.withholdingReasonField;
            }
            set
            {
                this.withholdingReasonField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual double WithholdingRate
        {
            get
            {
                return this.withholdingRateField;
            }
            set
            {
                this.withholdingRateField = value;
                this.WithholdingRateSpecified = true;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public virtual bool WithholdingRateSpecified
        {
            get
            {
                return this.withholdingRateFieldSpecified;
            }
            set
            {
                this.withholdingRateFieldSpecified = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual double WithholdingAmount
        {
            get
            {
                return this.withholdingAmountField;
            }
            set
            {
                this.withholdingAmountField = value;
            }
        }
    }
}
