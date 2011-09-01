namespace nFacturae.Facturae31
{
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.1")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://www.facturae.es/Facturae/2007/v3.1/Facturae")]
    [System.Xml.Serialization.XmlRootAttribute(Namespace="http://www.facturae.es/Facturae/2007/v3.1/Facturae", IsNullable=true)]
    public partial class ContactDetailsType
    {
        
        private string telephoneField;
        
        private string teleFaxField;
        
        private string webAddressField;
        
        private string electronicMailField;
        
        private string contactPersonsField;
        
        private string cnoCnaeField;
        
        private string iNETownCodeField;
        
        private string additionalContactDetailsField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string Telephone
        {
            get
            {
                return this.telephoneField;
            }
            set
            {
                this.telephoneField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string TeleFax
        {
            get
            {
                return this.teleFaxField;
            }
            set
            {
                this.teleFaxField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string WebAddress
        {
            get
            {
                return this.webAddressField;
            }
            set
            {
                this.webAddressField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string ElectronicMail
        {
            get
            {
                return this.electronicMailField;
            }
            set
            {
                this.electronicMailField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string ContactPersons
        {
            get
            {
                return this.contactPersonsField;
            }
            set
            {
                this.contactPersonsField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string CnoCnae
        {
            get
            {
                return this.cnoCnaeField;
            }
            set
            {
                this.cnoCnaeField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string INETownCode
        {
            get
            {
                return this.iNETownCodeField;
            }
            set
            {
                this.iNETownCodeField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string AdditionalContactDetails
        {
            get
            {
                return this.additionalContactDetailsField;
            }
            set
            {
                this.additionalContactDetailsField = value;
            }
        }
    }
}
