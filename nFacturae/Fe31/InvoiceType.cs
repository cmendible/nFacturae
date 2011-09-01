namespace nFacturae.Facturae31
{
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.1")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://www.facturae.es/Facturae/2007/v3.1/Facturae")]
    [System.Xml.Serialization.XmlRootAttribute(Namespace="http://www.facturae.es/Facturae/2007/v3.1/Facturae", IsNullable=true)]
    public partial class InvoiceType
    {
        
        private InvoiceHeaderType invoiceHeaderField;
        
        private InvoiceIssueDataType invoiceIssueDataField;
        
        private System.Collections.Generic.List<TaxOutputType> taxesOutputsField;
        
        private System.Collections.Generic.List<TaxType> taxesWithheldField;
        
        private InvoiceTotalsType invoiceTotalsField;
        
        private System.Collections.Generic.List<InvoiceLineType> itemsField;
        
        private System.Collections.Generic.List<InstallmentType> paymentDetailsField;
        
        private System.Collections.Generic.List<string> legalLiteralsField;
        
        private AdditionalDataType additionalDataField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual InvoiceHeaderType InvoiceHeader
        {
            get
            {
                return this.invoiceHeaderField;
            }
            set
            {
                this.invoiceHeaderField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual InvoiceIssueDataType InvoiceIssueData
        {
            get
            {
                return this.invoiceIssueDataField;
            }
            set
            {
                this.invoiceIssueDataField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlArrayAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        [System.Xml.Serialization.XmlArrayItemAttribute("Tax", Form=System.Xml.Schema.XmlSchemaForm.Unqualified, IsNullable=false)]
        public virtual System.Collections.Generic.List<TaxOutputType> TaxesOutputs
        {
            get
            {
                return this.taxesOutputsField;
            }
            set
            {
                this.taxesOutputsField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlArrayAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        [System.Xml.Serialization.XmlArrayItemAttribute("Tax", Form=System.Xml.Schema.XmlSchemaForm.Unqualified, IsNullable=false)]
        public virtual System.Collections.Generic.List<TaxType> TaxesWithheld
        {
            get
            {
                return this.taxesWithheldField;
            }
            set
            {
                this.taxesWithheldField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual InvoiceTotalsType InvoiceTotals
        {
            get
            {
                return this.invoiceTotalsField;
            }
            set
            {
                this.invoiceTotalsField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlArrayAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        [System.Xml.Serialization.XmlArrayItemAttribute("InvoiceLine", Form=System.Xml.Schema.XmlSchemaForm.Unqualified, IsNullable=false)]
        public virtual System.Collections.Generic.List<InvoiceLineType> Items
        {
            get
            {
                return this.itemsField;
            }
            set
            {
                this.itemsField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlArrayAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        [System.Xml.Serialization.XmlArrayItemAttribute("Installment", Form=System.Xml.Schema.XmlSchemaForm.Unqualified, IsNullable=false)]
        public virtual System.Collections.Generic.List<InstallmentType> PaymentDetails
        {
            get
            {
                return this.paymentDetailsField;
            }
            set
            {
                this.paymentDetailsField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlArrayAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        [System.Xml.Serialization.XmlArrayItemAttribute("LegalReference", Form=System.Xml.Schema.XmlSchemaForm.Unqualified, IsNullable=false)]
        public virtual System.Collections.Generic.List<string> LegalLiterals
        {
            get
            {
                return this.legalLiteralsField;
            }
            set
            {
                this.legalLiteralsField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual AdditionalDataType AdditionalData
        {
            get
            {
                return this.additionalDataField;
            }
            set
            {
                this.additionalDataField = value;
            }
        }
        
        public virtual bool ShouldSerializeTaxesOutputs()
        {
            return ((this.TaxesOutputs != null) 
                        && (this.TaxesOutputs.Count > 0));
        }
        
        public virtual bool ShouldSerializeTaxesWithheld()
        {
            return ((this.TaxesWithheld != null) 
                        && (this.TaxesWithheld.Count > 0));
        }
        
        public virtual bool ShouldSerializeItems()
        {
            return ((this.Items != null) 
                        && (this.Items.Count > 0));
        }
        
        public virtual bool ShouldSerializePaymentDetails()
        {
            return ((this.PaymentDetails != null) 
                        && (this.PaymentDetails.Count > 0));
        }
        
        public virtual bool ShouldSerializeLegalLiterals()
        {
            return ((this.LegalLiterals != null) 
                        && (this.LegalLiterals.Count > 0));
        }
    }
}
