namespace nFacturae.Facturae32
{
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.1")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://www.facturae.es/Facturae/2009/v3.2/Facturae")]
    [System.Xml.Serialization.XmlRootAttribute(Namespace="http://www.facturae.es/Facturae/2009/v3.2/Facturae", IsNullable=true)]
    public partial class DeliveryNoteType
    {
        
        private string deliveryNoteNumberField;
        
        private System.DateTime deliveryNoteDateField;
        
        private bool deliveryNoteDateFieldSpecified;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string DeliveryNoteNumber
        {
            get
            {
                return this.deliveryNoteNumberField;
            }
            set
            {
                this.deliveryNoteNumberField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified, DataType="date")]
        public virtual System.DateTime DeliveryNoteDate
        {
            get
            {
                return this.deliveryNoteDateField;
            }
            set
            {
                this.deliveryNoteDateField = value;
                this.DeliveryNoteDateSpecified = true;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public virtual bool DeliveryNoteDateSpecified
        {
            get
            {
                return this.deliveryNoteDateFieldSpecified;
            }
            set
            {
                this.deliveryNoteDateFieldSpecified = value;
            }
        }
    }
}
