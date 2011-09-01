namespace nFacturae.Facturae31
{
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.1")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType=true, Namespace="http://www.facturae.es/Facturae/2007/v3.1/Facturae")]
    [System.Xml.Serialization.XmlRootAttribute(Namespace="http://www.facturae.es/Facturae/2007/v3.1/Facturae", IsNullable=false)]
    public partial class Facturae
    {
        
        private FileHeaderType fileHeaderField;
        
        private PartiesType partiesField;
        
        private System.Collections.Generic.List<InvoiceType> invoicesField;
        
        private ExtensionsType extensionsField;
        
        private SignatureType signatureField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual FileHeaderType FileHeader
        {
            get
            {
                return this.fileHeaderField;
            }
            set
            {
                this.fileHeaderField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual PartiesType Parties
        {
            get
            {
                return this.partiesField;
            }
            set
            {
                this.partiesField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlArrayAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        [System.Xml.Serialization.XmlArrayItemAttribute("Invoice", Form=System.Xml.Schema.XmlSchemaForm.Unqualified, IsNullable=false)]
        public virtual System.Collections.Generic.List<InvoiceType> Invoices
        {
            get
            {
                return this.invoicesField;
            }
            set
            {
                this.invoicesField = value;
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
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Namespace="http://www.w3.org/2000/09/xmldsig#")]
        public virtual SignatureType Signature
        {
            get
            {
                return this.signatureField;
            }
            set
            {
                this.signatureField = value;
            }
        }
        
        public virtual bool ShouldSerializeInvoices()
        {
            return ((this.Invoices != null) 
                        && (this.Invoices.Count > 0));
        }
    }
}
