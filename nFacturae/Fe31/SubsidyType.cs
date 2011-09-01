namespace nFacturae.Facturae31
{
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.1")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://www.facturae.es/Facturae/2007/v3.1/Facturae")]
    [System.Xml.Serialization.XmlRootAttribute(Namespace="http://www.facturae.es/Facturae/2007/v3.1/Facturae", IsNullable=true)]
    public partial class SubsidyType
    {
        
        private string subsidyDescriptionField;
        
        private double subsidyRateField;
        
        private bool subsidyRateFieldSpecified;
        
        private double subsidyAmountField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string SubsidyDescription
        {
            get
            {
                return this.subsidyDescriptionField;
            }
            set
            {
                this.subsidyDescriptionField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual double SubsidyRate
        {
            get
            {
                return this.subsidyRateField;
            }
            set
            {
                this.subsidyRateField = value;
                this.SubsidyRateSpecified = true;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public virtual bool SubsidyRateSpecified
        {
            get
            {
                return this.subsidyRateFieldSpecified;
            }
            set
            {
                this.subsidyRateFieldSpecified = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual double SubsidyAmount
        {
            get
            {
                return this.subsidyAmountField;
            }
            set
            {
                this.subsidyAmountField = value;
            }
        }
    }
}
