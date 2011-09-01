namespace nFacturae.Facturae31
{
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.1")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://www.facturae.es/Facturae/2007/v3.1/Facturae")]
    [System.Xml.Serialization.XmlRootAttribute(Namespace="http://www.facturae.es/Facturae/2007/v3.1/Facturae", IsNullable=true)]
    public partial class FileHeaderType
    {
        
        private SchemaVersionType schemaVersionField;
        
        private ModalityType modalityField;
        
        private InvoiceIssuerTypeType invoiceIssuerTypeField;
        
        private ThirdPartyType thirdPartyField;
        
        private BatchType batchField;
        
        private FactoringAssignmentDataType factoringAssignmentDataField;
        
        public FileHeaderType()
        {
            this.schemaVersionField = SchemaVersionType.Item31;
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual SchemaVersionType SchemaVersion
        {
            get
            {
                return this.schemaVersionField;
            }
            set
            {
                this.schemaVersionField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual ModalityType Modality
        {
            get
            {
                return this.modalityField;
            }
            set
            {
                this.modalityField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual InvoiceIssuerTypeType InvoiceIssuerType
        {
            get
            {
                return this.invoiceIssuerTypeField;
            }
            set
            {
                this.invoiceIssuerTypeField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual ThirdPartyType ThirdParty
        {
            get
            {
                return this.thirdPartyField;
            }
            set
            {
                this.thirdPartyField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual BatchType Batch
        {
            get
            {
                return this.batchField;
            }
            set
            {
                this.batchField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual FactoringAssignmentDataType FactoringAssignmentData
        {
            get
            {
                return this.factoringAssignmentDataField;
            }
            set
            {
                this.factoringAssignmentDataField = value;
            }
        }
    }
}
