using System.IO;
using System.Xml;
using System.Xml.Serialization;

namespace nFacturae
{
    public abstract class BaseFacturae<T> where T : class
    {
        public XmlReader ToXmlReader()
        {
            var ms = new MemoryStream();
            var xmlSerializer = new XmlSerializer(typeof(T), _Namespace());
            xmlSerializer.Serialize(ms, this);
            ms.Seek(0, 0);

            return XmlReader.Create(ms);
        }

        public XmlDocument ToXmlDocument()
        {
            var doc = new XmlDocument();
            doc.Load(ToXmlReader());
            return doc;
        }

        public override string ToString()
        {
            using (var reader = ToXmlReader())
            {
                reader.MoveToContent();
                return reader.ReadOuterXml();
            }
        }

        private static string _Namespace()
        {
            if (typeof(T).IsAssignableFrom(typeof(Facturae31.Facturae)))
                return "http://www.facturae.es/Facturae/2007/v3.1/Facturae";
            else if (typeof(T).IsAssignableFrom(typeof(Facturae32.Facturae)))
                return "http://www.facturae.es/Facturae/2009/v3.2/Facturae";
            else
                return null;
        }

        public static T FromFile(string xmlPath)
        {
            XmlRootAttribute xr = new XmlRootAttribute() { ElementName = "Facturae", Namespace = _Namespace() };
            var serializer = new XmlSerializer(typeof(T), xr);

            var fs = new StreamReader(xmlPath);
            var xmlReader = XmlReader.Create(fs);
            return serializer.Deserialize(xmlReader) as T;
        }
    }
}
