using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace nFacturae
{
    [Serializable]
    public abstract class BaseDoubleType : System.Xml.Serialization.IXmlSerializable
    {
        public double Value { get; set; }

        public BaseDoubleType()
        {
            Value = 0;
        }

        public BaseDoubleType(double value)
        {
            this.Value = value;
        }

        public abstract int DecimalPlaces { get; }

        public override string ToString()
        {
            return Value.ToString("F" + DecimalPlaces.ToString(System.Globalization.CultureInfo.InvariantCulture), System.Globalization.CultureInfo.InvariantCulture);
        }

        #region IXmlSerializable Members

        public System.Xml.Schema.XmlSchema GetSchema()
        {
            return null;
        }

        public void ReadXml(System.Xml.XmlReader reader)
        {
            string s = reader.ReadElementString();
            double d;
            if (double.TryParse(s, out d))
            {
                Value = d;
            }
        }

        public void WriteXml(System.Xml.XmlWriter writer)
        {
            writer.WriteString(this.ToString());
        }

        #endregion
    }

    [Serializable]
    public class DoubleTwoDecimalType : BaseDoubleType
    {
        public DoubleTwoDecimalType()
            : base()
        { 
        }

        public DoubleTwoDecimalType(double value)
            : base(value)
        {
        }

        public override int DecimalPlaces
        {
            get { return 2; }
        }
    }

    [Serializable]
    public class DoubleFourDecimalType : BaseDoubleType
    {
        public DoubleFourDecimalType()
            : base()
        { 
        }

        public DoubleFourDecimalType(double value)
            : base(value)
        {
        }

        public override int DecimalPlaces
        {
            get { return 4; }
        }
    }

    [Serializable]
    public class DoubleSixDecimalType : BaseDoubleType
    {
        public DoubleSixDecimalType()
            : base()
        { 
        }

        public DoubleSixDecimalType(double value)
            : base(value)
        {
        }

        public override int DecimalPlaces
        {
            get { return 6; }
        }
    }
}
