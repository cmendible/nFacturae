namespace nFacturae.Facturae32
{
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.1")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://www.facturae.es/Facturae/2009/v3.2/Facturae")]
    [System.Xml.Serialization.XmlRootAttribute(Namespace="http://www.facturae.es/Facturae/2009/v3.2/Facturae", IsNullable=true)]
    public partial class InvoiceTotalsType
    {
        
        private double totalGrossAmountField;
        
        private System.Collections.Generic.List<DiscountType> generalDiscountsField;
        
        private System.Collections.Generic.List<ChargeType> generalSurchargesField;
        
        private double totalGeneralDiscountsField;
        
        private bool totalGeneralDiscountsFieldSpecified;
        
        private double totalGeneralSurchargesField;
        
        private bool totalGeneralSurchargesFieldSpecified;
        
        private double totalGrossAmountBeforeTaxesField;
        
        private double totalTaxOutputsField;
        
        private double totalTaxesWithheldField;
        
        private double invoiceTotalField;
        
        private System.Collections.Generic.List<SubsidyType> subsidiesField;
        
        private System.Collections.Generic.List<PaymentOnAccountType> paymentsOnAccountField;
        
        private System.Collections.Generic.List<ReimbursableExpensesType> reimbursableExpensesField;
        
        private double totalFinancialExpensesField;
        
        private bool totalFinancialExpensesFieldSpecified;
        
        private double totalOutstandingAmountField;
        
        private double totalPaymentsOnAccountField;
        
        private bool totalPaymentsOnAccountFieldSpecified;
        
        private AmountsWithheldType amountsWithheldField;
        
        private double totalExecutableAmountField;
        
        private double totalReimbursableExpensesField;
        
        private bool totalReimbursableExpensesFieldSpecified;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual double TotalGrossAmount
        {
            get
            {
                return this.totalGrossAmountField;
            }
            set
            {
                this.totalGrossAmountField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlArrayAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        [System.Xml.Serialization.XmlArrayItemAttribute("Discount", Form=System.Xml.Schema.XmlSchemaForm.Unqualified, IsNullable=false)]
        public virtual System.Collections.Generic.List<DiscountType> GeneralDiscounts
        {
            get
            {
                return this.generalDiscountsField;
            }
            set
            {
                this.generalDiscountsField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlArrayAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        [System.Xml.Serialization.XmlArrayItemAttribute("Charge", Form=System.Xml.Schema.XmlSchemaForm.Unqualified, IsNullable=false)]
        public virtual System.Collections.Generic.List<ChargeType> GeneralSurcharges
        {
            get
            {
                return this.generalSurchargesField;
            }
            set
            {
                this.generalSurchargesField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual double TotalGeneralDiscounts
        {
            get
            {
                return this.totalGeneralDiscountsField;
            }
            set
            {
                this.totalGeneralDiscountsField = value;
                this.TotalGeneralDiscountsSpecified = true;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public virtual bool TotalGeneralDiscountsSpecified
        {
            get
            {
                return this.totalGeneralDiscountsFieldSpecified;
            }
            set
            {
                this.totalGeneralDiscountsFieldSpecified = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual double TotalGeneralSurcharges
        {
            get
            {
                return this.totalGeneralSurchargesField;
            }
            set
            {
                this.totalGeneralSurchargesField = value;
                this.TotalGeneralSurchargesSpecified = true;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public virtual bool TotalGeneralSurchargesSpecified
        {
            get
            {
                return this.totalGeneralSurchargesFieldSpecified;
            }
            set
            {
                this.totalGeneralSurchargesFieldSpecified = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual double TotalGrossAmountBeforeTaxes
        {
            get
            {
                return this.totalGrossAmountBeforeTaxesField;
            }
            set
            {
                this.totalGrossAmountBeforeTaxesField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual double TotalTaxOutputs
        {
            get
            {
                return this.totalTaxOutputsField;
            }
            set
            {
                this.totalTaxOutputsField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual double TotalTaxesWithheld
        {
            get
            {
                return this.totalTaxesWithheldField;
            }
            set
            {
                this.totalTaxesWithheldField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual double InvoiceTotal
        {
            get
            {
                return this.invoiceTotalField;
            }
            set
            {
                this.invoiceTotalField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlArrayAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        [System.Xml.Serialization.XmlArrayItemAttribute("Subsidy", Form=System.Xml.Schema.XmlSchemaForm.Unqualified, IsNullable=false)]
        public virtual System.Collections.Generic.List<SubsidyType> Subsidies
        {
            get
            {
                return this.subsidiesField;
            }
            set
            {
                this.subsidiesField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlArrayAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        [System.Xml.Serialization.XmlArrayItemAttribute("PaymentOnAccount", Form=System.Xml.Schema.XmlSchemaForm.Unqualified, IsNullable=false)]
        public virtual System.Collections.Generic.List<PaymentOnAccountType> PaymentsOnAccount
        {
            get
            {
                return this.paymentsOnAccountField;
            }
            set
            {
                this.paymentsOnAccountField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlArrayAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        [System.Xml.Serialization.XmlArrayItemAttribute("ReimbursableExpenses", Form=System.Xml.Schema.XmlSchemaForm.Unqualified, IsNullable=false)]
        public virtual System.Collections.Generic.List<ReimbursableExpensesType> ReimbursableExpenses
        {
            get
            {
                return this.reimbursableExpensesField;
            }
            set
            {
                this.reimbursableExpensesField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual double TotalFinancialExpenses
        {
            get
            {
                return this.totalFinancialExpensesField;
            }
            set
            {
                this.totalFinancialExpensesField = value;
                this.TotalFinancialExpensesSpecified = true;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public virtual bool TotalFinancialExpensesSpecified
        {
            get
            {
                return this.totalFinancialExpensesFieldSpecified;
            }
            set
            {
                this.totalFinancialExpensesFieldSpecified = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual double TotalOutstandingAmount
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
        public virtual double TotalPaymentsOnAccount
        {
            get
            {
                return this.totalPaymentsOnAccountField;
            }
            set
            {
                this.totalPaymentsOnAccountField = value;
                this.TotalPaymentsOnAccountSpecified = true;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public virtual bool TotalPaymentsOnAccountSpecified
        {
            get
            {
                return this.totalPaymentsOnAccountFieldSpecified;
            }
            set
            {
                this.totalPaymentsOnAccountFieldSpecified = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual AmountsWithheldType AmountsWithheld
        {
            get
            {
                return this.amountsWithheldField;
            }
            set
            {
                this.amountsWithheldField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual double TotalExecutableAmount
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
        public virtual double TotalReimbursableExpenses
        {
            get
            {
                return this.totalReimbursableExpensesField;
            }
            set
            {
                this.totalReimbursableExpensesField = value;
                this.TotalReimbursableExpensesSpecified = true;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public virtual bool TotalReimbursableExpensesSpecified
        {
            get
            {
                return this.totalReimbursableExpensesFieldSpecified;
            }
            set
            {
                this.totalReimbursableExpensesFieldSpecified = value;
            }
        }
        
        public virtual bool ShouldSerializeGeneralDiscounts()
        {
            return ((this.GeneralDiscounts != null) 
                        && (this.GeneralDiscounts.Count > 0));
        }
        
        public virtual bool ShouldSerializeGeneralSurcharges()
        {
            return ((this.GeneralSurcharges != null) 
                        && (this.GeneralSurcharges.Count > 0));
        }
        
        public virtual bool ShouldSerializeSubsidies()
        {
            return ((this.Subsidies != null) 
                        && (this.Subsidies.Count > 0));
        }
        
        public virtual bool ShouldSerializePaymentsOnAccount()
        {
            return ((this.PaymentsOnAccount != null) 
                        && (this.PaymentsOnAccount.Count > 0));
        }
        
        public virtual bool ShouldSerializeReimbursableExpenses()
        {
            return ((this.ReimbursableExpenses != null) 
                        && (this.ReimbursableExpenses.Count > 0));
        }
    }
}
