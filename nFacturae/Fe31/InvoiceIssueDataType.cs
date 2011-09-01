namespace nFacturae.Facturae31
{
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.1")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://www.facturae.es/Facturae/2007/v3.1/Facturae")]
    [System.Xml.Serialization.XmlRootAttribute(Namespace="http://www.facturae.es/Facturae/2007/v3.1/Facturae", IsNullable=true)]
    public partial class InvoiceIssueDataType
    {
        
        private System.DateTime issueDateField;
        
        private System.DateTime operationDateField;
        
        private bool operationDateFieldSpecified;
        
        private PlaceOfIssueType placeOfIssueField;
        
        private PeriodDates invoicingPeriodField;
        
        private CurrencyCodeType invoiceCurrencyCodeField;
        
        private ExchangeRateDetailsType exchangeRateDetailsField;
        
        private CurrencyCodeType taxCurrencyCodeField;
        
        private LanguageCodeType languageNameField;
        
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
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified, DataType="date")]
        public virtual System.DateTime OperationDate
        {
            get
            {
                return this.operationDateField;
            }
            set
            {
                this.operationDateField = value;
                this.OperationDateSpecified = true;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public virtual bool OperationDateSpecified
        {
            get
            {
                return this.operationDateFieldSpecified;
            }
            set
            {
                this.operationDateFieldSpecified = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual PlaceOfIssueType PlaceOfIssue
        {
            get
            {
                return this.placeOfIssueField;
            }
            set
            {
                this.placeOfIssueField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual PeriodDates InvoicingPeriod
        {
            get
            {
                return this.invoicingPeriodField;
            }
            set
            {
                this.invoicingPeriodField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual CurrencyCodeType InvoiceCurrencyCode
        {
            get
            {
                return this.invoiceCurrencyCodeField;
            }
            set
            {
                this.invoiceCurrencyCodeField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual ExchangeRateDetailsType ExchangeRateDetails
        {
            get
            {
                return this.exchangeRateDetailsField;
            }
            set
            {
                this.exchangeRateDetailsField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual CurrencyCodeType TaxCurrencyCode
        {
            get
            {
                return this.taxCurrencyCodeField;
            }
            set
            {
                this.taxCurrencyCodeField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual LanguageCodeType LanguageName
        {
            get
            {
                return this.languageNameField;
            }
            set
            {
                this.languageNameField = value;
            }
        }
    }
}
