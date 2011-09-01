namespace nFacturae.Facturae31
{
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.1")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://www.facturae.es/Facturae/2007/v3.1/Facturae")]
    [System.Xml.Serialization.XmlRootAttribute(Namespace="http://www.facturae.es/Facturae/2007/v3.1/Facturae", IsNullable=true)]
    public partial class PaymentDetailsType
    {
        
        private System.DateTime assignmentDuePaymentDateField;
        
        private string assignmentPaymentMeansField;
        
        private string iBANField;
        
        private string paymentReferenceField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified, DataType="date")]
        public virtual System.DateTime AssignmentDuePaymentDate
        {
            get
            {
                return this.assignmentDuePaymentDateField;
            }
            set
            {
                this.assignmentDuePaymentDateField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string AssignmentPaymentMeans
        {
            get
            {
                return this.assignmentPaymentMeansField;
            }
            set
            {
                this.assignmentPaymentMeansField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string IBAN
        {
            get
            {
                return this.iBANField;
            }
            set
            {
                this.iBANField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string PaymentReference
        {
            get
            {
                return this.paymentReferenceField;
            }
            set
            {
                this.paymentReferenceField = value;
            }
        }
    }
}
