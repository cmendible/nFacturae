#region License

//===================================================================================
//Copyright 2011 HexaSystems Corporation
//===================================================================================
//Licensed under the Apache License, Version 2.0 (the "License");
//you may not use this file except in compliance with the License.
//You may obtain a copy of the License at
//http://www.apache.org/licenses/LICENSE-2.0
//===================================================================================
//Unless required by applicable law or agreed to in writing, software
//distributed under the License is distributed on an "AS IS" BASIS,
//WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//See the License for the specific language governing permissions and
//limitations under the License.
//===================================================================================

#endregion

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

        protected abstract int DecimalPlaces { get; }

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

        protected override int DecimalPlaces
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

        protected override int DecimalPlaces
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

        protected override int DecimalPlaces
        {
            get { return 6; }
        }
    }
}
