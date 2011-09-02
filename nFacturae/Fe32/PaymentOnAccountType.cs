namespace nFacturae.Facturae32
{
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.1")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://www.facturae.es/Facturae/2009/v3.2/Facturae")]
    [System.Xml.Serialization.XmlRootAttribute(Namespace="http://www.facturae.es/Facturae/2009/v3.2/Facturae", IsNullable=true)]
    public partial class PaymentOnAccountType
    {
        
        private System.DateTime paymentOnAccountDateField;
        
        private double paymentOnAccountAmountField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified, DataType="date")]
        public virtual System.DateTime PaymentOnAccountDate
        {
            get
            {
                return this.paymentOnAccountDateField;
            }
            set
            {
                this.paymentOnAccountDateField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual double PaymentOnAccountAmount
        {
            get
            {
                return this.paymentOnAccountAmountField;
            }
            set
            {
                this.paymentOnAccountAmountField = value;
            }
        }
    }
}
