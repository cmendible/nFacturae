namespace nFacturae.Facturae31
{
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.1")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://www.facturae.es/Facturae/2007/v3.1/Facturae")]
    [System.Xml.Serialization.XmlRootAttribute(Namespace="http://www.facturae.es/Facturae/2007/v3.1/Facturae", IsNullable=true)]
    public partial class CorrectiveType
    {
        
        private string invoiceNumberField;
        
        private string invoiceSeriesCodeField;
        
        private ReasonCodeType reasonCodeField;
        
        private ReasonDescriptionType reasonDescriptionField;
        
        private PeriodDates taxPeriodField;
        
        private CorrectionMethodType correctionMethodField;
        
        private CorrectionMethodDescriptionType correctionMethodDescriptionField;
        
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
        public virtual ReasonCodeType ReasonCode
        {
            get
            {
                return this.reasonCodeField;
            }
            set
            {
                this.reasonCodeField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual ReasonDescriptionType ReasonDescription
        {
            get
            {
                return this.reasonDescriptionField;
            }
            set
            {
                this.reasonDescriptionField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual PeriodDates TaxPeriod
        {
            get
            {
                return this.taxPeriodField;
            }
            set
            {
                this.taxPeriodField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual CorrectionMethodType CorrectionMethod
        {
            get
            {
                return this.correctionMethodField;
            }
            set
            {
                this.correctionMethodField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual CorrectionMethodDescriptionType CorrectionMethodDescription
        {
            get
            {
                return this.correctionMethodDescriptionField;
            }
            set
            {
                this.correctionMethodDescriptionField = value;
            }
        }
    }
}
