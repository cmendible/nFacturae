using System;
using java.security;
using java.io;
using java.util;
using java.security.cert;
using javax.xml.parsers;
using es.mityc.javasign.pkstore;
using es.mityc.javasign.pkstore.keystore;
using es.mityc.javasign.trust;
using es.mityc.javasign.xml.xades.policy;
using es.mityc.firmaJava.libreria.xades;
using es.mityc.javasign.xml.refs;
using es.mityc.firmaJava.libreria.utilidades;
using org.w3c.dom;

namespace nFacturae.Facturae31
{
    public class PassStoreKS : IPassStoreKS
    {
        private string _password;

        public PassStoreKS(string password)
        {
            _password = password;
        }

        public char[] getPassword(X509Certificate certificate, string alias)
        {
            return _password.ToCharArray();
        }
    }

    public class Signer
    {
        private X509Certificate _LoadCertificate(string path, string password, out PrivateKey privateKey, out Provider provider)
        {
            X509Certificate certificate = null;
            provider = null;
            privateKey = null;

            KeyStore ks = KeyStore.getInstance("PKCS12");
            ks.load(new BufferedInputStream(new FileInputStream(path)), password.ToCharArray());
            IPKStoreManager storeManager = new KSStore(ks, new PassStoreKS(password));
            List certificates = storeManager.getSignCertificates();

            if (certificates.size() == 1)
            {
                certificate = (X509Certificate)certificates.get(0);
                privateKey = storeManager.getPrivateKey(certificate);
                provider = storeManager.getProvider(certificate);
                return certificate;
            }

            return certificate;
        }

        public void Sign(string unsignedXmlPath, string signedXmlPath, string pfxPath, string pfxPassword)
        {
            PrivateKey privateKey;
            Provider provider;
            X509Certificate certificate = _LoadCertificate(pfxPath, pfxPassword, out privateKey, out provider);

            if (certificate != null)
            {
                TrustFactory.instance = es.mityc.javasign.trust.TrustExtendFactory.newInstance();
                TrustFactory.truster = es.mityc.javasign.trust.MyPropsTruster.getInstance();
                PoliciesManager.POLICY_SIGN = new es.mityc.javasign.xml.xades.policy.facturae.Facturae31Manager();
                PoliciesManager.POLICY_VALIDATION = new es.mityc.javasign.xml.xades.policy.facturae.Facturae31Manager();

				DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
				dbf.setNamespaceAware(true);
				Document unsignedDocument = dbf.newDocumentBuilder().parse(new BufferedInputStream(new FileInputStream(unsignedXmlPath)));
				
                DataToSign dataToSign = new DataToSign();
                dataToSign.setXadesFormat(EnumFormatoFirma.XAdES_BES);
                dataToSign.setEsquema(XAdESSchemas.XAdES_132);
                dataToSign.setPolicyKey("facturae31");
                dataToSign.setAddPolicy(true);
                dataToSign.setXMLEncoding("UTF-8");
                dataToSign.setEnveloped(true);
                dataToSign.addObject(new ObjectToSign(new AllXMLToSign(), "Description", null, "text/xml", null));
                dataToSign.setDocument(unsignedDocument);

                Object[] res = new FirmaXML().signFile(certificate, dataToSign, privateKey, provider);

                UtilidadTratarNodo.saveDocumentToOutputStream((Document)res[0], new FileOutputStream(signedXmlPath), true);
            }
        }
    }
}
