namespace nFacturae.Facturae32
{
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.1")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://www.facturae.es/Facturae/2009/v3.2/Facturae")]
    [System.Xml.Serialization.XmlRootAttribute(Namespace="http://www.facturae.es/Facturae/2009/v3.2/Facturae", IsNullable=true)]
    public partial class SpecialTaxableEventType
    {
        
        private SpecialTaxableEventCodeType specialTaxableEventCodeField;
        
        private string specialTaxableEventReasonField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual SpecialTaxableEventCodeType SpecialTaxableEventCode
        {
            get
            {
                return this.specialTaxableEventCodeField;
            }
            set
            {
                this.specialTaxableEventCodeField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string SpecialTaxableEventReason
        {
            get
            {
                return this.specialTaxableEventReasonField;
            }
            set
            {
                this.specialTaxableEventReasonField = value;
            }
        }
    }
}
