namespace nFacturae.Facturae32
{
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.1")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://www.w3.org/2000/09/xmldsig#")]
    public partial class DSAKeyValueType
    {
        
        private byte[][] pField;
        
        private byte[][] qField;
        
        private byte[][] gField;
        
        private byte[][] yField;
        
        private byte[][] jField;
        
        private byte[][] seedField;
        
        private byte[][] pgenCounterField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(DataType="base64Binary")]
        public virtual byte[][] P
        {
            get
            {
                return this.pField;
            }
            set
            {
                this.pField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(DataType="base64Binary")]
        public virtual byte[][] Q
        {
            get
            {
                return this.qField;
            }
            set
            {
                this.qField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(DataType="base64Binary")]
        public virtual byte[][] G
        {
            get
            {
                return this.gField;
            }
            set
            {
                this.gField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(DataType="base64Binary")]
        public virtual byte[][] Y
        {
            get
            {
                return this.yField;
            }
            set
            {
                this.yField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(DataType="base64Binary")]
        public virtual byte[][] J
        {
            get
            {
                return this.jField;
            }
            set
            {
                this.jField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(DataType="base64Binary")]
        public virtual byte[][] Seed
        {
            get
            {
                return this.seedField;
            }
            set
            {
                this.seedField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(DataType="base64Binary")]
        public virtual byte[][] PgenCounter
        {
            get
            {
                return this.pgenCounterField;
            }
            set
            {
                this.pgenCounterField = value;
            }
        }
    }
}
