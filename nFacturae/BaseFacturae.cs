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

using System.IO;
using System.Xml;
using System.Xml.Xsl;
using System.Xml.Serialization;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html;
using iTextSharp.text.html.simpleparser;

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

        private byte[] _Transform(string xsl, string logoPath)
        {
            XslCompiledTransform xslt = new XslCompiledTransform();
            XmlReaderSettings settings = new XmlReaderSettings();
            settings.DtdProcessing = DtdProcessing.Ignore;

            XsltArgumentList xslArgs = new XsltArgumentList();
            if (!string.IsNullOrEmpty(logoPath))
                xslArgs.AddParam("pathLogo", string.Empty, logoPath);

            var invoiceBytes = System.Text.UTF8Encoding.UTF8.GetBytes(this.ToString());
            var xslBytes = System.Text.UTF8Encoding.UTF8.GetBytes(xsl);

            using (MemoryStream memXsl = new MemoryStream(xslBytes))
            {
                xslt.Load(XmlReader.Create(memXsl, settings));
            }

            using (MemoryStream memOut = new MemoryStream())
            {
                using (MemoryStream memXml = new MemoryStream(invoiceBytes))
                {
                    xslt.Transform(XmlReader.Create(memXml, settings), xslArgs, XmlWriter.Create(memOut, xslt.OutputSettings));
                }
                return memOut.ToArray();
            }
        }

        public string ToUNEDOC(string logoPath)
        {
            return System.Text.UTF8Encoding.UTF8.GetString(_Transform(Properties.Resource.es_UNEDOCS, logoPath));
        }

        public string ToUNEDOC(string xsl, string logoPath)
        {
            var xslToUse = xsl;
            if (string.IsNullOrEmpty(xslToUse))
                xslToUse = Properties.Resource.es_UNEDOCS;

            return System.Text.UTF8Encoding.UTF8.GetString(_Transform(xsl, logoPath));
        }

        private MemoryStream _ToPdf(string xsl, string logoPath, string outputPath)
        {
            var html = ToUNEDOC(xsl, logoPath);

            var document = new Document(PageSize.A4, 80, 50, 30, 65);
            var stream = new MemoryStream();
            var PDFWriter = PdfWriter.GetInstance(document, stream);
            document.Open();

            var objects = HTMLWorker.ParseToList(new StreamReader(new MemoryStream(System.Text.UTF8Encoding.UTF8.GetBytes(html))), new StyleSheet());
			for (int k = 1; k < objects.Count; ++k)
				document.Add((IElement) objects[k]);

            document.Close();

            return stream;
        }

        public MemoryStream ToPdf(string logoPath)
        {
            return _ToPdf(Properties.Resource.es_UNEDOCS, logoPath, "");
        }
    }
}
