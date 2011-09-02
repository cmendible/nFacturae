namespace nFacturae.Facturae32
{
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.1")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://www.facturae.es/Facturae/2009/v3.2/Facturae")]
    [System.Xml.Serialization.XmlRootAttribute(Namespace="http://www.facturae.es/Facturae/2009/v3.2/Facturae", IsNullable=true)]
    public partial class AdditionalDataType
    {
        
        private string relatedInvoiceField;
        
        private System.Collections.Generic.List<AttachmentType> relatedDocumentsField;
        
        private string invoiceAdditionalInformationField;
        
        private ExtensionsType extensionsField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string RelatedInvoice
        {
            get
            {
                return this.relatedInvoiceField;
            }
            set
            {
                this.relatedInvoiceField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlArrayAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        [System.Xml.Serialization.XmlArrayItemAttribute("Attachment", Form=System.Xml.Schema.XmlSchemaForm.Unqualified, IsNullable=false)]
        public virtual System.Collections.Generic.List<AttachmentType> RelatedDocuments
        {
            get
            {
                return this.relatedDocumentsField;
            }
            set
            {
                this.relatedDocumentsField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string InvoiceAdditionalInformation
        {
            get
            {
                return this.invoiceAdditionalInformationField;
            }
            set
            {
                this.invoiceAdditionalInformationField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual ExtensionsType Extensions
        {
            get
            {
                return this.extensionsField;
            }
            set
            {
                this.extensionsField = value;
            }
        }
        
        public virtual bool ShouldSerializeRelatedDocuments()
        {
            return ((this.RelatedDocuments != null) 
                        && (this.RelatedDocuments.Count > 0));
        }
    }
}
