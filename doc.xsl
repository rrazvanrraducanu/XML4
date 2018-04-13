<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>


    <xsl:template match="/">
        <html>
            <head>
                <title>doc.xsl</title>
            </head>
            <body>
                
         <table>
             <tr>
                 <td width="500">
                     <h1><xsl:value-of select="razvan/image1/title"/></h1>
                 </td>
                 <td width="500">
                    <xsl:apply-templates select="razvan/image1" />   
                 </td>
             </tr> 
              <tr>
                 <td width="500">
                     <h1><xsl:value-of select="razvan/image2/title"/></h1>
                 </td>
                 <td width="500">
                   <xsl:apply-templates select="razvan/image2" />   
                 </td>
              </tr>
         </table>    
          </body>
        </html>
    </xsl:template> 
<xsl:template match="image1|image2">
        <xsl:element name="img">
            <xsl:attribute name="src">
                 <xsl:value-of select="src"/>
              </xsl:attribute>
              <xsl:attribute name="height">
                 <xsl:value-of select="height"/>
              </xsl:attribute>
                <xsl:attribute name="width">
                 <xsl:value-of select="width"/>
              </xsl:attribute>
              <xsl:attribute name="title">
                 <xsl:value-of select="title"/>
              </xsl:attribute>
</xsl:element>
	</xsl:template>
</xsl:stylesheet>
       
