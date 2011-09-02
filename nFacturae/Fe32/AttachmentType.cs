namespace nFacturae.Facturae32
{
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.1")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://www.facturae.es/Facturae/2009/v3.2/Facturae")]
    [System.Xml.Serialization.XmlRootAttribute(Namespace="http://www.facturae.es/Facturae/2009/v3.2/Facturae", IsNullable=true)]
    public partial class AttachmentType
    {
        
        private AttachmentCompressionAlgorithmType attachmentCompressionAlgorithmField;
        
        private bool attachmentCompressionAlgorithmFieldSpecified;
        
        private AttachmentFormatType attachmentFormatField;
        
        private AttachmentEncodingType attachmentEncodingField;
        
        private bool attachmentEncodingFieldSpecified;
        
        private string attachmentDescriptionField;
        
        private string attachmentDataField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual AttachmentCompressionAlgorithmType AttachmentCompressionAlgorithm
        {
            get
            {
                return this.attachmentCompressionAlgorithmField;
            }
            set
            {
                this.attachmentCompressionAlgorithmField = value;
                this.AttachmentCompressionAlgorithmSpecified = true;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public virtual bool AttachmentCompressionAlgorithmSpecified
        {
            get
            {
                return this.attachmentCompressionAlgorithmFieldSpecified;
            }
            set
            {
                this.attachmentCompressionAlgorithmFieldSpecified = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual AttachmentFormatType AttachmentFormat
        {
            get
            {
                return this.attachmentFormatField;
            }
            set
            {
                this.attachmentFormatField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual AttachmentEncodingType AttachmentEncoding
        {
            get
            {
                return this.attachmentEncodingField;
            }
            set
            {
                this.attachmentEncodingField = value;
                this.AttachmentEncodingSpecified = true;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public virtual bool AttachmentEncodingSpecified
        {
            get
            {
                return this.attachmentEncodingFieldSpecified;
            }
            set
            {
                this.attachmentEncodingFieldSpecified = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string AttachmentDescription
        {
            get
            {
                return this.attachmentDescriptionField;
            }
            set
            {
                this.attachmentDescriptionField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string AttachmentData
        {
            get
            {
                return this.attachmentDataField;
            }
            set
            {
                this.attachmentDataField = value;
            }
        }
    }
}
