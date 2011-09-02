﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;
using System.Threading;

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

            var inv = nFacturae.Facturae31.Facturae.FromFile(@"..\..\Samples\sample_31.xml");

            var inv2 = nFacturae.Facturae32.Facturae.FromFile(@"..\..\Samples\sample_32.xml");
        }
    }
}
