namespace nFacturae.Facturae32
{
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.1")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://www.facturae.es/Facturae/2009/v3.2/Facturae")]
    [System.Xml.Serialization.XmlRootAttribute(Namespace="http://www.facturae.es/Facturae/2009/v3.2/Facturae", IsNullable=true)]
    public partial class BatchType
    {
        
        private string batchIdentifierField;
        
        private long invoicesCountField;
        
        private AmountType totalInvoicesAmountField;
        
        private AmountType totalOutstandingAmountField;
        
        private AmountType totalExecutableAmountField;
        
        private CurrencyCodeType invoiceCurrencyCodeField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string BatchIdentifier
        {
            get
            {
                return this.batchIdentifierField;
            }
            set
            {
                this.batchIdentifierField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual long InvoicesCount
        {
            get
            {
                return this.invoicesCountField;
            }
            set
            {
                this.invoicesCountField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual AmountType TotalInvoicesAmount
        {
            get
            {
                return this.totalInvoicesAmountField;
            }
            set
            {
                this.totalInvoicesAmountField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual AmountType TotalOutstandingAmount
        {
            get
            {
                return this.totalOutstandingAmountField;
            }
            set
            {
                this.totalOutstandingAmountField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual AmountType TotalExecutableAmount
        {
            get
            {
                return this.totalExecutableAmountField;
            }
            set
            {
                this.totalExecutableAmountField = value;
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
    }
}
