namespace nFacturae.Facturae32
{
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.1")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://www.facturae.es/Facturae/2009/v3.2/Facturae")]
    [System.Xml.Serialization.XmlRootAttribute(Namespace="http://www.facturae.es/Facturae/2009/v3.2/Facturae", IsNullable=true)]
    public partial class IndividualType
    {
        
        private string nameField;
        
        private string firstSurnameField;
        
        private string secondSurnameField;
        
        private object itemField;
        
        private ContactDetailsType contactDetailsField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string Name
        {
            get
            {
                return this.nameField;
            }
            set
            {
                this.nameField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string FirstSurname
        {
            get
            {
                return this.firstSurnameField;
            }
            set
            {
                this.firstSurnameField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string SecondSurname
        {
            get
            {
                return this.secondSurnameField;
            }
            set
            {
                this.secondSurnameField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("AddressInSpain", typeof(AddressType), Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        [System.Xml.Serialization.XmlElementAttribute("OverseasAddress", typeof(OverseasAddressType), Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual object Item
        {
            get
            {
                return this.itemField;
            }
            set
            {
                this.itemField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual ContactDetailsType ContactDetails
        {
            get
            {
                return this.contactDetailsField;
            }
            set
            {
                this.contactDetailsField = value;
            }
        }
    }
}
