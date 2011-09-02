namespace nFacturae.Facturae32
{
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.1")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://www.facturae.es/Facturae/2009/v3.2/Facturae")]
    [System.Xml.Serialization.XmlRootAttribute(Namespace="http://www.facturae.es/Facturae/2009/v3.2/Facturae", IsNullable=true)]
    public partial class BusinessType
    {
        
        private TaxIdentificationType taxIdentificationField;
        
        private string partyIdentificationField;
        
        private System.Collections.Generic.List<AdministrativeCentreType> administrativeCentresField;
        
        private object itemField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual TaxIdentificationType TaxIdentification
        {
            get
            {
                return this.taxIdentificationField;
            }
            set
            {
                this.taxIdentificationField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string PartyIdentification
        {
            get
            {
                return this.partyIdentificationField;
            }
            set
            {
                this.partyIdentificationField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlArrayAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        [System.Xml.Serialization.XmlArrayItemAttribute("AdministrativeCentre", Form=System.Xml.Schema.XmlSchemaForm.Unqualified, IsNullable=false)]
        public virtual System.Collections.Generic.List<AdministrativeCentreType> AdministrativeCentres
        {
            get
            {
                return this.administrativeCentresField;
            }
            set
            {
                this.administrativeCentresField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("Individual", typeof(IndividualType), Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        [System.Xml.Serialization.XmlElementAttribute("LegalEntity", typeof(LegalEntityType), Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
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
        
        public virtual bool ShouldSerializeAdministrativeCentres()
        {
            return ((this.AdministrativeCentres != null) 
                        && (this.AdministrativeCentres.Count > 0));
        }
    }
}
