namespace nFacturae.Facturae32
{
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.1")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://www.facturae.es/Facturae/2009/v3.2/Facturae")]
    [System.Xml.Serialization.XmlRootAttribute(Namespace="http://www.facturae.es/Facturae/2009/v3.2/Facturae", IsNullable=true)]
    public partial class InvoiceLineType
    {
        
        private string issuerContractReferenceField;
        
        private System.DateTime issuerContractDateField;
        
        private bool issuerContractDateFieldSpecified;
        
        private string issuerTransactionReferenceField;
        
        private System.DateTime issuerTransactionDateField;
        
        private bool issuerTransactionDateFieldSpecified;
        
        private string receiverContractReferenceField;
        
        private System.DateTime receiverContractDateField;
        
        private bool receiverContractDateFieldSpecified;
        
        private string receiverTransactionReferenceField;
        
        private System.DateTime receiverTransactionDateField;
        
        private bool receiverTransactionDateFieldSpecified;
        
        private string fileReferenceField;
        
        private System.DateTime fileDateField;
        
        private bool fileDateFieldSpecified;
        
        private double sequenceNumberField;
        
        private bool sequenceNumberFieldSpecified;
        
        private System.Collections.Generic.List<DeliveryNoteType> deliveryNotesReferencesField;
        
        private string itemDescriptionField;
        
        private double quantityField;
        
        private UnitOfMeasureType unitOfMeasureField;
        
        private bool unitOfMeasureFieldSpecified;
        
        private double unitPriceWithoutTaxField;
        
        private double totalCostField;
        
        private System.Collections.Generic.List<DiscountType> discountsAndRebatesField;
        
        private System.Collections.Generic.List<ChargeType> chargesField;
        
        private double grossAmountField;
        
        private System.Collections.Generic.List<TaxType> taxesWithheldField;
        
        private System.Collections.Generic.List<InvoiceLineTypeTax> taxesOutputsField;
        
        private PeriodDates lineItemPeriodField;
        
        private System.DateTime transactionDateField;
        
        private bool transactionDateFieldSpecified;
        
        private string additionalLineItemInformationField;
        
        private SpecialTaxableEventType specialTaxableEventField;
        
        private string articleCodeField;
        
        private ExtensionsType extensionsField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string IssuerContractReference
        {
            get
            {
                return this.issuerContractReferenceField;
            }
            set
            {
                this.issuerContractReferenceField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified, DataType="date")]
        public virtual System.DateTime IssuerContractDate
        {
            get
            {
                return this.issuerContractDateField;
            }
            set
            {
                this.issuerContractDateField = value;
                this.IssuerContractDateSpecified = true;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public virtual bool IssuerContractDateSpecified
        {
            get
            {
                return this.issuerContractDateFieldSpecified;
            }
            set
            {
                this.issuerContractDateFieldSpecified = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string IssuerTransactionReference
        {
            get
            {
                return this.issuerTransactionReferenceField;
            }
            set
            {
                this.issuerTransactionReferenceField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified, DataType="date")]
        public virtual System.DateTime IssuerTransactionDate
        {
            get
            {
                return this.issuerTransactionDateField;
            }
            set
            {
                this.issuerTransactionDateField = value;
                this.IssuerTransactionDateSpecified = true;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public virtual bool IssuerTransactionDateSpecified
        {
            get
            {
                return this.issuerTransactionDateFieldSpecified;
            }
            set
            {
                this.issuerTransactionDateFieldSpecified = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string ReceiverContractReference
        {
            get
            {
                return this.receiverContractReferenceField;
            }
            set
            {
                this.receiverContractReferenceField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified, DataType="date")]
        public virtual System.DateTime ReceiverContractDate
        {
            get
            {
                return this.receiverContractDateField;
            }
            set
            {
                this.receiverContractDateField = value;
                this.ReceiverContractDateSpecified = true;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public virtual bool ReceiverContractDateSpecified
        {
            get
            {
                return this.receiverContractDateFieldSpecified;
            }
            set
            {
                this.receiverContractDateFieldSpecified = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string ReceiverTransactionReference
        {
            get
            {
                return this.receiverTransactionReferenceField;
            }
            set
            {
                this.receiverTransactionReferenceField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified, DataType="date")]
        public virtual System.DateTime ReceiverTransactionDate
        {
            get
            {
                return this.receiverTransactionDateField;
            }
            set
            {
                this.receiverTransactionDateField = value;
                this.ReceiverTransactionDateSpecified = true;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public virtual bool ReceiverTransactionDateSpecified
        {
            get
            {
                return this.receiverTransactionDateFieldSpecified;
            }
            set
            {
                this.receiverTransactionDateFieldSpecified = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string FileReference
        {
            get
            {
                return this.fileReferenceField;
            }
            set
            {
                this.fileReferenceField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified, DataType="date")]
        public virtual System.DateTime FileDate
        {
            get
            {
                return this.fileDateField;
            }
            set
            {
                this.fileDateField = value;
                this.FileDateSpecified = true;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public virtual bool FileDateSpecified
        {
            get
            {
                return this.fileDateFieldSpecified;
            }
            set
            {
                this.fileDateFieldSpecified = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual double SequenceNumber
        {
            get
            {
                return this.sequenceNumberField;
            }
            set
            {
                this.sequenceNumberField = value;
                this.SequenceNumberSpecified = true;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public virtual bool SequenceNumberSpecified
        {
            get
            {
                return this.sequenceNumberFieldSpecified;
            }
            set
            {
                this.sequenceNumberFieldSpecified = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlArrayAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        [System.Xml.Serialization.XmlArrayItemAttribute("DeliveryNote", Form=System.Xml.Schema.XmlSchemaForm.Unqualified, IsNullable=false)]
        public virtual System.Collections.Generic.List<DeliveryNoteType> DeliveryNotesReferences
        {
            get
            {
                return this.deliveryNotesReferencesField;
            }
            set
            {
                this.deliveryNotesReferencesField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string ItemDescription
        {
            get
            {
                return this.itemDescriptionField;
            }
            set
            {
                this.itemDescriptionField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual double Quantity
        {
            get
            {
                return this.quantityField;
            }
            set
            {
                this.quantityField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual UnitOfMeasureType UnitOfMeasure
        {
            get
            {
                return this.unitOfMeasureField;
            }
            set
            {
                this.unitOfMeasureField = value;
                this.UnitOfMeasureSpecified = true;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public virtual bool UnitOfMeasureSpecified
        {
            get
            {
                return this.unitOfMeasureFieldSpecified;
            }
            set
            {
                this.unitOfMeasureFieldSpecified = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual double UnitPriceWithoutTax
        {
            get
            {
                return this.unitPriceWithoutTaxField;
            }
            set
            {
                this.unitPriceWithoutTaxField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual double TotalCost
        {
            get
            {
                return this.totalCostField;
            }
            set
            {
                this.totalCostField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlArrayAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        [System.Xml.Serialization.XmlArrayItemAttribute("Discount", Form=System.Xml.Schema.XmlSchemaForm.Unqualified, IsNullable=false)]
        public virtual System.Collections.Generic.List<DiscountType> DiscountsAndRebates
        {
            get
            {
                return this.discountsAndRebatesField;
            }
            set
            {
                this.discountsAndRebatesField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlArrayAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        [System.Xml.Serialization.XmlArrayItemAttribute("Charge", Form=System.Xml.Schema.XmlSchemaForm.Unqualified, IsNullable=false)]
        public virtual System.Collections.Generic.List<ChargeType> Charges
        {
            get
            {
                return this.chargesField;
            }
            set
            {
                this.chargesField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual double GrossAmount
        {
            get
            {
                return this.grossAmountField;
            }
            set
            {
                this.grossAmountField = value;
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
        [System.Xml.Serialization.XmlArrayAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        [System.Xml.Serialization.XmlArrayItemAttribute("Tax", Form=System.Xml.Schema.XmlSchemaForm.Unqualified, IsNullable=false)]
        public virtual System.Collections.Generic.List<InvoiceLineTypeTax> TaxesOutputs
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
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual PeriodDates LineItemPeriod
        {
            get
            {
                return this.lineItemPeriodField;
            }
            set
            {
                this.lineItemPeriodField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified, DataType="date")]
        public virtual System.DateTime TransactionDate
        {
            get
            {
                return this.transactionDateField;
            }
            set
            {
                this.transactionDateField = value;
                this.TransactionDateSpecified = true;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public virtual bool TransactionDateSpecified
        {
            get
            {
                return this.transactionDateFieldSpecified;
            }
            set
            {
                this.transactionDateFieldSpecified = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string AdditionalLineItemInformation
        {
            get
            {
                return this.additionalLineItemInformationField;
            }
            set
            {
                this.additionalLineItemInformationField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual SpecialTaxableEventType SpecialTaxableEvent
        {
            get
            {
                return this.specialTaxableEventField;
            }
            set
            {
                this.specialTaxableEventField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual string ArticleCode
        {
            get
            {
                return this.articleCodeField;
            }
            set
            {
                this.articleCodeField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form=System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public virtual ExtensionsType Extensions
        {
            get
            {
                return this.extensionsField;
            }
            set
            {
                this.extensionsField = value;
            }
        }
        
        public virtual bool ShouldSerializeDeliveryNotesReferences()
        {
            return ((this.DeliveryNotesReferences != null) 
                        && (this.DeliveryNotesReferences.Count > 0));
        }
        
        public virtual bool ShouldSerializeDiscountsAndRebates()
        {
            return ((this.DiscountsAndRebates != null) 
                        && (this.DiscountsAndRebates.Count > 0));
        }
        
        public virtual bool ShouldSerializeCharges()
        {
            return ((this.Charges != null) 
                        && (this.Charges.Count > 0));
        }
        
        public virtual bool ShouldSerializeTaxesWithheld()
        {
            return ((this.TaxesWithheld != null) 
                        && (this.TaxesWithheld.Count > 0));
        }
        
        public virtual bool ShouldSerializeTaxesOutputs()
        {
            return ((this.TaxesOutputs != null) 
                        && (this.TaxesOutputs.Count > 0));
        }
    }
}
