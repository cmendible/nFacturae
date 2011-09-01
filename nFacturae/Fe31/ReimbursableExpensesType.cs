namespace nFacturae.Facturae31
{
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.1")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://www.facturae.es/Facturae/2007/v3.1/Facturae")]
    [System.Xml.Serialization.XmlRootAttribute(Namespace="http://www.facturae.es/Facturae/2007/v3.1/Facturae", IsNullable=true)]
    public partial class ReimbursableExpensesType
    {
        
        private TaxIdentificationType reimbursableExpensesSellerPartyField;
        
        private TaxIdentificationType reimbursableExpensesBuyerPartyField;
        
        private System.DateTime issueDateField;
        
        private bool issueDateFieldSpecified;
        
        private string invoiceNumberField;
        
        private string invoiceSeriesCodeField;
        
        private double reimbursableExpensesAmountField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual TaxIdentificationType ReimbursableExpensesSellerParty
        {
            get
            {
                return this.reimbursableExpensesSellerPartyField;
            }
            set
            {
                this.reimbursableExpensesSellerPartyField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual TaxIdentificationType ReimbursableExpensesBuyerParty
        {
            get
            {
                return this.reimbursableExpensesBuyerPartyField;
            }
            set
            {
                this.reimbursableExpensesBuyerPartyField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified, DataType="date")]
        public virtual System.DateTime IssueDate
        {
            get
            {
                return this.issueDateField;
            }
            set
            {
                this.issueDateField = value;
                this.IssueDateSpecified = true;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public virtual bool IssueDateSpecified
        {
            get
            {
                return this.issueDateFieldSpecified;
            }
            set
            {
                this.issueDateFieldSpecified = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string InvoiceNumber
        {
            get
            {
                return this.invoiceNumberField;
            }
            set
            {
                this.invoiceNumberField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string InvoiceSeriesCode
        {
            get
            {
                return this.invoiceSeriesCodeField;
            }
            set
            {
                this.invoiceSeriesCodeField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual double ReimbursableExpensesAmount
        {
            get
            {
                return this.reimbursableExpensesAmountField;
            }
            set
            {
                this.reimbursableExpensesAmountField = value;
            }
        }
    }
}
