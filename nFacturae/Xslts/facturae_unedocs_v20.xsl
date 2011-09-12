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
  <xsl:param name="invoiceType"/>
  <!-- Parametro para la inclusion de una imagen -->
  <xsl:param name="logoPath"/>

  <xsl:template match="/">
    <xsl:variable name="divisaFacturacion" select="FileHeader/Batch/InvoiceCurrencyCode"/>
    <html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office"
      xmlns:w="urn:schemas-microsoft-com:office:word" xmlns="http://www.w3.org/TR/REC-html40">

      <head>
        
        <title>FACTURA</title>
        <style> /* Style Definitions */ p.MsoNormal, li.MsoNormal, div.MsoNormal
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
          a:link , a:visited , a:active {font-size:10.0pt; display:block; font-weight:bold; background-color:#a0d7a0; color:#ffffff; width:120px; text-align:center; padding:4px; text-decoration:none;}
		  a:hover {font-size:10.0pt; background-color:#619861; color:#ffffff;}</style>
      </head>

      <body lang="ES-ES" style="tab-interval:0mm">
        <xsl:if test="$logoPath!=''">
          <div>
          	<xsl:text disable-output-escaping="yes">&lt;img src="</xsl:text>
            <xsl:value-of select="$logoPath" disable-output-escaping="yes"/>
            <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text>
          </div>
          <br/>
          <br/>
          <br/>
        </xsl:if>

        <div class="Section1">

          <table border="1" cellspacing="0" cellpadding="0" style="border-collapse:collapse; border:none;mso-border-alt:solid windowtext .5pt;mso-padding-alt:0mm 5.4pt 0mm 5.4pt">
            
            <tr height="13" style="height:9.95pt">
            
              <td width="706" colspan="10" height="13" valign="top" style="width:529.55pt;border:none;border-bottom:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <h1 align="center" style="text-align:center">
                  <b style="mso-bidi-font-weight:normal">
                    <font size="3" face="Arial">
                      <span style="font-size:12.0pt;mso-bidi-font-family: Arial;mso-bidi-font-weight:normal">
                        <xsl:variable name="toTranslate" select="*/Invoices/Invoice/InvoiceHeader/InvoiceDocumentType"/>
                        <xsl:if test="$toTranslate = 'FC'">
                          Factura Completa
                        </xsl:if>
                        <xsl:if test="$toTranslate = 'FA'">
                          Factura Abreviada
                        </xsl:if>
                        <xsl:if test="$toTranslate = 'AF'">
                          AutoFactura
                        </xsl:if>
                        <xsl:variable name="toTranslate2">
                          <xsl:value-of select="/*/Invoices/Invoice/InvoiceHeader/InvoiceClass"/>
                        </xsl:variable>
                        <xsl:if test="$toTranslate2 = 'OO'">
                          (Original)
                        </xsl:if><o:p/>
                      </span>
                    </font>
                  </b>
                </h1>
              </td>
              
            </tr>
            
            <tr height="13" style="height:9.95pt">
              
              <td width="353" colspan="4" height="13" valign="top" style="width:264.75pt;border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt"> Emisor (nombre, dirección...)</span>
                    </span>
                  </font>
                </p>
              </td>
              
              <td width="177" colspan="3" height="13" valign="top" style="width:132.4pt;border:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; height:9.95pt">
                
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Número de Factura</span>
                    </span>
                  </font>
                </p>
                
              </td>
              
              <td width="177" colspan="3" height="13" valign="top" style="width:132.4pt;border:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                
                <p class="MsoNormal">&#160;<font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial">
                      <o:p/>
                    </span>
                  </font>
                </p>
                
              </td>
              
            </tr>
            
            <tr height="13" style="height:9.95pt">
              
              <td width="353" rowspan="5" colspan="4" height="13" valign="top" style="width:264.75pt;border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                
                <p class="MsoNormal">
                  <xsl:variable name="toTranslate">
                    <xsl:value-of select="/*/Parties/SellerParty/TaxIdentification/PersonTypeCode"/>
                  </xsl:variable>
                  <xsl:if test="$toTranslate = 'F'">
                    Persona Física
                  </xsl:if>
                  <xsl:if test="$toTranslate = 'J'">
                    Persona Jurídica
                  </xsl:if>
                  <br/>                  
                  <xsl:choose>
                    <xsl:when test="/*/Parties/SellerParty/TaxIdentification/PersonTypeCode = 'F'">
                      <span xsl:use-attribute-sets="prn-attrs"><xsl:value-of
                          select="/*/Parties/SellerParty/Individual/Name"/><xsl:value-of
                          select="/*/Parties/SellerParty/Individual/FirstSurname"
                          /><xsl:value-of
                          select="/*/Parties/SellerParty/Individual/SecondSurname"/></span>
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
              
              <td width="177" colspan="3" height="13" valign="top" style="width:132.4pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of select="/*/Invoices/Invoice/InvoiceHeader/InvoiceSeriesCode"/><xsl:value-of select="/*/Invoices/Invoice/InvoiceHeader/InvoiceNumber"/>
                  </span>
                </p>
                
              </td>
              
              <td width="177" colspan="3" height="13" valign="top" style="width:132.4pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                
                <p class="MsoNormal">&#160;<font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial"><o:p/></span>
                  </font>
               </p>
               
              </td>
              
            </tr>
            
            <tr height="13" style="height:9.95pt">

              <td width="177" colspan="3" height="13" valign="top" style="width:120pt;border:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Fecha de Expedicion de la Factura (aaaa-mm-dd)</span>
                    </span>
                  </font>
                </p>
                
              </td>
              
              <td width="177" colspan="3" height="13" valign="top" style="width:132.4pt;border:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt; mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; height:9.95pt">
                
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">CIF/NIF del Emisor</span>
                    </span>
                  </font>
                </p>
                
              </td>
              
            </tr>
            
            <tr height="13" style="height:9.95pt">

              <td width="177" colspan="3" height="13" valign="top" style="width:132.4pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; height:9.95pt">
                
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of select="/*/Invoices/Invoice/InvoiceIssueData/IssueDate"/>
                  </span>
                </p>
                
              </td>
              
              <td width="177" colspan="3" height="13" valign="top" style="width:132.4pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of
                      select="/*/Parties/SellerParty/TaxIdentification/TaxIdentificationNumber"/>
                  </span>
                </p>
                
              </td>
              
            </tr>
            
            <tr height="13" style="height:9.95pt">

              <td width="177" colspan="3" height="13" valign="top" style="width:132.4pt;border:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; height:9.95pt">
                
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt; mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">CIF/NIF del Receptor</span>
                    </span>
                  </font>
                </p>
                
              </td>
              
              <td width="177" colspan="3" height="13" valign="top" style="width:132.4pt;border:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt; mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; height:9.95pt">
               
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Otro CIF/NIF</span>
                    </span>
                  </font>
                </p>
                
              </td>
              
            </tr>
            
            <tr height="13" style="height:9.95pt">

              <td width="177" colspan="3" height="13" valign="top" style="width:132.4pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt; mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; height:9.95pt">
                
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of
                      select="/*/Parties/BuyerParty/TaxIdentification/TaxIdentificationNumber"/>
                  </span>
                </p>
                
              </td>
              
              <td width="177" colspan="3" height="13" valign="top" style="width:132.4pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt; mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; height:9.95pt">
                
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs"
                  ><!--<xsl:value-of select="/*/" />--></span>
                </p>
                
              </td>
              
            </tr>
            
            <tr height="13" style="height:9.95pt">
             
              <td width="353" colspan="4" height="13" valign="top" style="width:264.75pt;border-top:solid windowtext 1.5pt;border-left:solid windowtext 1.5pt;border-bottom:none; border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt; padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Consignatario (nombre, dirección...)</span>
                    </span>
                  </font>
                </p>
                
              </td>
              
              <td width="353" colspan="6" height="13" valign="top" style="width:264.8pt;border:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt; mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt; height:9.95pt">
                
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Receptor (nombre, dirección...)</span>
                    </span>
                  </font>
                </p>
                
              </td>
              
            </tr>
            
            <tr>
            
              <td width="353" height="65" rowspan="5" colspan="4" valign="top" style="width:264.75pt; border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none; border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;">
                <p class="MsoNormal">
                  <!--<xsl:apply-templates select="/*/*/*/ConsigneeParty"/>-->
                </p>
              </td>
              
              <td width="353" height="65" rowspan="5" colspan="6" valign="top" style="width:264.8pt;border:none;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt; padding:0mm 1.4pt 0mm 1.4pt;">
                <p class="MsoNormal">
                  <xsl:variable name="toTranslate">
                    <xsl:value-of select="/*/Parties/BuyerParty/TaxIdentification/PersonTypeCode"/>
                  </xsl:variable>
                  <xsl:if test="$toTranslate = 'F'">
                    Persona Física
                  </xsl:if>
                  <xsl:if test="$toTranslate = 'J'">
                    Persona Jurídica
                  </xsl:if> 
                  <xsl:variable name="toTranslate2">
                    <xsl:value-of select="/*/Parties/BuyerParty/TaxIdentification/ResidenceTypeCode"
                    />
                  </xsl:variable>
                  <xsl:if test="$toTranslate2 = 'R'">
                    Residente
                  </xsl:if>
                  <xsl:if test="toTranslate2 = 'E'">
                    Extranjero
                  </xsl:if>
                  <xsl:if test="toTranslate2 = 'U'">
                    Residente Unión Europea
                  </xsl:if>
                  <br/>
                  <xsl:choose>
                    <xsl:when test="/*/Parties/BuyerParty/TaxIdentification/PersonTypeCode = 'F'">
                      <span xsl:use-attribute-sets="prn-attrs"><xsl:value-of
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
            
              <td width="353" colspan="4" height="13" valign="top" style="width:264.75pt;border-top:solid windowtext 1.5pt;none;border-left:solid windowtext 1.5pt;border-bottom:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;">
                
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial"
                      >Promotor de la carga</span>
                  </font>
                  <span style="mso-bidi-font-family:Arial"> (nombre, dirección...) </span>
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial"></span>
                  </font>
                  <span style="mso-bidi-font-family:Arial"></span>
                  <span style="mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial">
                    <o:p/>
                  </span>
                </p>
              </td>
              
              <td width="353" colspan="6" height="13" valign="top" style="width:264.8pt;border:none;border-right:solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;">
                
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial"
                      >Referencia única del envío<o:p/></span>
                  </font>
                </p>
                
              </td>
              
            </tr>
            
            <tr height="13" style="height:9.95pt">
              
              <td width="353" rowspan="5" colspan="4" height="13" valign="top" style="width:264.75pt;border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <!--<xsl:apply-templates select="/*/*/*/FreightForwarderParty"/>-->
                </p>
              </td>
              
              <td width="353" colspan="6" height="13" valign="top" style="width:264.8pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs"
                    ><!--<xsl:value-of select="//*/UniqueConsignmentReference" />--></span>
                </p>
              </td>
              
            </tr>
            
            <tr height="13" style="height:9.95pt">

              <td width="88" height="13" valign="top"
                style="width:66.2pt;border:none;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">País de origen</span>
                    </span>
                  </font>
                </p>
              </td>
              
              <td colspan="2" width="88" height="13" valign="top" style="width:66.2pt;border-top:solid windowtext 1.5pt;border-left:none;border-bottom:none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal" align="right" style="text-align:right">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Código ISO</span>
                    </span>
                  </font>
                </p>
              </td>
              
              <td width="177" colspan="3" height="13" valign="top" style="width:132.4pt;border-top:solid windowtext 1.5pt;border-left:none;border-bottom:none;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                
                <p class="MsoNormal" align="left" style="text-align:left">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">País de destino<span style="mso-spacerun: yes"
                          >&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</span>Código ISO</span>
                    </span>
                    <br/>
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt"><span style="mso-spacerun: yes">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
                      </span></span>
                    </span>
                  </font>
                </p>

              </td>
              
            </tr>
            
            <tr height="13" style="height:9.95pt">

              <td width="88" height="13" colspan="3" valign="top" style="width:66.2pt;border:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of select="/*/Parties/SellerParty/*/*/CountryCode"/>
                  </span>
                </p>
                
              </td>
              
              <td width="88" height="13" colspan="3" valign="top" style="width:66.2pt;border:none;border-bottom:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of select="/*/Parties/BuyerParty/*/*/CountryCode"/>
                  </span>
                </p>
              </td>
              
            </tr>
            
            <tr height="13" style="height:9.95pt">

              <td width="177" colspan="3" height="13" valign="top" style="width:132.4pt;border:none;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
               
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Plazos de entrega</span>
                    </span>
                  </font>
                </p>
                
              </td>
              
              <td width="177" colspan="3" height="13" valign="top" style="width:132.4pt;border:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Localización relevante</span>
                    </span>
                  </font>
                </p>
                
              </td>
              
            </tr>
            
            <tr height="13" style="height:9.95pt">

              <td width="177" rowspan="3" colspan="3" height="13" valign="top" style="width:132.4pt;border:none;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
               
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs"
                    ><!--<xsl:value-of select="//*/TermsOfDelivery/DeliveryTermsCoded" />--></span>&#160;
                    <span xsl:use-attribute-sets="prn-attrs"
                    ><!--<xsl:value-of select="//*/TermsOfDelivery/DeliveryTermsDescription" />--></span>
                </p>
                
              </td>
              
              <td width="177" rowspan="3" colspan="3" height="13" valign="top" style="width:132.4pt;border:none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs"
                    ><!--<xsl:value-of select="//*/TermsOfDelivery/DeliveryTermLocation" />--></span>
                </p>
              </td>
              
            </tr>
            
            <tr height="13" style="height:9.95pt">
            
              <td width="353" colspan="4" height="13" valign="top" style="width:264.75pt;border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">&#160;<font size="1" face="Arial">
                    <span
                      style="font-size:7.0pt;mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial">
                      <o:p/>
                    </span>
                  </font>
               </p>
              </td>

            </tr>
            
            <tr height="13" style="height:9.95pt">
              
              <td width="353" colspan="4" height="13" valign="top" style="width:264.75pt;border:solid windowtext 1.5pt;border-top:none;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">&#160;<font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial">
                      <o:p/>
                    </span>
                  </font>
                </p>
              </td>

            </tr>
            
            <tr height="13" style="height:9.95pt">
              
              <td width="176" colspan="2" height="13" valign="top" style="width:132.35pt;border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Medio de transporte</span>
                    </span>
                  </font>
                </p>
                
              </td>
              
              <td width="177" colspan="2" height="13" valign="top" style="width:132.4pt;border:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Puerto/aeropuerto de carga<span style="mso-spacerun: yes"
                        >&#160;&#160;</span>UN/LOCODE</span>
                    </span>
                  </font>
                </p>
                
              </td>
              
              <td width="177" colspan="3" height="13" valign="top" style="width:132.4pt;border:none;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
               
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Plazos de pago</span>
                    </span>
                  </font>
                </p>
                
              </td>
              
              <td width="177" colspan="3" height="13" valign="top" style="width:132.4pt;border:none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Divisa de pago</span>
                    </span>
                  </font>
                </p>
                
              </td>
              
            </tr>
            
            <tr height="13" style="height:9.95pt">
              
              <td width="176" colspan="2" height="13" valign="top" style="width:132.35pt;border:solid windowtext 1.5pt;border-top:none;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs"
                    ><!--<xsl:value-of select="//*/TransportMeans" />-->&#160;<!--<xsl:value-of select="//*/TransportMode/TransportModeCode" />--></span>
                </p>
              </td>
              
              <td width="177" colspan="2" height="13" valign="top"
                style="width:132.4pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs"
                    ><!--<xsl:value-of select="//*/PortOfLoading/LoadingLocationID" />-->&#160;
                      <xsl:value-of select="//*/PortOfLoading/LoadingLocationName"/></span>
                </p>
              </td>
              
              <td width="177" rowspan="3" colspan="3" height="13" valign="top" style="width:132.4pt;border:none;mso-border-left-alt:solid windowtext 1.5pt;border-bottom:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs"
                    ><!--<xsl:value-of select="//*/TermsOfPayment/PaymentTermsCode" />--></span>&#160;
                    <span xsl:use-attribute-sets="prn-attrs"
                    ><!--<xsl:value-of select="//*/TermsOfPayment/PaymentTermsText" />--></span>
                </p>
              </td>
              
              <td width="177" rowspan="3" colspan="3" height="13" valign="top"
                style="width:132.4pt;border:none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:value-of select="//*/Batch/InvoiceCurrencyCode"/>
                  </span>&#160; </p>
              </td>
              
            </tr>
            
            <tr height="13" style="height:9.95pt">
             
              <td width="176" colspan="2" height="13" valign="top" style="width:150pt;border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Puerto/aeropuerto de descarga<span style="mso-spacerun: yes"/>&#160;&#160;UN/LOCODE</span>
                    </span>
                  </font>
                </p>
              </td>
              
              <td width="177" colspan="2" height="13" valign="top" style="width:132.4pt;border:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Lugar final de la entrega<span style="mso-spacerun: yes"
                        >&#160;&#160;</span>UN/LOCODE </span>
                    </span>
                  </font>
                </p>
              </td>
              
            </tr>
            
            <tr height="13" style="height:9.95pt">
              
              <td width="176" colspan="2" height="13" valign="top" style="width:132.35pt;border:solid windowtext 1.5pt;border-top:none;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs"
                    ><!--<xsl:value-of select="//*/DischargeLocationID" />-->&#160;
                    <!--<xsl:value-of select="//*/DischargeLocationName" />--></span>&#160; </p>
              </td>
              
              <td width="177" colspan="2" height="13" valign="top" style="width:132.4pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs"
                    ><!--<xsl:value-of select="//*/DeliveryLocationID" />-->&#160;
                    <!--<xsl:value-of select="//*/DeliveryLocationName" />--></span>&#160; 
               </p>
              </td>

            </tr>

            <tr height="13" style="height:9.95pt">

              <td width="88" height="13" valign="top" style="width:66.2pt;border:none;border-right:solid windowtext 1.5pt;border-left:solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Código del Detalle</span>
                    </span>
                  </font>
                </p>
                
              </td>

              <td width="88" height="13" valign="top" style="width:76.2pt;border:none;border-right:solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Descripción del Detalle</span>
                    </span>
                  </font>
                </p>
              </td>

              <td width="50" height="13" valign="top" style="width:66.2pt;border:none;border-right:solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Cantidad</span>
                    </span>
                  </font>
                </p>
              </td>

              <td width="50" height="13" valign="top" style="width:66.2pt;border:none;border-right:solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Precio Unitario</span>
                    </span>
                  </font>
                </p>
              </td>

              <td width="88" height="13" valign="top"
                style="width:66.2pt;border:none;border-right:solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Porcentaje del Descuento</span>
                    </span>
                  </font>
                </p>
              </td>

              <td width="88" height="13" valign="top"
                style="width:66.2pt;border:none;border-right:solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Total sin Impuestos
                      </span>
                    </span>
                  </font>
                </p>
              </td>

              <td width="88" height="13" valign="top" style="width:66.2pt;border:none;border-right:solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Tipo de Impuesto</span>
                    </span>
                  </font>
                </p>
              </td>

              <td width="88" height="13" valign="top" style="width:66.2pt;border:none;border-right:solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Porcentaje del Impuesto</span>
                    </span>
                  </font>
                </p>
              </td>

              <td width="88" height="13" valign="top" style="width:66.2pt;border:none;border-right:solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Fecha de Devengo</span>
                    </span>
                  </font>
                </p>
              </td>

              <td width="88" height="13" valign="top" style="width:66.2pt;border:none;border-right:solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Impuestos</span>
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

                <td width="88" height="{$Row_Hgt}" valign="top" style="width:66.15pt;border-top:none;border-left:solid windowtext 1.5pt;border-bottom:none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;">
                  
                  <p class="MsoSmall" align="right">
                    <span style="font-size:0.8em;">
                      <xsl:variable name="nombreArticulo" select="./ItemDescription"/>
                      <xsl:variable name="divisa" select="/*/FileHeader/Batch/InvoiceCurrencyCode"/>
                    </span>
                  </p>
                  
                </td>

                <td width="261" height="{$Row_Hgt}" valign="top" style="width:166.05pt;border:none;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;">
                 
                  <p class="MsoSmall">
                    <span style="font-size:0.8em;">
                      <!-- DESCRIPCION DETALLE -->
                      <xsl:value-of select="./ItemDescription"/>
                    </span>
                  </p>
                  
                </td>

                <td width="50" height="{$Row_Hgt}" valign="top" style="width:66.2pt;border:none;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;">

                  <p class="MsoSmall" align="right">
                    <span style="font-size:0.8em;">
                      <!-- CANTIDAD -->
                      <xsl:variable name="quantity"><xsl:value-of select="./Quantity"/></xsl:variable>
                      <xsl:value-of select="$quantity"/>  <xsl:variable
                        name="toTranslate">
                        <xsl:value-of select="./UnitOfMeasure"/>
                      </xsl:variable>
                      <!--<xsl:variable name="traduccion"
                        select="java:es.mityc.appfacturae.utils.visualize.DictionaryLoader.getTranslation('UnitOfMeasure',$toTranslate,'lang_es')"
                      />
                      <xsl:value-of select="$traduccion"/>-->
                    </span>
                  </p>
                  
                </td>

                <td width="88" height="{$Row_Hgt}" valign="top" style="width:66.2pt;border:none;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;">
                  <p class="MsoSmall" align="right">
                    <span style="font-size:0.8em;">
                      <!-- PRECIO UNITARIO -->
                      <xsl:variable name="UnitPriceWithoutTax"><xsl:value-of select="./UnitPriceWithoutTax"/></xsl:variable>
                      <xsl:value-of select="$UnitPriceWithoutTax"/>
                    </span>
                  </p>
                </td>

                <td width="88" height="{$Row_Hgt}" valign="top" style="width:66.2pt;border:none;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;">
                  <p class="MsoSmall" align="right">
                    <span style="font-size:0.8em;">
                      <xsl:variable name="discountRate"><xsl:value-of select="./DiscountsAndRebates/Discount/DiscountRate"/></xsl:variable>
                      <xsl:value-of select="$discountRate"/>
                      <!-- DESCUENTO -->
                    </span>
                  </p>
                </td>

                <td width="88" height="{$Row_Hgt}" valign="top" style="width:66.2pt;border:none;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;">
                  <p class="MsoSmall" align="right">
                    <span style="font-size:0.8em;">
                      <!-- TOTAL SIN IVA -->
                      <xsl:choose>
                        <xsl:when test="$divisaFacturacion='EUR'">
                          <xsl:variable name="taxableBase"><xsl:value-of select="./TaxesOutputs/Tax/TaxableBase"/></xsl:variable>
                          <xsl:value-of select="$taxableBase"/>
                        </xsl:when>
                        <xsl:otherwise>
                          <xsl:variable name="totalAmount"><xsl:value-of select="./TaxesOutputs/Tax/TaxableBase/TotalAmount"/></xsl:variable>
                          <xsl:value-of select="$totalAmount"/>
                        </xsl:otherwise>
                      </xsl:choose>
                    </span>
                  </p>
                </td>

                <td width="88" height="{$Row_Hgt}" valign="top" style="width:66.2pt;border:none;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;">
                   <xsl:for-each select="./TaxesOutputs/Tax">
					<p class="MsoSmall" align="center">
                    <span style="font-size:0.8em;">
                      <!-- CLASE IMPUESTO -->
                      <xsl:variable name="toTranslate">
                        <xsl:value-of select="./TaxTypeCode"/>
                      </xsl:variable>
                      <xsl:if test="$toTranslate = '01'">
                        IVA
                      </xsl:if>
                      <xsl:if test="$toTranslate = '02'">
                        IPSI
                      </xsl:if>
                      <xsl:if test="$toTranslate = '03'">
                        IGIC
                      </xsl:if>
					</span>
                 	</p>
                   </xsl:for-each>
                </td>

                <td width="88" height="{$Row_Hgt}" valign="top" style="width:66.2pt;border:none;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;">
                  <xsl:for-each select="./TaxesOutputs/Tax">
                  <p class="MsoSmall" align="right">
                    <span style="font-size:0.8em;">
                      <!-- PORCENTAJE IMPUESTO -->
                      <xsl:variable name="taxRate"><xsl:value-of select="./TaxRate"/></xsl:variable>
                      <xsl:value-of select="$taxRate"/>
                    </span>
                  </p>
                  </xsl:for-each>
                </td>

                <td width="88" height="{$Row_Hgt}" valign="top" style="width:66.2pt;border:none;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;">
                  <p class="MsoSmall" align="center">
                    <span style="font-size:0.8em;">
                      <!-- FECHA DE DEVENGO -->
                      <xsl:value-of select="./TransactionDate"/>
                    </span>
                  </p>
                </td>

                <td width="88" height="{$Row_Hgt}" valign="top" style="width:66.2pt;border:none;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;">
                 <xsl:for-each select="./TaxesOutputs/Tax">
                  <p class="MsoSmall" align="right">
                    <span style="font-size:0.8em;">
                      <xsl:variable name="taxAmount"><xsl:value-of select="./TaxAmount"/></xsl:variable>
                      <xsl:value-of select="$taxAmount"/>
                    </span>
                  </p>
                  </xsl:for-each>
                </td>
              </tr>

            </xsl:for-each>

            <tr height="13" style="height:9.95pt">
            
              <td width="530" colspan="8" height="13" valign="top" style="width:397.15pt;border-top:solid windowtext 1.5pt;border-left:none;border-bottom:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt"> </td>
             
              <td width="177" colspan="2" height="13" valign="top" style="width:132.4pt;border:none;border-right:solid windowtext 1.5pt;border-top:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-family:Arial">
                      <span style="mso-bidi-font-size:12.0pt">Importe Total sin Impuestos</span>
                    </span>
                  </font>
                </p>
              </td>
              
            </tr>
            
            <tr>
            
              <td width="530" rowspan="12" colspan="8" height="169" valign="top" style="width:397.15pt;border-top:none;border-left:none;border-bottom:none;border-right:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoNormal">
                  <span xsl:use-attribute-sets="prn-attrs"
                    ><!--<xsl:value-of select="//*/DocumentDeclarations/"/>--></span>
                </p>
              </td>
              
              <td width="177" colspan="2" height="13" valign="top" style="width:132.4pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:9.95pt">
                <p class="MsoSmall" align="right">
                  <!--<xsl:if test="//*/MonetaryType = '79'">-->
                  <span xsl:use-attribute-sets="prn-attrs">
                    <xsl:variable name="amountBeforeTaxes"><xsl:value-of select="/*/Invoices/Invoice/InvoiceTotals/TotalGrossAmountBeforeTaxes"/></xsl:variable>
                    <xsl:value-of select="$amountBeforeTaxes"/>                    
                  </span>
                  <!--</xsl:if>-->
                </p>
              </td>
              
            </tr>

            <tr>

              <td width="177" colspan="2" height="14" valign="top" style="width:132.4pt;border:none;border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;height:10.15pt">
                <p class="MsoNormal">
                  <font size="1" face="Arial">
                    <span style="font-size:7.0pt;mso-bidi-font-size:7.0pt;mso-bidi-font-family:Arial"
                      >Importe Total con Impuestos<o:p/></span>
                  </font>
                </p>
              </td>
              
            </tr>
            
            <tr>

              <td width="177" colspan="2" height="14" valign="top" style="width:132.4pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;padding:0mm 1.4pt 0mm 1.4pt;">
                <p class="MsoNormal" align="right">
                  <span xsl:use-attribute-sets="prn-attrs">
                    <!--<xsl:value-of select="//*/TotalValue"/>-->
                    <!--<xsl:value-of select="//*/InvoiceTotals/CurrencyCode"/>-->
                    <xsl:variable name="TotalExecutableAmount"><xsl:value-of select="/*/Invoices/Invoice/InvoiceTotals/TotalExecutableAmount"/></xsl:variable>
                    <xsl:value-of select="$TotalExecutableAmount"/>
                  </span>
                </p>
              </td>
              
            </tr>

          </table>

          <p class="MsoNormal">
            <font size="1" face="Arial">
              <span style="font-size:7.5pt;mso-bidi-font-family:Arial">&#160;<o:p/></span>
            </font>
          </p>

        </div>

      </body>

    </html>

  </xsl:template>
</xsl:stylesheet>
