<?xml version="1.0" encoding="UTF-8"?>

<!DOCTYPE xsl:stylesheet [
  <!ENTITY nbsp "&#160;">
]>

<xsl:stylesheet version="1.0" xmlns:java="http://xml.apache.org/xslt/java"
  extension-element-prefixes="java" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:decimal-format grouping-separator="." decimal-separator=","/>
  <!-- Importing resuable types file -->
  <!--<xsl:import href="UNeDocsRT_HTM.xsl"/>-->

  <!-- Importing the resouce file filelocation.xsl for a file locations -->
  <!--<xsl:import href="resourceloc.xsl"/>-->
  <xsl:output method="html" indent="yes"/>

  <!-- Declaración del atributo prn-attrs -->
  <xsl:attribute-set name="prn-attrs">
    <xsl:attribute name="style">font-family:Courier;font-size:12pt;</xsl:attribute>
  </xsl:attribute-set>

  <!-- Parametro necesario para la distincion de tipos de factura -->
  <xsl:param name="tipoFactura"/>
  <!-- Parametro para la inclusion de una imagen -->
  <xsl:param name="pathLogo"/>



  <xsl:template match="/">
    <xsl:variable name="divisaFacturacion" select="FileHeader/Batch/InvoiceCurrencyCode"/>
    <html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office"
      xmlns:w="urn:schemas-microsoft-com:office:word" xmlns="http://www.w3.org/TR/REC-html40">

      <head>
        <title>FACTURA (Factura)</title>
        <style>
          /* Style Definitions */ p.MsoNormal, li.MsoNormal, div.MsoNormal
          {mso-style-parent:""; margin:0mm; margin-bottom:.0001pt; mso-pagination:widow-orphan;
          font-size:7.0pt; mso-bidi-font-size:12.0pt; font-family:Arial;
          mso-fareast-font-family:"Times New Roman"; mso-bidi-font-family:"Times New Roman";}
          p.MsoSmall, li.MsoSmall, div.MsoSmall {mso-style-parent:""; margin:0mm;
          margin-bottom:.0001pt; mso-pagination:widow-orphan; font-size:10.0pt;
          mso-bidi-font-size:12.0pt; font-family:Arial; mso-fareast-font-family:"Times New Roman";
          mso-bidi-font-family:"Times New Roman";} h1 {mso-style-next:Normal; margin:0mm;
          margin-bottom:.0001pt; text-align:right; mso-pagination:widow-orphan;
          page-break-after:avoid; mso-outline-level:1; font-size:12.0pt; font-family:Arial;
          mso-bidi-font-family:"Times New Roman"; mso-font-kerning:0pt;} @page Section1
          {size:595.3pt 841.9pt; margin:10.0mm 19.85pt 30.05pt 20.0mm; mso-header-margin:5.65pt;
          mso-footer-margin:5.65pt; mso-paper-source:0;} div.Section1 {page:Section1;}
        </style>
      </head>

      <body lang="ES-ES" style="tab-interval:0mm">
        <xsl:if test="$pathLogo!=''">
          <div>
            <xsl:text disable-output-escaping="yes">&lt;img src="</xsl:text>
            <xsl:value-of select="$pathLogo" disable-output-escaping="yes"/>
            <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text>
          </div>
          <br/>
          <br/>
          <br/>
        </xsl:if>

        <div class="Section1">

          <table border="1" cellspacing="0" cellpadding="0"
            style="border-collapse:collapse; 
                                                                   border:none;mso-border-alt:solid windowtext .5pt;mso-padding-alt:0mm 5.4pt 0mm 5.4pt">
            <tr height="13" style="height:9.95pt">
              <td width="706" colspan="10" height="13" valign="top"
                style="width:529.55pt; 
                                                                          border:none;border-bottom:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; 
                                                                          height:9.95pt">
                <h1 align="center" style="text-align:center">
                  <b
                    style="mso-bidi-font-weight: 
                                                                       normal">
                    <font size="3" face="Arial">
                      <span
                        style="font-size:12.0pt;mso-bidi-font-family: Arial;mso-bidi-font-weight:normal">
                        <xsl:choose>
                          <xsl:when test='*/Invoices/Invoice/InvoiceHeader/InvoiceDocumentType="FC"' >
                            Factura Completa
                          </xsl:when>
                          <xsl:when test='*/Invoices/Invoice/InvoiceHeader/InvoiceDocumentType="FA"' >
                            Factura Abreviada
                          </xsl:when>
                          <xsl:when test='*/Invoices/Invoice/InvoiceHeader/InvoiceDocumentType="AF"' >
                            Autofactura
                          </xsl:when>
                          <xsl:otherwise>
                            <xsl:value-of select="*/Invoices/Invoice/InvoiceHeader/InvoiceDocumentType"/>
                          </xsl:otherwise>
                        </xsl:choose>

                        (<xsl:choose>
                          <xsl:when test='/*/Invoices/Invoice/InvoiceHeader/InvoiceClass="OO"'>
                            Original
                          </xsl:when>
                          <xsl:when test='/*/Invoices/Invoice/InvoiceHeader/InvoiceClass="OR"'>
                            Original Rectificativa
                          </xsl:when>
                          <xsl:when test='/*/Invoices/Invoice/InvoiceHeader/InvoiceClass="OC"'>
                            Original Recapitulativa
                          </xsl:when>
                          <xsl:when test='/*/Invoices/Invoice/InvoiceHeader/InvoiceClass="CO"'>
                            Copia Original
                          </xsl:when>
                          <xsl:when test='/*/Invoices/Invoice/InvoiceHeader/InvoiceClass="CR"'>
                            Copia Rectificativa
                          </xsl:when>
                          <xsl:when test='/*/Invoices/Invoice/InvoiceHeader/InvoiceClass="CC"'>
                            Copia Recapitulativa
                          </xsl:when>
                          <xsl:otherwise>
                            <xsl:value-of select="/*/Invoices/Invoice/InvoiceHeader/InvoiceClass"/>
                          </xsl:otherwise>
                        </xsl:choose>)
                        -
                        Factura
                        <o:p/>
                      </span>
                    </font>
                  </b>
                </h1>
              </td>
            </tr>
            <tr height="13" style="height:9.95pt">
              <td width="353" colspan="4" height="13" valign="top"
                style="width:264.75pt; 
                                                                          border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none; 
                                                                          border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt; 
                                                                          padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
                      style="font-size:7.0pt; 
                                                                              mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">
                        Emisor (nombre, direccion...) /
                        Seller (name, address, tax reference)
                      </span>
                    </span>
                  </font>
                </p>
              </td>
              <td width="177" colspan="3" height="13" valign="top"
                style="width:132.4pt;border: 
                                                                          none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt; 
                                                                          mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; 
                                                                          height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
                      style="font-size:7.0pt; 
                                                                              mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">
                        Número de Factura / Invoice
                        number
                      </span>
                    </span>
                  </font>
                </p>
              </td>
              <td width="177" colspan="3" height="13" valign="top"
                style="width:132.4pt;border: 
                                                                          none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt; 
                                                                          mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; 
                                                                          height:9.95pt">
                <p class="MsoNormal">
                  &#160;<font size="1" face="Arial">
                    <span
                      style="font-size:7.0pt;mso-bidi-font-size:7.0pt;mso-bidi-font-family: 
                Arial">
                      <o:p/>
                    </span>
                  </font>
                </p>
              </td>
            </tr>
            <tr height="13" style="height:9.95pt">
              <td width="353" rowspan="5" colspan="4" height="13" valign="top"
                style="width:264.75pt; 
                                                                                      border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none; 
                                                                                      border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <xsl:choose>
                    <xsl:when test='/*/Parties/SellerParty/TaxIdentification/PersonTypeCode="F"' >
                      Persona Física
                    </xsl:when>
                    <xsl:when test='/*/Parties/SellerParty/TaxIdentification/PersonTypeCode="J"' >
                      Persona Jurídica
                    </xsl:when>
                    <xsl:otherwise>
                      <xsl:value-of select="/*/Parties/SellerParty/TaxIdentification/PersonTypeCode"/>
                    </xsl:otherwise>
                  </xsl:choose>
                  <br/>
                  <xsl:choose>
                    <xsl:when test="/*/Parties/SellerParty/TaxIdentification/PersonTypeCode = 'F'">
                      <span xsl:use-attribute-sets="prn-attrs">
                        <xsl:value-of
                          select="/*/Parties/SellerParty/Individual/Name"/>
                        <xsl:value-of
                          select="/*/Parties/SellerParty/Individual/FirstSurname"
                          />
                        <xsl:value-of
                      select="/*/Parties/SellerParty/Individual/SecondSurname"/>
                      </span>
                      <br/>
                    </xsl:when>
                    <xsl:when test="/*/Parties/SellerParty/TaxIdentification/PersonTypeCode = 'J'">
                      <span xsl:use-attribute-sets="prn-attrs">
                        <xsl:value-of select="/*/Parties/SellerParty/LegalEntity/CorporateName"/>
                      </span>
                      <br/>
                    </xsl:when>
                  </xsl:choose>
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of select="/*/Parties/SellerParty/*/*/Address"/>
                  </span>
                  <br/>
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of select="/*/Parties/SellerParty/*/*/PostCode"/>
                  </span>
                  <br/>
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of select="/*/Parties/SellerParty/*/*/Town"/>
                  </span>
                  <br/>
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of select="/*/Parties/SellerParty/*/*/Province"/>
                  </span>
                  <br/>
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of select="/*/Parties/SellerParty/*/*/CountryCode"/>
                  </span>
                  <br/>
                  <!--<xsl:apply-templates select="/*/Parties/SellerParty"/>-->
                </p>
              </td>
              <td width="177" colspan="3" height="13" valign="top"
                style="width:132.4pt;border-top: 
                                                                          none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt; 
                                                                          mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; 
                                                                          height:9.95pt">
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of select="/*/Invoices/Invoice/InvoiceHeader/InvoiceSeriesCode"/>
                    <xsl:value-of select="/*/Invoices/Invoice/InvoiceHeader/InvoiceNumber"/>
                  </span>
                </p>
              </td>
              <td width="177" colspan="3" height="13" valign="top"
                style="width:132.4pt;border-top: 
                                                                          none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt; 
                                                                          mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; 
                                                                          height:9.95pt">
                <p class="MsoNormal">
                  &#160;<font size="1" face="Arial">
                    <span
                      style="font-size:7.0pt;mso-bidi-font-size:7.0pt;mso-bidi-font-family: 
                Arial">
                      <o:p/>
                    </span>
                  </font>
                </p>
              </td>
            </tr>
            <tr height="13" style="height:9.95pt">

              <td width="177" colspan="3" height="13" valign="top"
                style="width:132.4pt;border: 
                                                                          none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt; 
                                                                          mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; 
                                                                          height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
                      style="font-size:7.0pt; 
                                                                              mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">
                        Fecha de Expedicion de la Factura /
                        Invoice date (yyyy-mm-dd)
                      </span>
                    </span>
                  </font>
                </p>
              </td>
              <td width="177" colspan="3" height="13" valign="top"
                style="width:132.4pt;border: 
                                                                          none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt; 
                                                                          mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; 
                                                                          height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
                      style="font-size:7.0pt; 
                                                                              mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">
                        CIF/NIF del Emisor / Sellers
                        reference
                      </span>
                    </span>
                  </font>
                </p>
              </td>
            </tr>
            <tr height="13" style="height:9.95pt">

              <td width="177" colspan="3" height="13" valign="top"
                style="width:132.4pt;border-top: 
                                                                          none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt; 
                                                                          mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; 
                                                                          height:9.95pt">
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of select="/*/Invoices/Invoice/InvoiceIssueData/IssueDate"/>
                  </span>
                </p>
              </td>
              <td width="177" colspan="3" height="13" valign="top"
                style="width:132.4pt;border-top: 
                                                                          none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt; 
                                                                          mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; 
                                                                          height:9.95pt">
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of
                      select="/*/Parties/SellerParty/TaxIdentification/TaxIdentificationNumber"/>
                  </span>
                </p>
              </td>
            </tr>
            <tr height="13" style="height:9.95pt">

              <td width="177" colspan="3" height="13" valign="top"
                style="width:132.4pt;border: 
                                                                          none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt; 
                                                                          mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; 
                                                                          height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
                      style="font-size:7.0pt; 
                                                                              mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">
                        CIF/NIF del Receptor / Buyer
                        reference
                      </span>
                    </span>
                  </font>
                </p>
              </td>
              <td width="177" colspan="3" height="13" valign="top"
                style="width:132.4pt;border: 
                                                                          none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt; 
                                                                          mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; 
                                                                          height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
                      style="font-size:7.0pt; 
                                                                              mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Otro CIF/NIF / Other reference</span>
                    </span>
                  </font>
                </p>
              </td>
            </tr>
            <tr height="13" style="height:9.95pt">

              <td width="177" colspan="3" height="13" valign="top"
                style="width:132.4pt;border-top: 
                                                                          none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt; 
                                                                          mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; 
                                                                          height:9.95pt">
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of
                      select="/*/Parties/BuyerParty/TaxIdentification/TaxIdentificationNumber"/>
                  </span>
                </p>
              </td>
              <td width="177" colspan="3" height="13" valign="top"
                style="width:132.4pt;border-top: 
                                                                          none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt; 
                                                                          mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; 
                                                                          height:9.95pt">
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs"
                  >
                    <!--<xsl:value-of select="/*/" />-->
                  </span>
                </p>
              </td>
            </tr>
            <tr height="13" style="height:9.95pt">
              <td width="353" colspan="4" height="13" valign="top"
                style="width:264.75pt; 
                                                                          border-top:solid windowtext 1.5pt;border-left:solid windowtext 1.5pt;border-bottom:none; 
                                                                          border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt; 
                                                                          padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
                      style="font-size:7.0pt; 
                                                                              mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">
                        Consignatario (nombre, direccion...) /
                        Consignee (name, address, tax reference)
                      </span>
                    </span>
                  </font>
                </p>
              </td>
              <td width="353" colspan="6" height="13" valign="top"
                style="width:264.8pt;border: 
                                                                          none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt; 
                                                                          mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; 
                                                                          height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
                      style="font-size:7.0pt; 
                                                                              mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">
                        Receptor (nombre, direccion...) /
                        Buyer (name, address...)
                      </span>
                    </span>
                  </font>
                </p>
              </td>
            </tr>
            <tr>
              <td width="353" height="65" rowspan="5" colspan="4" valign="top"
                style="width:264.75pt; 
                                                                                      border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none; 
                                                                                      border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;">
                <p class="MsoNormal">
                  <!--<xsl:apply-templates select="/*/*/*/ConsigneeParty"/>-->
                </p>
              </td>
              <td width="353" height="65" rowspan="5" colspan="6" valign="top"
                style="width:264.8pt;border: 
                                                                                      none;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt; 
                                                                                      padding:0mm 1.4pt 0mm 1.4pt;">
                <p class="MsoNormal">
                  <xsl:choose>
                    <xsl:when test='/*/Parties/BuyerParty/TaxIdentification/PersonTypeCode="F"'>
                      Persona Física
                    </xsl:when>
                    <xsl:when test='/*/Parties/BuyerParty/TaxIdentification/PersonTypeCode="J"'>
                      Persona Jurídica
                    </xsl:when>
                    <xsl:otherwise>
                      <xsl:value-of select="/*/Parties/BuyerParty/TaxIdentification/PersonTypeCode"/>
                    </xsl:otherwise>
                  </xsl:choose>
                  /
                  <xsl:choose>
                    <xsl:when test='/*/Parties/BuyerParty/TaxIdentification/ResidenceTypeCode="E"'>
                      Extrangero (fuera de la UE)
                    </xsl:when>
                    <xsl:when test='/*/Parties/BuyerParty/TaxIdentification/ResidenceTypeCode="R"'>
                      Residente (en España)
                    </xsl:when>
                    <xsl:when test='/*/Parties/BuyerParty/TaxIdentification/ResidenceTypeCode="U"'>
                      Residente en la Unión Europea (excepto España)
                    </xsl:when>
                    <xsl:otherwise>
                      <xsl:value-of select="/*/Parties/BuyerParty/TaxIdentification/ResidenceTypeCode"/>
                    </xsl:otherwise>
                  </xsl:choose>
                  <br/>
                  <xsl:choose>
                    <xsl:when test="/*/Parties/BuyerParty/TaxIdentification/PersonTypeCode = 'F'">
                      <span xsl:use-attribute-sets="prn-attrs">
                        <xsl:value-of
                          select="/*/Parties/BuyerParty/Individual/Name"/>&#160;<xsl:value-of
                          select="/*/Parties/BuyerParty/Individual/FirstSurname"
                          />&#160;<xsl:value-of
                select="/*/Parties/BuyerParty/Individual/SecondSurname"/>
                      </span>
                      <br/>
                    </xsl:when>
                    <xsl:when test="/*/Parties/BuyerParty/TaxIdentification/PersonTypeCode = 'J'">
                      <span xsl:use-attribute-sets="prn-attrs">
                        <xsl:value-of select="/*/Parties/BuyerParty/LegalEntity/CorporateName"/>
                      </span>
                      <br/>
                    </xsl:when>
                  </xsl:choose>
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of select="/*/Parties/BuyerParty/*/*/Address"/>
                  </span>
                  <br/>
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of select="/*/Parties/BuyerParty/*/*/PostCode"/>
                  </span>
                  <br/>
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of select="/*/Parties/BuyerParty/*/*/Town"/>
                  </span>
                  <br/>
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of select="/*/Parties/BuyerParty/*/*/Province"/>
                  </span>
                  <br/>
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of select="/*/Parties/BuyerParty/*/*/CountryCode"/>
                  </span>
                  <br/>
                  <!-- <xsl:apply-templates select="/*/Parties/BuyerParty"/> -->
                </p>
              </td>
            </tr>
            <tr height="13" style="height:9.95pt"> </tr>
            <tr height="13" style="height:9.95pt"> </tr>
            <tr height="13" style="height:9.95pt"> </tr>
            <tr height="13" style="height:9.95pt"> </tr>
            <tr height="13" style="height:9.95pt">
              <td width="353" colspan="4" height="13" valign="top"
                style="width:264.75pt; 
   border-top:solid windowtext 1.5pt;none;border-left:solid windowtext 1.5pt;border-bottom:none; 
   border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt; 
   padding:0mm 1.4pt 0mm 1.4pt;">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
                      style="font-size:7.0pt; 
   mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial"
                      >Promotor de la carga</span>
                  </font>
                  <span style="mso-bidi-font-family:Arial"> (nombre, direccion...) </span>
                  <font size="1" face="Arial">
                    <span
                      style="font-size:7.0pt; 
                      mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial"
                      > / Freight forwarder</span>
                  </font>
                  <span style="mso-bidi-font-family:Arial"> (name, address, tax reference) </span>
                  <span style="mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial">
                    <o:p/>
                  </span>
                </p>
              </td>
              <td width="353" colspan="6" height="13" valign="top"
                style="width:264.8pt;border: 
   none;border-right:solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt; 
   mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
                      style="font-size:7.0pt; 
   mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial"
                      >
                      Referencia única del envío / Unique consignment reference <o:p/>
                    </span>
                  </font>
                </p>
              </td>
            </tr>
            <tr height="13" style="height:9.95pt">
              <td width="353" rowspan="5" colspan="4" height="13" valign="top"
                style="width:264.75pt; 
   border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none; 
   border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <!--<xsl:apply-templates select="/*/*/*/FreightForwarderParty"/>-->
                </p>
              </td>
              <td width="353" colspan="6" height="13" valign="top"
                style="width:264.8pt;border-top: 
   none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt; 
   mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; 
   height:9.95pt">
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs"
                    >
                    <!--<xsl:value-of select="//*/UniqueConsignmentReference" />-->
                  </span>
                </p>
              </td>
            </tr>
            <tr height="13" style="height:9.95pt">

              <td width="88" height="13" valign="top"
                style="width:66.2pt;border:none;mso-border-top-alt: 
   solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding: 
   0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt; 
   mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">
                        Pais de Origen / Country of
                        origin
                      </span>
                    </span>
                  </font>
                </p>
              </td>
              <td colspan="2" width="88" height="13" valign="top"
                style="width:66.2pt;border-top:solid windowtext 1.5pt; 
   border-left:none;border-bottom:none;border-right:solid windowtext 1.5pt; 
   padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal" align="right" style="text-align:right">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">
                        Codigo ISO /<br/>ISO code
                      </span>
                    </span>
                  </font>
                </p>
              </td>
              <td width="177" colspan="3" height="13" valign="top"
                style="width:132.4pt;border-top: 
   solid windowtext 1.5pt;border-left:none;border-bottom:none;border-right:solid windowtext 1.5pt; 
  mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; 
   height:9.95pt">
                <p class="MsoNormal" align="right" style="text-align:right">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">
                        Pais de Destino /<span
                          style="mso-spacerun: yes"
                          >&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</span>Codigo
                        ISO /
                      </span>
                    </span>
                    <br/>
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">
                        Country of destination<span
                          style="mso-spacerun: yes"
                          >&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</span>ISO
                        code
                      </span>
                    </span>
                  </font>
                </p>
              </td>
            </tr>
            <tr height="13" style="height:9.95pt">

              <td width="88" height="13" colspan="3" valign="top"
                style="width:66.2pt;border:none;border-bottom: 
   solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding: 
   0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of select="/*/Parties/SellerParty/*/*/CountryCode"/>
                  </span>
                </p>
              </td>
              <td width="88" height="13" colspan="3" valign="top"
                style="width:66.2pt;border:none;border-bottom: 
   solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;padding: 
   0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of select="/*/Parties/BuyerParty/*/*/CountryCode"/>
                  </span>
                </p>
              </td>
            </tr>
            <tr height="13" style="height:9.95pt">

              <td width="177" colspan="3" height="13" valign="top"
                style="width:132.4pt;border: 
  none;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt; 
   padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt; 
   mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">
                        Plazos de entrega / Terms of
                        delivery
                      </span>
                    </span>
                  </font>
                </p>
              </td>
              <td width="177" colspan="3" height="13" valign="top"
                style="width:132.4pt;border: 
   none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt; 
   padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt; 
   mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">
                        Localización relevante / Relevant
                        location
                      </span>
                    </span>
                  </font>
                </p>
              </td>
            </tr>
            <tr height="13" style="height:9.95pt">

              <td width="177" rowspan="3" colspan="3" height="13" valign="top"
                style="width:132.4pt;border: 
   none;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; 
   height:9.95pt">
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs"
                    >
                    <!--<xsl:value-of select="//*/TermsOfDelivery/DeliveryTermsCoded" />-->
                  </span>&#160;
                  <span xsl:use-attribute-sets="prn-attrs"
                    >
                    <!--<xsl:value-of select="//*/TermsOfDelivery/DeliveryTermsDescription" />-->
                  </span>
                </p>
              </td>
              <td width="177" rowspan="3" colspan="3" height="13" valign="top"
                style="width:132.4pt;border: 
   none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; 
   height:9.95pt">
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs"
                    >
                    <!--<xsl:value-of select="//*/TermsOfDelivery/DeliveryTermLocation" />-->
                  </span>
                </p>
              </td>
            </tr>
            <tr height="13" style="height:9.95pt">
              <td width="353" colspan="4" height="13" valign="top"
                style="width:264.75pt; 
   border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none; 
   border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt; 
   padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  &#160;<font size="1" face="Arial">
                    <span
                      style="font-size:7.0pt;mso-bidi-font-size:7.0pt;mso-bidi-font-family: 
   Arial">
                      <o:p/>
                    </span>
                  </font>
                </p>
              </td>

            </tr>
            <tr height="13" style="height:9.95pt">
              <td width="353" colspan="4" height="13" valign="top"
                style="width:264.75pt; 
   border:solid windowtext 1.5pt;border-top:none;padding:0mm 1.4pt 0mm 1.4pt; 
   height:9.95pt">
                <p class="MsoNormal">
                  &#160;<font size="1" face="Arial">
                    <span
                      style="font-size:7.0pt;mso-bidi-font-size:7.0pt;mso-bidi-font-family: 
   Arial">
                      <o:p/>
                    </span>
                  </font>
                </p>
              </td>

            </tr>
            <tr height="13" style="height:9.95pt">
              <td width="176" colspan="2" height="13" valign="top"
                style="width:132.35pt; 
   border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none; 
   border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt; 
   padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt; 
   mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">
                        Medio de transporte / Transport mode
                        and means
                      </span>
                    </span>
                  </font>
                </p>
              </td>
              <td width="177" colspan="2" height="13" valign="top"
                style="width:132.4pt;border: 
   none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt; 
   mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; 
   height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt; 
   mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">
                        Puerto/aeropuerto de carga /
                        Port/airport of loading<span style="mso-spacerun: yes"
                        >&#160;&#160;</span>UN/LOCODE
                      </span>
                    </span>
                  </font>
                </p>
              </td>
              <td width="177" colspan="3" height="13" valign="top"
                style="width:132.4pt;border: 
   none;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; 
   height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt; 
   mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">
                        Plazos de pago / Terms of
                        payment
                      </span>
                    </span>
                  </font>
                </p>
              </td>
              <td width="177" colspan="3" height="13" valign="top"
                style="width:132.4pt;border: 
   none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; 
   height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt; 
   mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">
                        Divisa de pago / Transaction currency
                      </span>
                    </span>
                  </font>
                </p>
              </td>
            </tr>
            <tr height="13" style="height:9.95pt">
              <td width="176" colspan="2" height="13" valign="top"
                style="width:132.35pt; 
   border:solid windowtext 1.5pt;border-top:none;padding:0mm 1.4pt 0mm 1.4pt; 
   height:9.95pt">
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs"
                    >
                    <!--<xsl:value-of select="//*/TransportMeans" />-->&#160;<!--<xsl:value-of select="//*/TransportMode/TransportModeCode" />-->
                  </span>
                </p>
              </td>
              <td width="177" colspan="2" height="13" valign="top"
                style="width:132.4pt;border-top: 
   none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt; 
   mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; 
   height:9.95pt">
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs"
                    >
                    <!--<xsl:value-of select="//*/PortOfLoading/LoadingLocationID" />-->&#160;
                    <xsl:value-of select="//*/PortOfLoading/LoadingLocationName"/>
                  </span>
                </p>
              </td>
              <td width="177" rowspan="3" colspan="3" height="13" valign="top"
                style="width:132.4pt;border: 
   none;mso-border-left-alt:solid windowtext 1.5pt;border-bottom:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; 
   height:9.95pt">
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs"
                    >
                    <!--<xsl:value-of select="//*/TermsOfPayment/PaymentTermsCode" />-->
                  </span>&#160;
                  <span xsl:use-attribute-sets="prn-attrs"
                    >
                    <!--<xsl:value-of select="//*/TermsOfPayment/PaymentTermsText" />-->
                  </span>
                </p>
              </td>
              <td width="177" rowspan="3" colspan="3" height="13" valign="top"
                style="width:132.4pt;border: 
   none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; 
   height:9.95pt">
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of select="//*/Batch/InvoiceCurrencyCode"/>
                  </span>&#160;
                </p>
              </td>
            </tr>
            <tr height="13" style="height:9.95pt">
              <td width="176" colspan="2" height="13" valign="top"
                style="width:132.35pt; 
   border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none; 
   border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt; 
   padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt; 
   mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">
                        Puerto/aeropuerto de descarga /
                        Port/airport of discharge<span style="mso-spacerun: yes"/>UN/LOCODE
                      </span>
                    </span>
                  </font>
                </p>
              </td>
              <td width="177" colspan="2" height="13" valign="top"
                style="width:132.4pt;border: 
   none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt; 
   mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; 
   height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt; 
   mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">
                        Lugar final de la entrega / Final
                        place of delivery<span style="mso-spacerun: yes"
                        >&#160;&#160;</span>UN/LOCODE
                      </span>
                    </span>
                  </font>
                </p>
              </td>
            </tr>
            <tr height="13" style="height:9.95pt">
              <td width="176" colspan="2" height="13" valign="top"
                style="width:132.35pt; 
   border:solid windowtext 1.5pt;border-top:none;padding:0mm 1.4pt 0mm 1.4pt; 
  height:9.95pt">
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs"
                    >
                    <!--<xsl:value-of select="//*/DischargeLocationID" />-->&#160;
                    <!--<xsl:value-of select="//*/DischargeLocationName" />-->
                  </span>&#160;
                </p>
              </td>
              <td width="177" colspan="2" height="13" valign="top"
                style="width:132.4pt;border-top: 
   none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt; 
   mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; 
   height:9.95pt">
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs"
                    >
                    <!--<xsl:value-of select="//*/DeliveryLocationID" />-->&#160;
                    <!--<xsl:value-of select="//*/DeliveryLocationName" />-->
                  </span>&#160;
                </p>
              </td>

            </tr>

            <tr> </tr>
            <tr height="13" style="height:9.95pt">

              <td width="88" height="13" valign="top"
                style="width:66.2pt;border:none;border-right: 
   solid windowtext 1.5pt;border-left:solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt: 
   solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt; 
   mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Codigo Detalle / Item/packages</span>
                    </span>
                  </font>
                </p>
              </td>

              <td width="88" height="13" valign="top"
                style="width:66.2pt;border:none;border-right: 
   solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt: 
   solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt; 
   mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">
                        Descripcion Detalle / Item
                        description
                      </span>
                    </span>
                  </font>
                </p>
              </td>

              <td width="50" height="13" valign="top"
                style="width:66.2pt;border:none;border-right: 
   solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt: 
   solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt; 
   mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Cantidad / Quantity </span>
                    </span>
                  </font>
                </p>
              </td>

              <td width="50" height="13" valign="top"
                style="width:66.2pt;border:none;border-right: 
   solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt: 
   solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt; 
   mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Precio Unitario / Unit price</span>
                    </span>
                  </font>
                </p>
              </td>

              <td width="88" height="13" valign="top"
                style="width:66.2pt;border:none;border-right: 
   solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt: 
   solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt; 
   mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">
                        Porcentaje del Descuento / Discount
                        percentage
                      </span>
                    </span>
                  </font>
                </p>
              </td>

              <td width="88" height="13" valign="top"
                style="width:66.2pt;border:none;border-right: 
   solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt: 
   solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt; 
   mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">
                        Total sin impuestos / Amount (gross)
                      </span>
                    </span>
                  </font>
                </p>
              </td>

              <td width="88" height="13" valign="top"
                style="width:66.2pt;border:none;border-right: 
   solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt: 
   solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt; 
   mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Tipo de Impuesto / Tax</span>
                    </span>
                  </font>
                </p>
              </td>

              <td width="88" height="13" valign="top"
                style="width:66.2pt;border:none;border-right: 
   solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt: 
   solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt; 
   mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">
                        Porcentaje del Impuesto / Tax
                        percentage
                      </span>
                    </span>
                  </font>
                </p>
              </td>

              <td width="88" height="13" valign="top"
                style="width:66.2pt;border:none;border-right: 
   solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt: 
   solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt; 
   mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">
                        Fecha de Devengo / Date of Accrued
                        income
                      </span>
                    </span>
                  </font>
                </p>
              </td>

              <td width="88" height="13" valign="top"
                style="width:66.2pt;border:none;border-right: 
   solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt: 
   solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt; 
   mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">
                        Total con impuestos / Amount
                        Due
                      </span>
                    </span>
                  </font>
                </p>
              </td>
            </tr>

            <xsl:variable name="LineItemCnt" select="count(//*/InvoiceLine)"/>
            <xsl:variable name="Row_Hgt">
              <xsl:if test="$LineItemCnt = 1">200</xsl:if>
              <xsl:if test="$LineItemCnt = 2">13</xsl:if>
              <xsl:if test="$LineItemCnt = 3">82</xsl:if>

              <xsl:if test="$LineItemCnt = 4">44</xsl:if>
              <xsl:if test="$LineItemCnt = 5">86</xsl:if>
              <xsl:if test="$LineItemCnt &gt; 6">86</xsl:if>
            </xsl:variable>


            <xsl:for-each select="//*/InvoiceLine">

              <tr>

                <td width="88" height="{$Row_Hgt}" valign="top"
                  style="width:66.15pt;border-top:none; 
   border-left:solid windowtext 1.5pt;border-bottom:none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;">
                  <p class="MsoSmall" align="right">

                  </p>
                </td>

                <td width="261" height="{$Row_Hgt}" valign="top"
                  style="width:166.05pt;border:none;border-right: 
      solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;">
                  <p class="MsoSmall">
                    <span style="font-size:0.8em;">
                      <!-- DESCRIPCION DETALLE -->
                      <xsl:value-of select="./ItemDescription"/>
                    </span>
                  </p>
                </td>

                <td width="50" height="{$Row_Hgt}" valign="top"
                  style="width:66.2pt;border:none;border-right: 
      solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;">

                  <p class="MsoSmall" align="right">
                    <span style="font-size:0.8em;">
                      <!-- CANTIDAD -->
                      <xsl:variable name="quantity">
                        <xsl:value-of select="./Quantity"/>
                      </xsl:variable>
                      <xsl:value-of select="format-number(./Quantity,'#.##0,0')"/>
                      <xsl:choose>
                        <xsl:when test='UnitOfMeasure!=""' >
                          <xsl:choose>
                            <xsl:when test='UnitOfMeasure="01"' >
                              Unidades
                            </xsl:when>
                            <xsl:when test='UnitOfMeasure="02"' >
                              Horas
                            </xsl:when>
                            <xsl:when test='UnitOfMeasure="03"' >
                              Kilogramos
                            </xsl:when>
                            <xsl:when test='UnitOfMeasure="04"' >
                              Litros
                            </xsl:when>
                            <xsl:when test='UnitOfMeasure="05"' >
                              Otros
                            </xsl:when>
                            <xsl:when test='UnitOfMeasure="06"' >
                              Cajas
                            </xsl:when>
                            <xsl:otherwise>
                              -
                            </xsl:otherwise>
                          </xsl:choose>
                        </xsl:when>
                        <xsl:otherwise>
                          -
                        </xsl:otherwise>
                      </xsl:choose>
                    </span>
                  </p>
                </td>

                <td width="88" height="{$Row_Hgt}" valign="top"
                  style="width:66.2pt;border:none;border-right: 
   solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;">
                  <p class="MsoSmall" align="right">
                    <span style="font-size:0.8em;">
                      <!-- PRECIO UNITARIO -->
                      <xsl:variable name="UnitPriceWithoutTax">
                        <xsl:value-of select="./UnitPriceWithoutTax"/>
                      </xsl:variable>
                      <xsl:value-of select="format-number(./UnitPriceWithoutTax,'#.##0,000000')"/>
                    </span>
                  </p>
                </td>

                <td width="88" height="{$Row_Hgt}" valign="top"
                  style="width:66.2pt;border:none;border-right: 
   solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;">
                  <p class="MsoSmall" align="right">
                    <span style="font-size:0.8em;">
                      <xsl:variable name="discountRate">
                        <xsl:value-of select="./DiscountsAndRebates/Discount/DiscountRate"/>
                      </xsl:variable>
                      <xsl:value-of select="format-number(./DiscountsAndRebates/Discount/DiscountRate,'#.##0,0000')"/>
                      <!-- DESCUENTO -->
                    </span>
                  </p>
                </td>

                <td width="88" height="{$Row_Hgt}" valign="top"
                  style="width:66.2pt;border:none;border-right: 
   solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;">
                  <p class="MsoSmall" align="right">
                    <span style="font-size:0.8em;">
                      <!-- TOTAL SIN IVA -->
                      <xsl:choose>
                        <xsl:when test="$divisaFacturacion='EUR'">
                          <xsl:variable name="taxableBase">
                            <xsl:value-of select="./TaxesOutputs/Tax/TaxableBase"/>
                          </xsl:variable>
                          <xsl:value-of select="format-number(./TaxesOutputs/Tax/TaxableBase,'#.##0,00')"/>
                        </xsl:when>
                        <xsl:otherwise>
                          <xsl:variable name="totalAmount">
                            <xsl:value-of select="./TaxesOutputs/Tax/TaxableBase/TotalAmount"/>
                          </xsl:variable>
                          <xsl:value-of select="format-number(./TaxesOutputs/Tax/TaxableBase/TotalAmount,'#.##0,00')"/>
                        </xsl:otherwise>
                      </xsl:choose>
                    </span>
                  </p>
                </td>

                <td width="88" height="{$Row_Hgt}" valign="top"
                  style="width:66.2pt;border:none;border-right: 
                  solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;">
                  <p class="MsoSmall" align="center">
                    <span style="font-size:0.8em;">
                      <!-- CLASE IMPUESTO -->
                      <xsl:choose>
                        <xsl:when test='./TaxesOutputs/Tax/TaxTypeCode="01"' >
                          IVA
                        </xsl:when>
                        <xsl:when test='./TaxesOutputs/Tax/TaxTypeCode="02"' >
                          IPSI
                        </xsl:when>
                        <xsl:when test='./TaxesOutputs/Tax/TaxTypeCode="03"' >
                          IGIC
                        </xsl:when>
                        <xsl:when test='./TaxesOutputs/Tax/TaxTypeCode="04"' >
                          IRPF
                        </xsl:when>
                        <xsl:when test='./TaxesOutputs/Tax/TaxTypeCode="05"' >
                          ITPAJD
                        </xsl:when>
                        <xsl:when test='./TaxesOutputs/Tax/TaxTypeCode="06"' >
                          IE
                        </xsl:when>
                        <xsl:when test='./TaxesOutputs/Tax/TaxTypeCode="07"' >
                          Ra
                        </xsl:when>
                        <xsl:when test='./TaxesOutputs/Tax/TaxTypeCode="08"' >
                          ICTECM
                        </xsl:when>
                        <xsl:when test='./TaxesOutputs/Tax/TaxTypeCode="09"' >
                          IECDPCAC
                        </xsl:when>
                        <xsl:when test='./TaxesOutputs/Tax/TaxTypeCode="11"' >
                          IIIMAB
                        </xsl:when>
                        <xsl:when test='./TaxesOutputs/Tax/TaxTypeCode="12"' >
                          OCIO
                        </xsl:when>
                        <xsl:when test='./TaxesOutputs/Tax/TaxTypeCode="13"' >
                          IMVDM
                        </xsl:when>
                        <xsl:when test='./TaxesOutputs/Tax/TaxTypeCode="14"' >
                          IMSM
                        </xsl:when>
                        <xsl:when test='./TaxesOutputs/Tax/TaxTypeCode="15"' >
                          IMGSM
                        </xsl:when>
                        <xsl:when test='./TaxesOutputs/Tax/TaxTypeCode="16"' >
                          IMPN
                        </xsl:when>
                        <xsl:when test='./TaxesOutputs/Tax/TaxTypeCode="17"' >
                          No Aplicable
                        </xsl:when>
                        <xsl:otherwise>
                          <xsl:value-of select="./TaxesOutputs/Tax/TaxTypeCode"/>
                        </xsl:otherwise>
                      </xsl:choose>
                    </span>
                  </p>
                </td>

                <td width="88" height="{$Row_Hgt}" valign="top"
                  style="width:66.2pt;border:none;border-right: 
                  solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;">
                  <p class="MsoSmall" align="right">
                    <span style="font-size:0.8em;">
                      <!-- PORCENTAJE IMPUESTO -->
                      <xsl:variable name="taxRate">
                        <xsl:value-of select="./TaxesOutputs/Tax/TaxRate"/>
                      </xsl:variable>
                      <xsl:value-of select="format-number(./TaxesOutputs/Tax/TaxRate,'#.##0,00')"/>
                    </span>
                  </p>
                </td>

                <td width="88" height="{$Row_Hgt}" valign="top"
                  style="width:66.2pt;border:none;border-right: 
                  solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;">
                  <p class="MsoSmall" align="center">
                    <span style="font-size:0.8em;">
                      <!-- FECHA DE DEVENGO -->
                      <xsl:value-of select="./TransactionDate"/>
                    </span>
                  </p>
                </td>

                <td width="88" height="{$Row_Hgt}" valign="top"
                  style="width:66.2pt;border:none;border-right: 
                  solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;">
                  <p class="MsoSmall" align="right">
                    <span style="font-size:0.8em;">
                      <!-- TOTAL CON IVA -->
                      <xsl:choose>
                        <xsl:when test="$divisaFacturacion='EUR'">
                          <xsl:variable name="a" select="./TaxesOutputs/Tax/TaxAmount"/>
                          <xsl:variable name="b" select="./TaxesOutputs/Tax/TaxableBase"/>
                          <xsl:variable name="total"
                            select="$a + $b"/>
                          <xsl:value-of select="format-number($total,'#.##0,00')"/>
                        </xsl:when>
                        <xsl:otherwise>
                          <xsl:variable name="a" select="./TaxesOutputs/Tax/TaxAmount/TotalAmount"/>
                          <xsl:variable name="b" select="./TaxesOutputs/Tax/TaxableBase/TotalAmount"/>
                          <xsl:variable name="total"
                            select="$a + $b"/>
                          <xsl:value-of select="format-number($total,'#.##0,00')"/>
                        </xsl:otherwise>
                      </xsl:choose>
                    </span>
                  </p>
                </td>
              </tr>

            </xsl:for-each>

            <tr height="13" style="height:9.95pt">
              <td width="530" colspan="8" height="13" valign="top"
                style="width:397.15pt; 
                border-top:solid windowtext 1.5pt;border-left:none;border-bottom:none; 
                border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt; 
                padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt"> </td>
              <td width="177" colspan="2" height="13" valign="top"
                style="width:132.4pt;border: 
                none;border-right:solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; 
                height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt; 
                      mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">
                        Importe Total sin Impuestos / Total
                        amount (gross)
                      </span>
                    </span>
                  </font>
                </p>
              </td>
            </tr>
            <tr>
              <td width="530" rowspan="12" colspan="8" height="169" valign="top"
                style="width:397.15pt; 
                border-top:none;border-left:none;border-bottom:none; 
                border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs"
                    >
                    <!--<xsl:value-of select="//*/DocumentDeclarations/"/>-->
                  </span>
                </p>
              </td>
              <td width="177" colspan="2" height="13" valign="top"
                style="width:132.4pt;border-top: 
                none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt; 
                mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; 
                height:9.95pt">
                <p class="MsoSmall" align="right">
                  <!--<xsl:if test="//*/MonetaryType = '79'">-->
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:variable name="amountBeforeTaxes">
                      <xsl:value-of
                        select="/*/Invoices/Invoice/InvoiceTotals/TotalGrossAmountBeforeTaxes"/>
                    </xsl:variable>
                    <xsl:value-of select="format-number(/*/Invoices/Invoice/InvoiceTotals/TotalGrossAmountBeforeTaxes,'#.##0,00')"/>
                  </span>
                  <!--</xsl:if>-->
                </p>
              </td>
            </tr>

            <tr>

              <td width="177" colspan="2" height="14" valign="top"
                style="width:132.4pt;border: 
                none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt; 
                mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; 
                height:10.15pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
                      style="font-size:7.0pt; 
                      mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial"
                      >
                      Importe Total con Impuestos / Total Ammount Due<o:p/>
                    </span>
                  </font>
                </p>
              </td>
            </tr>
            <tr>

              <td width="177" colspan="2" height="14" valign="top"
                style="width:132.4pt;border-top: 
                none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt; 
                mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;">
                <p class="MsoNormal" align="right">
                  <span xsl:use-attribute-sets="prn-attrs">
                    <!--<xsl:value-of select="//*/TotalValue"/>-->
                    <!--<xsl:value-of select="//*/InvoiceTotals/CurrencyCode"/>-->
                    <xsl:variable name="TotalExecutableAmount">
                      <xsl:value-of select="/*/Invoices/Invoice/InvoiceTotals/TotalExecutableAmount"/>
                    </xsl:variable>
                    <xsl:value-of select="format-number(/*/Invoices/Invoice/InvoiceTotals/TotalExecutableAmount,'#.##0,00')"/>
                  </span>
                </p>
              </td>
            </tr>



          </table>

          <p class="MsoNormal">
            <font size="1" face="Arial">
              <span style="font-size:7.5pt; 
                mso-bidi-font-family:Arial">
                &#160;<o:p/>
              </span>
            </font>
          </p>

        </div>

      </body>

    </html>

  </xsl:template>
</xsl:stylesheet>
