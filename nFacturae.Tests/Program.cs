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

namespace nFacturae
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        static void Main()
        {
            //var signer = new nFacturae.Signer();
            //signer.Sign(@"..\..\Samples\sample_31.xml", "signed31.xml", "certificate.pfx", "password");

            //signer.Sign(@"..\..\Samples\sample_32.xml", "signed32.xml", "certificate.pfx", "password");

            //var inv = nFacturae.Facturae31.Facturae.FromFile(@"..\..\Samples\sample_31.xml");
            //inv.Validate();

            var inv2 = nFacturae.Facturae32.Facturae.FromFile(@"..\..\Samples\sample_32.xml");
            inv2.Validate();

            var fe32 = new Facturae32.Facturae()
                .AddLegalParty(true, Facturae32.PersonTypeCodeType.J, Facturae32.ResidenceTypeCodeType.E, "79065414H",
                    "HexaSystems Corporation", "HexaSystems Address", "28019", "Madrid", "Madrid", Facturae32.CountryType.ESP)
                .AddIndividualParty(false, Facturae32.ResidenceTypeCodeType.E, "3422357Y", "Carlos",
                    "Mendible", "Carlos Address", "28019", "Madrid", "Madrid", Facturae32.CountryType.ESP)
                .AddInvoice((i) => 
                    {
                        i.HeatherAndIssueData("231418", Facturae32.InvoiceDocumentTypeType.FC,
                            Facturae32.InvoiceClassType.OO, DateTime.Now, Facturae32.CurrencyCodeType.EUR, Facturae32.LanguageCodeType.es)
                        .AddLine(l => l.Item("Item Description", 1, 2000).AddTax(Facturae32.TaxTypeCodeType.Item01, 16, 2000))  
                        .AddLine(l => l.Item("Item Description 2", 1, 100).AddTax(Facturae32.TaxTypeCodeType.Item01, 16, 100));  
                    });

            fe32.Validate();

            var fe32Text = fe32.ToString();

            var logoPath = "https://a248.e.akamai.net/assets.github.com/images/modules/header/logov6-hover.png";

            var unedoc = fe32.ToUNEDOC(logoPath);
            var ms =new System.IO.MemoryStream(System.Text.UTF8Encoding.UTF8.GetBytes(unedoc));
            var fs = System.IO.File.OpenWrite("invoice.html");
            var data = ms.ToArray();
            fs.Write(data, 0, data.Length);
            fs.Close();

            ms = fe32.ToPdf(logoPath);
            fs = System.IO.File.OpenWrite("invoice.pdf");
            data = ms.ToArray();
            fs.Write(data, 0, data.Length);
            fs.Close();
        }
    }
}
