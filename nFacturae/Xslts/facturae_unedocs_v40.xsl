<?xml version="1.0" encoding="UTF-8"?>

<!DOCTYPE xsl:stylesheet [
  <!ENTITY nbsp "&#160;">
]>

<xsl:stylesheet version="1.0"
	xmlns:java="http://xml.apache.org/xslt/java"
	extension-element-prefixes="java"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Importing resuable types file -->
  <!--<xsl:import href="UNeDocsRT_HTM.xsl"/>-->

  <!-- Importing the resouce file filelocation.xsl for a file locations -->
  <!--<xsl:import href="resourceloc.xsl"/>-->
  <xsl:output method="html" indent="yes" />

  <!-- Declaración del atributo prn-attrs -->
  <xsl:attribute-set name="prn-attrs">
    <xsl:attribute name="style">font-family:Courier;font-size:12pt;</xsl:attribute>
  </xsl:attribute-set>

  <!-- Parametro necesario para la distincion de tipos de factura -->
  <xsl:param name="invoiceType" />
  <!-- Parametro para la inclusion de una imagen -->
  <xsl:param name="logoPath" />



  <xsl:template match="/">
    <xsl:variable name="divisaFacturacion"
			select="FileHeader/Batch/InvoiceCurrencyCode" />
    <html xmlns:v="urn:schemas-microsoft-com:vml"
			xmlns:o="urn:schemas-microsoft-com:office:office"
			xmlns:w="urn:schemas-microsoft-com:office:word"
			xmlns="http://www.w3.org/TR/REC-html40">

      <head>
        <title>
          FACTURA
        </title>
        <style>
          /* Style Definitions */ p.MsoNormal, li.MsoNormal,
          div.MsoNormal {mso-style-parent:""; margin:0mm;
          margin-bottom:.0001pt; mso-pagination:widow-orphan;
          font-size:7.0pt; mso-bidi-font-size:12.0pt;
          font-family:Arial; mso-fareast-font-family:"Times
          New Roman"; mso-bidi-font-family:"Times New Roman";}
          p.MsoSmall, li.MsoSmall, div.MsoSmall
          {mso-style-parent:""; margin:0mm;
          margin-bottom:.0001pt; mso-pagination:widow-orphan;
          font-size:10.0pt; mso-bidi-font-size:12.0pt;
          font-family:Arial; mso-fareast-font-family:"Times
          New Roman"; mso-bidi-font-family:"Times New Roman";}
          h1 {mso-style-next:Normal; margin:0mm;
          margin-bottom:.0001pt; text-align:right;
          mso-pagination:widow-orphan; page-break-after:avoid;
          mso-outline-level:1; font-size:12.0pt;
          font-family:Arial; mso-bidi-font-family:"Times New
          Roman"; mso-font-kerning:0pt;} @page Section1
          {size:595.3pt 841.9pt; margin:10.0mm 19.85pt 30.05pt
          20.0mm; mso-header-margin:5.65pt;
          mso-footer-margin:5.65pt; mso-paper-source:0;}
          div.Section1 {page:Section1;}
          a:link , a:visited , a:active {font-size:10.0pt; display:block; font-weight:bold; background-color:#a0d7a0; color:#ffffff; width:120px; text-align:center; padding:4px; text-decoration:none;}
          a:hover {font-size:10.0pt; background-color:#619861; color:#ffffff;}
        </style>
      </head>

      <body lang="ES-ES" style="tab-interval:0mm">
        <xsl:if test="$logoPath!=''">
          <div>
            <xsl:text disable-output-escaping="yes">&lt;img src="</xsl:text>
            <xsl:value-of select="$logoPath"
							disable-output-escaping="yes" />
            <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text>
          </div>
          <br />
          <br />
          <br />
        </xsl:if>


        <div class="Section1">

          <table border="1" cellspacing="0" cellpadding="0" style='border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;mso-padding-alt:0mm 5.4pt 0mm 5.4pt'>
            <tr height="13" style='height:9.95pt'>
              <td width="706" colspan="8" height="13" valign="top" style='width:529.55pt;border:none;border-bottom:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <h1 align="center" style="text-align:center">
                  <b
                    style="mso-bidi-font-weight: 
				                                                                       normal">
                    <font size="3" face="Arial">
                      <span
                        style="font-size:12.0pt;mso-bidi-font-family: Arial;mso-bidi-font-weight:normal">
                        <xsl:variable name="toTranslate" select="*/Invoices/Invoice/InvoiceHeader/InvoiceDocumentType"/>
                        <xsl:if test="FC">
                          <xsl:variable name="traduccion" select="Factura Completa" />
                        </xsl:if>
                        <xsl:if test="FA">
                          <xsl:variable name="traduccion" select="Factura Abreviada" />
                        </xsl:if>
                        <xsl:if test="AF">
                          <xsl:variable name="traduccion" select="AutoFactura" />
                        </xsl:if>
                        <xsl:value-of select="$traduccion"/>
                        <xsl:variable name="toTranslate2">
                          <xsl:value-of select="/*/Invoices/Invoice/InvoiceHeader/InvoiceClass"/>
                        </xsl:variable>
                        <xsl:variable name="traduccion2"
                          select="java:es.mityc.appfacturae.utils.visualize.DictionaryLoader.getTranslation('InvoiceClassType',$toTranslate2,'lang_es')"
				                        />
                        (<xsl:value-of select="$traduccion2"/>)<o:p/>
                      </span>
                    </font>
                  </b>
                </h1>

              </td>
            </tr>

            <tr height="13" style='height:9.95pt'>
              <td width="353" colspan="4" height="13" valign="top" style='width:264.75pt;border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Emisor (nombre, dirección...)
                      </span>
                    </span>
                  </font>
                </p>

              </td>

              <td width="177" colspan="2" height="13" valign="top" style='width:132.4pt;border:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Número de Factura
                      </span>
                    </span>
                  </font>
                </p>

              </td>

              <td width="177" colspan="2" height="13" valign="top" style='width:132.4pt;border:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  &#160;
                  <font size="1" face="Arial">
                    <span style='font-size:7.0pt;mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <o:p></o:p>
                    </span>
                  </font>
                </p>

              </td>
            </tr>

            <tr height="13" style='height:9.95pt'>
              <td width="353" rowspan="5" colspan="4" height="13" valign="top" style='width:264.75pt;border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <xsl:variable name="toTranslate">
                    <xsl:value-of select="/*/Parties/SellerParty/TaxIdentification/PersonTypeCode"/>
                  </xsl:variable>
                  <xsl:variable name="traduccion"
                    select="java:es.mityc.appfacturae.utils.visualize.DictionaryLoader.getTranslation('PersonTypeCode',$toTranslate,'lang_es')"/>
                  <xsl:value-of select="$traduccion"/>
                  <br/>
                  <xsl:choose>
                    <xsl:when test="/*/Parties/SellerParty/TaxIdentification/PersonTypeCode = 'F'">
                      <span xsl:use-attribute-sets="prn-attrs">
                        <xsl:value-of
				                          select="/*/Parties/SellerParty/Individual/Name"/>&nbsp;<xsl:value-of
				                          select="/*/Parties/SellerParty/Individual/FirstSurname"
				                          />&nbsp;<xsl:value-of
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

              <td width="177" colspan="2" height="13" valign="top" style='width:132.4pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; height:9.95pt'>

                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of select="/*/Invoices/Invoice/InvoiceHeader/InvoiceSeriesCode"/>
                    <xsl:value-of select="/*/Invoices/Invoice/InvoiceHeader/InvoiceNumber"/>
                  </span>
                </p>

              </td>

              <td width="177" colspan="2" height="13" valign="top" style='width:132.4pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  &#160;
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <o:p></o:p>
                    </span>
                  </font>
                </p>

              </td>
            </tr>

            <tr height="13" style='height:9.95pt'>
              <td width="177" colspan="2" height="13" valign="top" style='width:132.4pt;border:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Fecha de Expedición de la Factura /
                        (aaaa-mm-dd)
                      </span>
                    </span>
                  </font>
                </p>

              </td>

              <td width="177" colspan="2" height="13" valign="top" style='width:132.4pt;border:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        CIF / NIF del Emisor
                      </span>
                    </span>
                  </font>
                </p>

              </td>
            </tr>

            <tr height="13" style='height:9.95pt'>

              <td width="177" colspan="2" height="13" valign="top" style='width:132.4pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>
                <p class="MsoNormal">
                  &#160;
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of select="/*/Invoices/Invoice/InvoiceIssueData/IssueDate"/>
                  </span>
                </p>
              </td>

              <td width="177" colspan="2" height="13" valign="top" style='width:132.4pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of
                      select="/*/Parties/SellerParty/TaxIdentification/TaxIdentificationNumber"/>
                  </span>
                </p>

              </td>

            </tr>

            <tr height="13" style='height:9.95pt'>
              <td width="177" colspan="2" height="13" valign="top" style='width:132.4pt;border:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        CIF / NIF del Receptor
                      </span>
                    </span>
                  </font>
                </p>

              </td>

              <td width="177" colspan="2" height="13" valign="top" style='width:132.4pt;border:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Otro CIF / NIF
                      </span>
                    </span>
                  </font>
                </p>

              </td>
            </tr>

            <tr height="13" style='height:9.95pt'>
              <td width="177" colspan="2" height="13" valign="top" style='width:132.4pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of
                      select="/*/Parties/BuyerParty/TaxIdentification/TaxIdentificationNumber"/>
                  </span>
                </p>

              </td>

              <td width="177" colspan="2" height="13" valign="top" style='width:132.4pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <span
										xsl:use-attribute-sets="prn-attrs">
                    <!-- <xsl:value-of
											select="/*/DocumentHeader/OrderInformation/OtherReference/ReferenceID" /> -->
                  </span>
                </p>

              </td>
            </tr>

            <tr height="13" style='height:9.95pt'>
              <td width="353" colspan="4" height="13" valign="top" style='width:264.75pt;border-top:solid windowtext 1.5pt;border-left:solid windowtext 1.5pt;border-bottom:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Consignatario (nombre,
                        dirección...)
                      </span>
                    </span>
                  </font>
                </p>

              </td>

              <td width="353" colspan="4" height="13" valign="top" style='width:264.8pt;border:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Receptor (nombre, dirección...)
                      </span>
                    </span>
                  </font>
                </p>

              </td>
            </tr>

            <tr>
              <td width="353" height="65" rowspan="5" colspan="4" valign="top" style='width:264.75pt;border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;'>

                <p class="MsoNormal">
                  <!-- <xsl:value-of
										select="/*/*/*/ConsigneeParty" /> -->
                </p>

              </td>

              <td width="353" height="65" rowspan="5" colspan="4" valign="top" style='width:264.8pt;border:none;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;'>

                <p class="MsoNormal">
                  <xsl:variable name="toTranslate">
                    <xsl:value-of select="/*/Parties/BuyerParty/TaxIdentification/PersonTypeCode"/>
                  </xsl:variable>
                  <xsl:variable name="traduccion"
                    select="java:es.mityc.appfacturae.utils.visualize.DictionaryLoader.getTranslation('PersonTypeCode',$toTranslate,'lang_es')"
				                  />
                  <xsl:value-of select="$traduccion"/>&nbsp;/&nbsp;
                  <xsl:variable name="toTranslate2">
                    <xsl:value-of select="/*/Parties/BuyerParty/TaxIdentification/ResidenceTypeCode"
				                    />
                  </xsl:variable>
                  <xsl:variable name="traduccion2"
                  select="java:es.mityc.appfacturae.utils.visualize.DictionaryLoader.getTranslation('ResidenceTypeCode',$toTranslate2,'lang_es')"/>
                  <xsl:value-of select="$traduccion2"/>
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

            <tr height="13" style='height:9.95pt'>

            </tr>

            <tr height="13" style='height:9.95pt'>

            </tr>

            <tr height="13" style='height:9.95pt'>

            </tr>

            <tr height="13" style='height:9.95pt'>

            </tr>

            <tr height="13" style='height:9.95pt'>
              <td width="353" colspan="4" height="13" valign="top" style='width:264.75pt;border-top:solid windowtext 1.5pt;none;border-left:solid windowtext 1.5pt;border-bottom:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial'>
                      Promotor de la carga
                    </span>
                  </font>
                  <span
										style='mso-bidi-font-family:Arial'>
                    (nombre, dirección...)
                  </span>
                  <span
										style='mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial'>
                    <o:p></o:p>
                  </span>
                </p>

              </td>

              <td width="353" colspan="4" height="13" valign="top" style='width:264.8pt;border:none;border-right:solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial'>
                      Referencia única del envío
                      <o:p></o:p>
                    </span>
                  </font>
                </p>

              </td>
            </tr>

            <tr height="13" style='height:9.95pt'>
              <td width="353" rowspan="5" colspan="4" height="13" valign="top" style='width:264.75pt;border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <!-- <xsl:value-of
										select="/*/*/*/FreightForwarderParty" /> -->
                </p>

              </td>

              <td width="353" colspan="4" height="13" valign="top" style='width:264.8pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <!-- <span
										xsl:use-attribute-sets="prn-attrs">
										<xsl:value-of
											select="//*/UniqueConsignmentReference" />
									</span> -->
                </p>

              </td>
            </tr>

            <tr height="13" style='height:9.95pt'>
              <td width="88" height="13" valign="top" style='width:66.2pt;border:none;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        País de origen
                      </span>
                    </span>
                  </font>
                </p>

              </td>

              <td width="88" height="13" valign="top" style='width:66.2pt;border-top:solid windowtext 1.5pt;border-left:none;border-bottom:none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal" align="right"
									style='text-align:right'>
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Código ISO
                      </span>
                    </span>
                  </font>
                </p>

              </td>

              <td width="88" height="13" valign="top" style='width:66.2pt;border:none;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        País de destino
                      </span>
                    </span>
                  </font>
                </p>

              </td>

              <td width="88" height="13" valign="top" style='width:66.2pt;border-top:solid windowtext 1.5pt;border-left:none;border-bottom:none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal" align="right"
									style='text-align:right'>
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Código ISO
                      </span>
                    </span>
                  </font>
                </p>

              </td>
            </tr>

            <tr height="13" style='height:9.95pt'>
              <td width="88" height="13" colspan="2" valign="top" style='width:66.2pt;border:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of select="/*/Parties/SellerParty/*/*/CountryCode"/>
                  </span>
                </p>

              </td>

              <td width="88" height="13" colspan="2" valign="top" style='width:66.2pt;border:none;border-bottom:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of select="/*/Parties/BuyerParty/*/*/CountryCode"/>
                  </span>
                </p>

              </td>
            </tr>

            <tr height="13" style='height:9.95pt'>
              <td width="177" colspan="2" height="13" valign="top" style='width:132.4pt;border:none;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Plazos de entrega
                      </span>
                    </span>
                  </font>
                </p>

              </td>

              <td width="177" colspan="2" height="13" valign="top" style='width:132.4pt;border:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Localización relevante
                      </span>
                    </span>
                  </font>
                </p>

              </td>
            </tr>

            <tr height="13" style='height:9.95pt'>
              <td width="177" rowspan="3" colspan="2" height="13" valign="top" style='width:132.4pt;border:none;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <!-- <span
										xsl:use-attribute-sets="prn-attrs">
										<xsl:value-of
											select="//*/TermsOfDelivery/DeliveryTermsCoded" />
									</span>
									&#160;
									<span
										xsl:use-attribute-sets="prn-attrs">
										<xsl:value-of
											select="//*/TermsOfDelivery/DeliveryTermsDescription" />
									</span> -->
                </p>

              </td>

              <td width="177" rowspan="3" colspan="2" height="13" valign="top" style='width:132.4pt;border:none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <span
										xsl:use-attribute-sets="prn-attrs">
                    <!--<xsl:value-of
											select="//*/TermsOfDelivery/DeliveryTermLocation" /> -->
                  </span>
                </p>

              </td>
            </tr>

            <tr height="13" style='height:9.95pt'>
              <td width="353" colspan="4" height="13" valign="top" style='width:264.75pt;border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  &#160;
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <o:p></o:p>
                    </span>
                  </font>
                </p>

              </td>
            </tr>

            <tr height="13" style='height:9.95pt'>
              <td width="353" colspan="4" height="13" valign="top" style='width:264.75pt;border:solid windowtext 1.5pt;border-top:none;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  &#160;
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <o:p></o:p>
                    </span>
                  </font>
                </p>

              </td>
            </tr>

            <tr height="13" style='height:9.95pt'>
              <td width="176" colspan="2" height="13" valign="top" style='width:132.35pt;border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Medio de transporte
                      </span>
                    </span>
                  </font>
                </p>

              </td>

              <td width="177" colspan="2" height="13" valign="top" style='width:132.4pt;border:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Puerto / Aeropuerto de carga
                        <span
													style="mso-spacerun: yes">
                          &#160;&#160;
                        </span>
                        UN/LOCODE
                      </span>
                    </span>
                  </font>
                </p>

              </td>

              <td width="177" colspan="2" height="13" valign="top" style='width:132.4pt;border:none;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Plazos de pago
                      </span>
                    </span>
                  </font>
                </p>

              </td>

              <td width="177" colspan="2" height="13" valign="top" style='width:132.4pt;border:none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Divisa de pago
                      </span>
                    </span>
                  </font>
                </p>

              </td>
            </tr>

            <tr height="13" style='height:9.95pt'>
              <td width="176" colspan="2" height="13" valign="top" style='width:132.35pt;border:solid windowtext 1.5pt;border-top:none;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <!--<span
										xsl:use-attribute-sets="prn-attrs">
										<xsl:value-of
											select="//*/TransportMeans" />
										&#160;
										<xsl:value-of
											select="//*/TransportMode/TransportModeCode" />
									</span> -->
                </p>

              </td>

              <td width="177" colspan="2" height="13" valign="top" style='width:132.4pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <!-- <span
										xsl:use-attribute-sets="prn-attrs">
										<xsl:value-of
											select="//*/PortOfLoading/LoadingLocationID" />
										&#160;
										<xsl:value-of
											select="//*/PortOfLoading/LoadingLocationName" />
									</span> -->
                </p>

              </td>

              <td width="177" rowspan="3" colspan="2" height="13" valign="top" style='width:132.4pt;border:none;mso-border-left-alt:solid windowtext 1.5pt;border-bottom:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <!-- <span
										xsl:use-attribute-sets="prn-attrs">
										<xsl:value-of
											select="//*/TermsOfPayment/PaymentTermsCode" />
									</span>
									&#160;
									<span
										xsl:use-attribute-sets="prn-attrs">
										<xsl:value-of
											select="//*/TermsOfPayment/PaymentTermsText" />
									</span> -->
                </p>

              </td>

              <td width="177" rowspan="3" colspan="2" height="13" valign="top" style='width:132.4pt;border:none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of select="//*/Batch/InvoiceCurrencyCode"/>
                  </span>
                  &#160;
                </p>

              </td>
            </tr>

            <tr height="13" style='height:9.95pt'>
              <td width="176" colspan="2" height="13" valign="top" style='width:132.35pt;border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Puerto / Aeropuerto de descarga
                        <span
													style="mso-spacerun: yes">
                        </span>
                        UN/LOCODE
                      </span>
                    </span>
                  </font>
                </p>

              </td>

              <td width="177" colspan="2" height="13" valign="top" style='width:132.4pt;border:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Lugar final de la entrega
                        <span
													style="mso-spacerun: yes">
                          &#160;&#160;
                        </span>
                        UN/LOCODE
                      </span>
                    </span>
                  </font>
                </p>

              </td>
            </tr>

            <tr height="13" style='height:9.95pt'>
              <td width="176" colspan="2" height="13" valign="top" style='width:132.35pt;border:solid windowtext 1.5pt;border-top:none;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <!-- <span
										xsl:use-attribute-sets="prn-attrs">
										<xsl:value-of
											select="//*/DischargeLocationID" />
										&#160;
										<xsl:value-of
											select="//*/DischargeLocationName" />
									</span> -->
                  &#160;
                </p>

              </td>

              <td width="177" colspan="2" height="13" valign="top" style='width:132.4pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <!-- <span
										xsl:use-attribute-sets="prn-attrs">
										<xsl:value-of
											select="//*/DeliveryLocationID" />
										&#160;
										<xsl:value-of
											select="//*/DeliveryLocationName" />
									</span> -->
                  &#160;
                </p>

              </td>

            </tr>

            <tr height="13" style='height:9.95pt'>
              <td width="176" colspan="2" height="13" valign="top" style='width:132.35pt;border:none;border-left:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Detalles del transporte;
                        Unidad de transporte ID
                      </span>
                    </span>
                  </font>
                </p>

              </td>

              <td width="265" colspan="3" height="13" valign="top" style='width:198.6pt;border:none;mso-border-top-alt:solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        No. y tipo de
                        paquetes; descripción del
                        transporte de mercancías
                      </span>
                    </span>
                  </font>
                </p>

              </td>

              <td width="88" height="13" valign="top" style='width:66.2pt;border:none;mso-border-top-alt:solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Código del producto
                      </span>
                    </span>
                  </font>
                </p>

              </td>

              <td width="88" height="13" valign="top" style='width:66.2pt;border:none;mso-border-top-alt:solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal"
									style='margin-left:-2.85pt'>
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        &#160;Peso bruto total (kg)
                      </span>
                    </span>
                  </font>
                </p>

              </td>

              <td width="88" height="13" valign="top" style='width:66.2pt;border:none;border-right:solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Cubicaje total (m3)
                      </span>
                    </span>
                  </font>
                </p>

              </td>
            </tr>

            <tr>
              <td width="176" rowspan="7" colspan="2" height="39" valign="top" style='width:132.35pt;border:none;border-left:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;'>

                <p class="MsoNormal">
                  <!-- <span
										xsl:use-attribute-sets="prn-attrs">
										<xsl:value-of
											select="//*/ConsignmentMarksAndNumbers/ShippingMark" />
										&#160;
									</span> -->
                </p>

              </td>

              <td width="265" rowspan="7" colspan="3" height="39" valign="top" style='width:198.6pt;border:none;padding:0mm 1.4pt 0mm 1.4pt;'>

                <p class="MsoNormal">
                  <!-- <span
										xsl:use-attribute-sets="prn-attrs">
										<xsl:if
											test="normalize-space(//*/ConsignmentMarksAndNumbers/NumberOfPackages)">
											<xsl:value-of
												select="//*/ConsignmentMarksAndNumbers/NumberOfPackages" />
										</xsl:if>
										<xsl:if
											test="normalize-space(//*/ConsignmentMarksAndNumbers/KindOfPackages)">
											<xsl:value-of
												select="//*/ConsignmentMarksAndNumbers/KindOfPackages" />
											;
										</xsl:if>
										<xsl:value-of
											select="//*/ConsignmentMarksAndNumbers/ConsignmentDescription" />
									</span> -->
                </p>

              </td>

              <td width="88" rowspan="7" height="39" valign="top" style='width:66.2pt;border:none;padding:0mm 1.4pt 0mm 1.4pt;'>

                <p class="MsoNormal">
                  <span
										xsl:use-attribute-sets="prn-attrs">
                    <!-- <xsl:value-of
											select="//*/ConsignmentDetails/CommodityCodeType/CommodityCode" /> -->
                  </span>
                </p>

              </td>

              <td width="88" rowspan="3" height="39" valign="top" style='width:66.2pt;border:none;padding:0mm 1.4pt 0mm 1.4pt;'>

                <p class="MsoNormal">
                  <span
										xsl:use-attribute-sets="prn-attrs">
                    <!-- <xsl:value-of
											select="//*/ConsignmentTotals/GrossWeight/Measure" /> -->
                  </span>
                </p>

              </td>

              <td width="88" rowspan="7" height="39" valign="top" style='width:66.2pt;border:none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;'>

                <p class="MsoNormal">
                  <span
										xsl:use-attribute-sets="prn-attrs">
                    <!-- <xsl:value-of
											select="//*/ConsignmentTotals/Cube/Volume" /> -->
                  </span>
                </p>

              </td>
            </tr>

            <tr>

            </tr>

            <tr>

            </tr>

            <tr>

              <td width="88" height="13" valign="top" style='width:66.2pt;border:none;padding:0mm 1.4pt 0mm 1.4pt;'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Peso neto total (kg)
                      </span>
                    </span>
                  </font>
                </p>

              </td>

            </tr>

            <tr>

              <td width="88" rowspan="3" height="39" valign="top" style='width:66.2pt;border:none;padding:0mm 1.4pt 0mm 1.4pt;'>

                <p class="MsoNormal">
                  <span
										xsl:use-attribute-sets="prn-attrs">
                    <!-- <xsl:value-of
											select="//*/ConsignmentTotals/NetWeight/Measure" /> -->
                  </span>
                </p>

              </td>

            </tr>

            <tr>


            </tr>

            <tr>


            </tr>

            <tr height="13" style='height:9.95pt'>
              <td width="88" height="13" valign="top" style='width:66.15pt;border-top:solid windowtext 1.5pt;border-left:solid windowtext 1.5pt;border-bottom:none;border-right:none;mso-border-top-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Código / Detalle
                      </span>
                    </span>
                  </font>
                </p>

              </td>

              <td width="261" colspan="2" height="13" valign="top" style='width:166.05pt;border:none;mso-border-top-alt:solid windowtext 1.5pt;border-left:solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0ptmso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Descripción,
                        código del producto
                      </span>
                    </span>
                  </font>
                </p>

              </td>

              <td width="43" height="13" valign="top" style='width:32.55pt;border:none;mso-border-top-alt:solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Origen
                      </span>
                    </span>
                  </font>
                </p>

              </td>

              <td width="88" height="13" valign="top" style='width:66.2pt;border:none;border-right:solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Código del artículo
                      </span>
                    </span>
                  </font>
                </p>

              </td>

              <td width="88" height="13" valign="top" style='width:66.2pt;border:none;border-right:solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Cantidad
                      </span>
                    </span>
                  </font>
                </p>

              </td>

              <td width="88" height="13" valign="top" style='width:66.2pt;border:none;border-right:solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Precio Unitario
                      </span>
                    </span>
                  </font>
                </p>

              </td>

              <td width="88" height="13" valign="top" style='width:66.2pt;border:none;border-right:solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Importe
                      </span>
                    </span>
                  </font>
                </p>

              </td>
            </tr>

            <xsl:variable name="LineItemCnt"
							select="count(//*/LineItem)" />
            <xsl:variable name="Row_Hgt">
              <xsl:if test="$LineItemCnt = 1">260</xsl:if>
              <xsl:if test="$LineItemCnt = 2">130</xsl:if>
              <xsl:if test="$LineItemCnt = 3">86</xsl:if>
              <xsl:if test="$LineItemCnt &gt; 3">
                44
              </xsl:if>
            </xsl:variable>

            <xsl:for-each select="//*/InvoiceLine">


              <tr>
                <td width="88" height="{$Row_Hgt}" valign="top" style='width:66.15pt;border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;'>

                  <p class="MsoNormal">
                    <!-- <span
											xsl:use-attribute-sets="prn-attrs">
											<xsl:value-of
												select="./ItemID" />
											:
											<xsl:value-of
												select="./NumberOfPackages" />
											<xsl:value-of
												select="./KindOfPackages" />
										</span> -->
                  </p>

                </td>

                <td width="261" colspan="2" height="{$Row_Hgt}" valign="top" style='width:166.05pt;border:none;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;'>

                  <p class="MsoNormal">
                    <span style="font-size:0.8em;">
                      <xsl:value-of select="./ItemDescription"/>
                    </span>
                  </p>

                </td>

                <td width="43" height="{$Row_Hgt}" valign="top" style='width:32.55pt;border:none;padding:0mm 1.4pt 0mm 1.4pt;'>

                  <p class="MsoNormal">
                    <span
											xsl:use-attribute-sets="prn-attrs">
                      <!-- <xsl:value-of
												select="./CountryOfOrigin/CountryCode" /> -->
                    </span>
                  </p>

                </td>

                <td width="88" height="{$Row_Hgt}" valign="top" style='width:66.2pt;border:none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;'>

                  <p class="MsoNormal">
                    <span
											xsl:use-attribute-sets="prn-attrs">
                      <!-- <xsl:value-of
												select="./ProductInformation/CommodityCodeType" /> -->
                    </span>
                  </p>

                </td>

                <td width="88" height="{$Row_Hgt}" valign="top" style='width:66.2pt;border:none;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;'>

                  <p class="MsoNormal">
                    <span
											style="font-size:0.8em;">
                      <!-- CANTIDAD -->
                      <xsl:variable
												name="quantity">
                        <xsl:value-of
													select="./Quantity" />
                      </xsl:variable>
                      <xsl:value-of
												select="java:es.mityc.appfacturae.utils.visualize.VisualizeUtil.getValueKey($quantity)" />
                      &nbsp;
                      <xsl:variable
												name="toTranslate">
                        <xsl:value-of
													select="./UnitOfMeasure" />
                      </xsl:variable>
                      <xsl:variable
												name="traduccion"
												select="java:es.mityc.appfacturae.utils.visualize.DictionaryLoader.getTranslation('UnitOfMeasure',$toTranslate,'lang_es')" />
                      <xsl:value-of
												select="$traduccion" />
                    </span>
                  </p>

                </td>

                <td width="88" height="{$Row_Hgt}" valign="top" style='width:66.2pt;border:none;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;'>

                  <p class="MsoNormal">
                    <span
											style="font-size:0.8em;">
                      <!-- PRECIO UNITARIO -->
                      <xsl:variable
												name="UnitPriceWithoutTax">
                        <xsl:value-of
													select="./UnitPriceWithoutTax" />
                      </xsl:variable>
                      <xsl:value-of
												select="java:es.mityc.appfacturae.utils.visualize.VisualizeUtil.getValueKey($UnitPriceWithoutTax)" />
                    </span>
                  </p>

                </td>

                <td width="88" height="{$Row_Hgt}" valign="top" style='width:66.2pt;border:none;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;'>

                  <p class="MsoNormal">
                    <span
											style="font-size:0.8em;">
                      <!-- AQUI VA EL PRECIO TOTAL: CAMBIAR!!! -->
                      <xsl:variable
												name="TotalCost">
                        <xsl:value-of
													select="./TotalCost" />
                      </xsl:variable>
                      <xsl:value-of
												select="java:es.mityc.appfacturae.utils.visualize.VisualizeUtil.getValueKey($TotalCost)" />
                    </span>
                  </p>

                </td>
              </tr>



            </xsl:for-each>



            <tr height="13" style='height:9.95pt'>
              <td width="530" colspan="6" height="13" valign="top" style='width:397.15pt;border-top:solid windowtext 1.5pt;border-left:solid windowtext 1.5pt;border-bottom:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Claúsulas de la factura
                      </span>
                    </span>
                  </font>
                </p>

              </td>
              <td width="177" colspan="2" height="13" valign="top" style='width:132.4pt;border:none;border-right:solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Importe Total sin Impuestos
                      </span>
                    </span>
                  </font>
                </p>

              </td>
            </tr>

            <tr>
              <td width="530" rowspan="12" colspan="6" height="169" valign="top" style='width:397.15pt;border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoSmall" align="right">
                  <!--<xsl:if test="//*/MonetaryType = '79'">-->
                  <span
                      xsl:use-attribute-sets="prn-attrs">
                    <!-- <xsl:variable
																	name="amountBeforeTaxes">
																	<xsl:value-of
																		select="/*/Invoices/Invoice/InvoiceTotals/TotalGrossAmountBeforeTaxes" />
																</xsl:variable>
																<xsl:value-of
																	select="java:es.mityc.appfacturae.utils.visualize.VisualizeUtil.getValueKey($amountBeforeTaxes)" /> -->
                  </span>
                  <!--</xsl:if>-->
                </p>

              </td>
              <td width="177" colspan="2" height="13"
								valign="top"
								style='width:132.4pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoSmall" align="right">
                  <!--<xsl:if test="//*/MonetaryType = '79'">-->
                  <span
                    xsl:use-attribute-sets="prn-attrs">
                    <xsl:variable
                      name="amountBeforeTaxes">
                      <xsl:value-of
                        select="/*/Invoices/Invoice/InvoiceTotals/TotalGrossAmountBeforeTaxes" />
                    </xsl:variable>
                    <xsl:value-of
                      select="java:es.mityc.appfacturae.utils.visualize.VisualizeUtil.getValueKey($amountBeforeTaxes)" />
                  </span>
                  <!--</xsl:if>-->
                </p>

              </td>
            </tr>

            <tr>

              <td width="177" colspan="2" height="14" valign="top" style='width:132.4pt;border:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:10.45pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial'>
                      Descuentos
                      <o:p></o:p>
                    </span>
                  </font>
                </p>

              </td>
            </tr>

            <tr>

              <td width="177" colspan="2" height="14" valign="top" style='width:132.4pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:10.15pt'>

                <p class="MsoNormal" align="right">
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:variable
                      name="TotalGeneralDiscounts">
                      <xsl:value-of
                        select="/*/Invoices/Invoice/InvoiceTotals/TotalGeneralDiscounts" />
                    </xsl:variable>
                    <xsl:value-of
                      select="java:es.mityc.appfacturae.utils.visualize.VisualizeUtil.getValueKey($TotalGeneralDiscounts)" />
                  </span>
                </p>

              </td>
            </tr>

            <tr>

              <td width="177" colspan="2" height="14"
								valign="top"
								style='width:132.4pt;border:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:10.15pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial'>
                      Impuestos retenidos
                      <o:p></o:p>
                    </span>
                  </font>
                </p>

              </td>
            </tr>

            <tr>
              <td width="177" colspan="2" height="14" valign="top" style='width:132.4pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:10.15pt'>

                <p class="MsoNormal" align="right">
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:variable
                      name="TotalTaxesWithheld">
                      <xsl:value-of
                        select="/*/Invoices/Invoice/InvoiceTotals/TotalTaxesWithheld" />
                    </xsl:variable>
                    <xsl:value-of
                      select="java:es.mityc.appfacturae.utils.visualize.VisualizeUtil.getValueKey($TotalTaxesWithheld)" />
                  </span>
                </p>

              </td>
            </tr>

            <tr>

              <td width="177" colspan="2" height="14" valign="top" style='width:132.4pt;border:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:10.15pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial'>
                      Impuestos repercutidos
                      <o:p></o:p>
                    </span>
                  </font>
                </p>

              </td>
            </tr>

            <tr>
              <td width="177" colspan="2" height="14" valign="top" style='width:132.4pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:10.15pt'>

                <p class="MsoNormal" align="right">
                  <span
                    xsl:use-attribute-sets="prn-attrs">
                    <!--<xsl:value-of select="//*/TotalValue"/>-->
                    <!--<xsl:value-of select="//*/InvoiceTotals/CurrencyCode"/>-->
                    <xsl:variable
                      name="TotalTaxOutputs">
                      <xsl:value-of
                        select="/*/Invoices/Invoice/InvoiceTotals/TotalTaxOutputs" />
                    </xsl:variable>
                    <xsl:value-of
                      select="java:es.mityc.appfacturae.utils.visualize.VisualizeUtil.getValueKey($TotalTaxOutputs)" />
                  </span>
                </p>

              </td>
            </tr>

            <tr>
              <td width="177" colspan="2" height="14" valign="top" style='width:132.4pt;border:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:10.15pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial'>
                      Importe Total con Impuestos
                      <o:p></o:p>
                    </span>
                  </font>
                </p>

              </td>
            </tr>

            <tr>
              <td width="177" colspan="2" height="14" valign="top" style='width:132.4pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;'>

                <p class="MsoNormal" align="right">
                  <span
                    xsl:use-attribute-sets="prn-attrs">
                    <!--<xsl:value-of select="//*/TotalValue"/>-->
                    <!--<xsl:value-of select="//*/InvoiceTotals/CurrencyCode"/>-->
                    <xsl:variable
                      name="TotalExecutableAmount">
                      <xsl:value-of
                        select="/*/Invoices/Invoice/InvoiceTotals/TotalExecutableAmount" />
                    </xsl:variable>
                    <xsl:value-of
                      select="java:es.mityc.appfacturae.utils.visualize.VisualizeUtil.getValueKey($TotalExecutableAmount)" />
                  </span>
                </p>

              </td>
            </tr>

            <tr>

            </tr>

            <tr>

            </tr>

            <tr>

            </tr>

            <tr height="40">
              <td width="707" colspan="8" style='width:397.15pt;border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;'>
                <p class="MsoNormal">&#160;</p>
              </td>
            </tr>

            <tr height="13" style='height:9.95pt'>
              <td width="441" colspan="5" height="13" valign="top" style='width:330.95pt;border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  &#160;
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <o:p></o:p>
                    </span>
                  </font>
                </p>

              </td>

              <td width="265" colspan="3" height="13" valign="top" style='width:198.6pt;border-top:solid windowtext 1.5pt;border-left:none;border-bottom:none;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Nombre del firmante
                      </span>
                    </span>
                  </font>
                </p>

              </td>
            </tr>

            <tr height="13" style='height:9.95pt'>
              <td width="441" colspan="5" height="13" valign="top" style='width:330.95pt;border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  &#160;
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <o:p></o:p>
                    </span>
                  </font>
                </p>

              </td>

              <td width="265" colspan="3" height="13" valign="top" style='width:198.6pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  &#160;
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <o:p></o:p>
                    </span>
                  </font>
                </p>

              </td>
            </tr>

            <tr height="13" style='height:9.95pt'>
              <td width="441" colspan="5" height="13" valign="top" style='width:330.95pt;border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  &#160;
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <o:p></o:p>
                    </span>
                  </font>
                </p>

              </td>

              <td width="265" colspan="3" height="13" valign="top" style='width:198.6pt;border:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Lugar (+ Código ISO) y
                        fecha de la firma
                        (aaaa-mm-dd)
                      </span>
                    </span>
                  </font>
                </p>

              </td>
            </tr>

            <tr height="13" style='height:9.95pt'>
              <td width="441" colspan="5" height="13" valign="top" style='width:330.95pt;border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

              </td>

              <td width="265" colspan="3" height="13" valign="top" style='width:198.6pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <span
										xsl:use-attribute-sets="prn-attrs">
                    <!--  <xsl:value-of
											select="//*/DocumentIssue/Place" />
										&#160;
										<xsl:value-of
											select="//*/InvoiceIssueDate/" />-->
                  </span>
                </p>

              </td>
            </tr>

            <tr height="13" style='height:9.95pt'>
              <td width="441" colspan="5" height="13" valign="top" style='width:330.95pt;border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial'>
                      Por la presente se certifica que esta factura muestra el
                      precio actual de los artículos descritos, y que ninguna otra
                      factura ha sido o será firmada, y que todos los detalles son ciertos y correctos.
                      <o:p></o:p>
                    </span>
                  </font>
                </p>

              </td>

              <td width="265" colspan="3" height="13" valign="top" style='width:198.6pt;border:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <span
												style='mso-bidi-font-size:12.0pt'>
                        Firma
                      </span>
                    </span>
                  </font>
                </p>

              </td>
            </tr>

            <tr height="13" style='height:9.95pt'>
              <td width="441" colspan="5" height="13" valign="top" style='width:330.95pt;border:solid windowtext 1.5pt;border-top:none;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  &#160;
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <o:p></o:p>
                    </span>
                  </font>
                </p>

              </td>

              <td width="265" colspan="3" height="13" valign="top" style='width:198.6pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt'>

                <p class="MsoNormal">
                  &#160;
                  <font size="1" face="Arial">
                    <span
											style='font-size:7.0pt;mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial'>
                      <o:p></o:p>
                    </span>
                  </font>
                </p>

              </td>
            </tr>

            <tr height="0">
              <td width="131" style='border:none'></td>
              <td width="129" style='border:none'></td>
              <td width="196" style='border:none'></td>
              <td width="65" style='border:none'></td>
              <td width="131" style='border:none'></td>
              <td width="131" style='border:none'></td>
              <td width="130" style='border:none'></td>
              <td width="131" style='border:none'></td>
            </tr>

          </table>

          <p class="MsoNormal">
            <font size="1" face="Arial">
              <span
								style='font-size:7.5pt;mso-bidi-font-family:Arial'>
                &#160;
                <o:p></o:p>
              </span>
            </font>
          </p>

        </div>

      </body>

    </html>

  </xsl:template>
</xsl:stylesheet>
