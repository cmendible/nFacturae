namespace nFacturae.Facturae32
{
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.1")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://www.facturae.es/Facturae/2009/v3.2/Facturae")]
    [System.Xml.Serialization.XmlRootAttribute(Namespace="http://www.facturae.es/Facturae/2009/v3.2/Facturae", IsNullable=true)]
    public partial class AdministrativeCentreType
    {
        
        private string centreCodeField;
        
        private RoleTypeCodeType roleTypeCodeField;
        
        private bool roleTypeCodeFieldSpecified;
        
        private string nameField;
        
        private string firstSurnameField;
        
        private string secondSurnameField;
        
        private object itemField;
        
        private ContactDetailsType contactDetailsField;
        
        private string physicalGLNField;
        
        private string logicalOperationalPointField;
        
        private string centreDescriptionField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string CentreCode
        {
            get
            {
                return this.centreCodeField;
            }
            set
            {
                this.centreCodeField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual RoleTypeCodeType RoleTypeCode
        {
            get
            {
                return this.roleTypeCodeField;
            }
            set
            {
                this.roleTypeCodeField = value;
                this.RoleTypeCodeSpecified = true;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public virtual bool RoleTypeCodeSpecified
        {
            get
            {
                return this.roleTypeCodeFieldSpecified;
            }
            set
            {
                this.roleTypeCodeFieldSpecified = value;
            }
        }
        
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
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string PhysicalGLN
        {
            get
            {
                return this.physicalGLNField;
            }
            set
            {
                this.physicalGLNField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string LogicalOperationalPoint
        {
            get
            {
                return this.logicalOperationalPointField;
            }
            set
            {
                this.logicalOperationalPointField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string CentreDescription
        {
            get
            {
                return this.centreDescriptionField;
            }
            set
            {
                this.centreDescriptionField = value;
            }
        }
    }
}
