<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:java="http://xml.apache.org/xslt/java" extension-element-prefixes="java" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
  <xsl:decimal-format grouping-separator="." decimal-separator=","/>
  <xsl:output method="html" indent="yes"/>
  <!-- Declaración del atributo prn-attrs -->
  <xsl:attribute-set name="prn-attrs">
    <xsl:attribute name="style"></xsl:attribute>
  </xsl:attribute-set>
  <!-- Parametro para la inclusion de una imagen -->
  <xsl:param name="logoPath"/>
  <xsl:param name="numberFormat"/>
  <xsl:template match="/">
    <xsl:variable name="divisaFacturacion" select="FileHeader/Batch/InvoiceCurrencyCode"/>
    <html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:w="urn:schemas-microsoft-com:office:word" xmlns="http://www.w3.org/TR/REC-html40">
      <head>
        <title>Invoice</title>
        <style>
          html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, 		ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td {margin: 0;padding: 0;border: 0;outline: 0;font-size: 100%;vertical-align: baseline;background: transparent;}
          body{padding:0;	text-align:center; margin:0 auto; text-align:center; line-height:1;	font-size: 62.5%;}
          html, body{	margin:0; height:100%; padding:25px;}
          ol, ul {list-style: none;}
          blockquote, q {quotes: none;}
          blockquote:before, blockquote:after, q:before, q:after {content: '';content: none;}
          :focus {outline: 0;}
          ins {text-decoration: none;}
          del {text-decoration: line-through;}
          table {border-collapse: collapse;border-spacing: 0; border:solid 0px #ccc;}
          .Section1{}
          .encabezado{font:700 1.4em Arial, Helvetica, sans-serif !important; border:solid 1px #ccc; border-width:1px; color:#444;text-align:left;}
          .encabezadototal{ background:#ccc; font-weight:700 !important;}
          span{font:normal 10px Arial, Helvetica, sans-serif; padding:5px; float:left; width:100%;}
          span.no-margin{font:italic 10px Arial, Helvetica, sans-serif; padding:0 5px; float:left; width:100%; margin:0 0 0 0;}
          p{font:normal 12px "Courier New", Courier, monospace; padding:3px; text-align:left;}
          h1.type{text-align:center; font:700 1.5em Arial, Helvetica, sans-serif; color:#333; padding:10px 0; border:solid 1px #ccc; border-width:1px 1px 0 1px;}
          .brd-right{ border-right:solid 1px #ccc;}
          .brd-bottom{ border-bottom:solid 1px #ccc;}
          .brd-right-left{ border-right:solid 1px #ccc; border-left:solid 1px #ccc;}
          .center{ text-align:center !important;}
          .right{ text-align:right !important;}
          p.total{ font:700 1.4em Arial, Helvetica, sans-serif !important; text-align:right;}
          .content-firma{ padding:20px 228px 0 0; float:left;}
          }
        </style>
      </head>
      <body lang="ES-ES" style="tab-interval:0mm">
        <div class="Section1">
          <table border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td colspan="5">
                <xsl:if test="$logoPath!=''">
                  <xsl:text disable-output-escaping="yes">&lt;img src="</xsl:text>
                  <xsl:value-of select="$logoPath" disable-output-escaping="yes"/>
                  <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text>
                </xsl:if>
              </td>
              <td colspan="5">
                <h1 class="type">
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
                  </xsl:if>
                  <o:p/>
                </h1>
              </td>
            </tr>
            <tr>
              <td colspan="5" class="encabezado">
                <span>Nº de factura</span>
              </td>
              <td class="encabezado" colspan="5">
                <span>Fecha de expedición de la factura (aaaa-mm-dd)</span>
              </td>
            </tr>
            <tr>
              <td colspan="5" class="brd-right-left">
                <p>
                  <xsl:value-of select="/*/Invoices/Invoice/InvoiceHeader/InvoiceSeriesCode"/>&#160;
                  <xsl:value-of select="/*/Invoices/Invoice/InvoiceHeader/InvoiceNumber"/>
                </p>
              </td>
              <td class="brd-right-left" colspan="5">
                <p>
                  <xsl:value-of select="/*/Invoices/Invoice/InvoiceIssueData/IssueDate"/>
                </p>
              </td>
            </tr>
            <tr>
              <td class="encabezado" colspan="5">
                <span>CIF / NIF del emisor</span>
              </td>
              <td class="encabezado" colspan="5">
                <span>CIF / NIF del receptor</span>
              </td>
            </tr>
            <tr>
              <td class="brd-right-left" colspan="5">
                <p>
                  <xsl:value-of select="/*/Parties/SellerParty/TaxIdentification/TaxIdentificationNumber"/>
                </p>
              </td>
              <td class="brd-right-left" colspan="5">
                <p>
                  <xsl:value-of select="/*/Parties/BuyerParty/TaxIdentification/TaxIdentificationNumber"/>
                </p>
              </td>
            </tr>
            <tr>
              <td colspan="5" class="encabezado">
                <span>Emisor (nombre, dirección...)</span>
                <span class="no-margin">
                  <xsl:variable name="toTranslate">
                    <xsl:value-of select="/*/Parties/SellerParty/TaxIdentification/PersonTypeCode"/>
                  </xsl:variable>
                  <xsl:if test="$toTranslate = 'F'">Persona Física</xsl:if>
                  <xsl:if test="$toTranslate = 'J'">Persona Jurídica</xsl:if>
                </span>
              </td>
              <td colspan="5" class="encabezado">
                <span>Receptor (nombre, dirección...)</span>
                <span class="no-margin">
                  <xsl:variable name="toTranslate">
                    <xsl:value-of select="/*/Parties/BuyerParty/TaxIdentification/PersonTypeCode"/>
                  </xsl:variable>
                  <xsl:if test="$toTranslate = 'F'">Persona Física</xsl:if>
                  <xsl:if test="$toTranslate = 'J'">Persona Jurídica</xsl:if>
                </span>
              </td>
            </tr>
            <tr>
              <td colspan="5" class="brd-right-left">
                <p>
                  <xsl:choose>
                    <xsl:when test="/*/Parties/SellerParty/TaxIdentification/PersonTypeCode = 'F'">
                      <xsl:value-of
                        select="/*/Parties/SellerParty/Individual/Name"/>&#160;
                      <xsl:value-of select="/*/Parties/SellerParty/Individual/FirstSurname"/>&#160;
                      <xsl:value-of select="/*/Parties/SellerParty/Individual/SecondSurname"/>
                    </xsl:when>
                    <xsl:when test="/*/Parties/SellerParty/TaxIdentification/PersonTypeCode = 'J'">
                      <xsl:value-of select="/*/Parties/SellerParty/LegalEntity/CorporateName"/>
                    </xsl:when>
                  </xsl:choose>
                </p>
                <p>
                  <xsl:value-of select="/*/Parties/SellerParty/*/*/Address"/>
                </p>
                <p>
                  <xsl:value-of select="/*/Parties/SellerParty/*/*/PostCodeAndTown"/>
                </p>
                <p>
                  <xsl:value-of select="/*/Parties/SellerParty/*/*/Province"/>
                </p>
                <p>
                  <xsl:value-of select="/*/Parties/SellerParty/*/*/CountryCode"/>
                </p>
              </td>
              <td colspan="5" class="brd-right">
                <p>
                  <xsl:choose>
                    <xsl:when test="/*/Parties/BuyerParty/TaxIdentification/PersonTypeCode = 'F'">
                      <xsl:value-of
                        select="/*/Parties/BuyerParty/Individual/Name"/>&#160;
                      <xsl:value-of select="/*/Parties/BuyerParty/Individual/FirstSurname"/>&#160;
                      <xsl:value-of select="/*/Parties/BuyerParty/Individual/SecondSurname"/>
                    </xsl:when>
                    <xsl:when test="/*/Parties/BuyerParty/TaxIdentification/PersonTypeCode = 'J'">
                      <xsl:value-of select="/*/Parties/BuyerParty/LegalEntity/CorporateName"/>
                    </xsl:when>
                  </xsl:choose>
                </p>
                <p>
                  <xsl:value-of select="/*/Parties/BuyerParty/*/*/Address"/>
                </p>
                <p>
                  <xsl:value-of select="/*/Parties/BuyerParty/*/*/PostCodeAndTown"/>
                </p>
                <p>
                  <xsl:value-of select="/*/Parties/BuyerParty/*/*/Province"/>
                </p>
                <p>
                  <xsl:value-of select="/*/Parties/BuyerParty/*/*/CountryCode"/>
                </p>
              </td>
            </tr>
            <tr>
              <td colspan="4" class="encabezado">
                <span>País de origen</span>
              </td>
              <td colspan="4" class="encabezado">
                <span>País de destino</span>
              </td>
              <td colspan="2" class="encabezado">
                <span>Divisa de pago</span>
              </td>
            </tr>
            <tr>
              <td colspan="4" class="brd-right-left">
                <p>
                  <xsl:value-of select="/*/Parties/SellerParty/*/*/CountryCode"/>
                </p>
              </td>
              <td colspan="4" class="brd-right">
                <p>
                  <xsl:value-of select="/*/Parties/BuyerParty/*/*/CountryCode"/>
                </p>
              </td>
              <td colspan="2" class="brd-right-left">
                <p>
                  <xsl:value-of select="//*/Batch/InvoiceCurrencyCode"/>
                </p>
              </td>
            </tr>

            <!-- FILA ENCABEZADO -->
            <tr>
              <td class="encabezado">
                <span>Código del detalle</span>
              </td>
              <td class="encabezado">
                <span>Descripción del detalle</span>
              </td>
              <td class="encabezado">
                <span>Cantidad</span>
              </td>
              <td class="encabezado">
                <span>Precio unitario</span>
              </td>
              <td class="encabezado">
                <span>Porcentaje del descuento</span>
              </td>
              <td class="encabezado">
                <span>Total sin impuestos</span>
              </td>
              <td class="encabezado">
                <span>Tipo de impuesto</span>
              </td>
              <td class="encabezado">
                <span>Porcentaje del impuesto</span>
              </td>
              <td class="encabezado">
                <span>Fecha de devengo</span>
              </td>
              <td class="encabezado">
                <span>Impuestos</span>
              </td>
            </tr>
            <xsl:for-each select="//*/InvoiceLine">
              <tr>
                <td class="brd-right-left center brd-bottom">
                  <p class="center">
                    <xsl:variable name="nombreArticulo" select="./ItemDescription"/>
                    <xsl:variable name="divisa" select="/*/FileHeader/Batch/InvoiceCurrencyCode"/>
                  </p>
                </td>
                <td class="brd-right brd-bottom">
                  <p>
                    <xsl:value-of select="./ItemDescription"/>
                  </p>
                </td>
                <td class="brd-right brd-bottom">
                  <p class="center">
                    <xsl:variable name="quantity">
                      <xsl:value-of select="./Quantity"/>
                    </xsl:variable>
                    <xsl:value-of select="$quantity"/>
                    <xsl:variable
                      name="toTranslate">
                      <xsl:value-of select="./UnitOfMeasure"/>
                    </xsl:variable>
                    <xsl:if test="$toTranslate = '01'">
                      Unidades
                    </xsl:if>
                    <xsl:if test="$toTranslate = '02'">
                      Horas-HUR
                    </xsl:if>
                    <xsl:if test="$toTranslate = '03'">
                      Kilogramos-KGM
                    </xsl:if>
                    <xsl:if test="$toTranslate = '04'">
                      Litros-LTR
                    </xsl:if>
                    <xsl:if test="$toTranslate = '05'">
                      Otros
                    </xsl:if>
                    <xsl:if test="$toTranslate = '06'">
                      Cajas
                    </xsl:if>
                    <xsl:if test="$toTranslate = '07'">
                      Bandejas
                    </xsl:if>
                  </p>

                </td>
                <td class="brd-right brd-bottom">
                  <p class="right">
                    <xsl:variable name="UnitPriceWithoutTax">
                      <xsl:value-of select="./UnitPriceWithoutTax"/>
                    </xsl:variable>
                    <xsl:if test="$numberFormat!=''">
                      <xsl:value-of select='format-number($UnitPriceWithoutTax, $numberFormat)' />
                    </xsl:if>
                    <xsl:if test="$numberFormat=''">
                      <xsl:value-of select='$UnitPriceWithoutTax' />
                    </xsl:if>
                  </p>
                </td>
                <td class="brd-right brd-bottom">
                  <p class="right">
                    <xsl:variable name="discountRate">
                      <xsl:value-of select="./DiscountsAndRebates/Discount/DiscountRate"/>
                    </xsl:variable>
                    <xsl:if test="$numberFormat!='' and $discountRate!=''">
                      <xsl:value-of select='format-number($discountRate, $numberFormat)' />
                    </xsl:if>
                    <xsl:if test="$numberFormat=''">
                      <xsl:value-of select='$discountRate' />
                    </xsl:if>
                  </p>
                </td>
                <td class="brd-right brd-bottom">
                  <p class="right">
                    <xsl:choose>
                      <xsl:when test="$divisaFacturacion='EUR'">
                        <xsl:variable name="taxableBase">
                          <xsl:value-of select="./TaxesOutputs/Tax/TaxableBase"/>
                        </xsl:variable>
                        <xsl:if test="$numberFormat!=''">
                          <xsl:value-of select='format-number($taxableBase, $numberFormat)' />
                        </xsl:if>
                        <xsl:if test="$numberFormat=''">
                          <xsl:value-of select='$taxableBase' />
                        </xsl:if>
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:variable name="totalAmount">
                          <xsl:value-of select="./TaxesOutputs/Tax/TaxableBase/TotalAmount"/>
                        </xsl:variable>
                        <xsl:if test="$numberFormat!=''">
                          <xsl:value-of select='format-number($totalAmount, $numberFormat)' />
                        </xsl:if>
                        <xsl:if test="$numberFormat=''">
                          <xsl:value-of select='$totalAmount' />
                        </xsl:if>
                      </xsl:otherwise>
                    </xsl:choose>
                  </p>
                </td>
                <td class="brd-right brd-bottom">
                  <p class="center">
                    <xsl:for-each select="./TaxesOutputs/Tax">
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
                    </xsl:for-each>
                  </p>
                </td>
                <td class="brd-right brd-bottom">
                  <p class="right">
                    <xsl:for-each select="./TaxesOutputs/Tax">
                      <xsl:variable name="taxRate">
                        <xsl:value-of select="./TaxRate"/>
                      </xsl:variable>
                      <xsl:if test="$numberFormat!=''">
                        <xsl:value-of select='format-number($taxRate, $numberFormat)' />
                      </xsl:if>
                      <xsl:if test="$numberFormat=''">
                        <xsl:value-of select='$taxRate' />
                      </xsl:if>
                    </xsl:for-each>
                  </p>
                </td>
                <td class="brd-right brd-bottom">
                  <p class="center">
                    <xsl:value-of select="./TransactionDate"/>
                  </p>
                </td>
                <td class="brd-right brd-bottom">
                  <p class="right">
                    <xsl:for-each select="./TaxesOutputs/Tax">
                      <xsl:variable name="taxAmount">
                        <xsl:value-of select="./TaxAmount"/>
                      </xsl:variable>
                      <xsl:if test="$numberFormat!=''">
                        <xsl:value-of select='format-number($taxAmount, $numberFormat)' />
                      </xsl:if>
                      <xsl:if test="$numberFormat=''">
                        <xsl:value-of select='$taxAmount' />
                      </xsl:if>
                    </xsl:for-each>
                  </p>
                </td>
              </tr>
            </xsl:for-each>
            <!-- FILA ENCABEZADO TOTAL -->
            <tr>
              <td colspan="8"></td>
              <td class="encabezado">
                <span>Importe total sin impuestos</span>
              </td>
              <td class="encabezado">
                <span>Importe total con impuestos</span>
              </td>
            </tr>
            <!-- FILA RESULTADO TOTAL -->
            <tr>
              <td colspan="8"></td>
              <td class="brd-right-left brd-bottom">
                <p class="total">
                  <xsl:variable name="amountBeforeTaxes">
                    <xsl:value-of select="/*/Invoices/Invoice/InvoiceTotals/TotalGrossAmountBeforeTaxes"/>
                  </xsl:variable>
                  <xsl:if test="$numberFormat!=''">
                    <xsl:value-of select='format-number($amountBeforeTaxes, $numberFormat)' />
                  </xsl:if>
                  <xsl:if test="$numberFormat=''">
                    <xsl:value-of select='$amountBeforeTaxes' />
                  </xsl:if>
                </p>
              </td>
              <td class="brd-right brd-bottom">
                <p class="total">
                  <xsl:variable name="TotalExecutableAmount">
                    <xsl:value-of select="/*/Invoices/Invoice/InvoiceTotals/TotalExecutableAmount"/>
                  </xsl:variable>
                  <xsl:if test="$numberFormat!=''">
                    <xsl:value-of select='format-number($TotalExecutableAmount, $numberFormat)' />
                  </xsl:if>
                  <xsl:if test="$numberFormat=''">
                    <xsl:value-of select='$TotalExecutableAmount' />
                  </xsl:if>
                </p>
              </td>
            </tr>
            <!--<tr>
            	<td colspan="10" class="content-firma">
                	<p class="right">Firma:</p>
                </td>
            </tr>-->
          </table>

        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
