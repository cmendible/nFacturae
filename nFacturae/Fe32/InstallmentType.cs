namespace nFacturae.Facturae32
{
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.1")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://www.facturae.es/Facturae/2009/v3.2/Facturae")]
    [System.Xml.Serialization.XmlRootAttribute(Namespace="http://www.facturae.es/Facturae/2009/v3.2/Facturae", IsNullable=true)]
    public partial class InstallmentType
    {
        
        private System.DateTime installmentDueDateField;
        
        private double installmentAmountField;
        
        private PaymentMeansType paymentMeansField;
        
        private AccountType accountToBeCreditedField;
        
        private string paymentReconciliationReferenceField;
        
        private AccountType accountToBeDebitedField;
        
        private string collectionAdditionalInformationField;
        
        private string regulatoryReportingDataField;
        
        private string debitReconciliationReferenceField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified, DataType="date")]
        public virtual System.DateTime InstallmentDueDate
        {
            get
            {
                return this.installmentDueDateField;
            }
            set
            {
                this.installmentDueDateField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual double InstallmentAmount
        {
            get
            {
                return this.installmentAmountField;
            }
            set
            {
                this.installmentAmountField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual PaymentMeansType PaymentMeans
        {
            get
            {
                return this.paymentMeansField;
            }
            set
            {
                this.paymentMeansField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual AccountType AccountToBeCredited
        {
            get
            {
                return this.accountToBeCreditedField;
            }
            set
            {
                this.accountToBeCreditedField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string PaymentReconciliationReference
        {
            get
            {
                return this.paymentReconciliationReferenceField;
            }
            set
            {
                this.paymentReconciliationReferenceField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual AccountType AccountToBeDebited
        {
            get
            {
                return this.accountToBeDebitedField;
            }
            set
            {
                this.accountToBeDebitedField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string CollectionAdditionalInformation
        {
            get
            {
                return this.collectionAdditionalInformationField;
            }
            set
            {
                this.collectionAdditionalInformationField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string RegulatoryReportingData
        {
            get
            {
                return this.regulatoryReportingDataField;
            }
            set
            {
                this.regulatoryReportingDataField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string DebitReconciliationReference
        {
            get
            {
                return this.debitReconciliationReferenceField;
            }
            set
            {
                this.debitReconciliationReferenceField = value;
            }
        }
    }
}
