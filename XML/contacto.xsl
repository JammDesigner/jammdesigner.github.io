<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <table border="0">
    <xsl:for-each select="contacto">
    <tr>
      <th style="text-align:left">Dirección</th>
      <td style="text-align:left"><xsl:value-of select="direccion"/></td>
    </tr>
    </xsl:for-each>
	    <xsl:for-each select="contacto">
    <tr>
      <th style="text-align:left">Móvil</th>
      <td style="text-align:left"><xsl:value-of select="movil"/></td>
    </tr>
    </xsl:for-each>
		    <xsl:for-each select="contacto">
    <tr>
      <th style="text-align:left">Teléfono</th>
      <td style="text-align:left"><xsl:value-of select="fijo"/></td>
    </tr>
    </xsl:for-each>
			    <xsl:for-each select="contacto">
    <tr>
      <th style="text-align:left">E-Mail</th>
      <td style="text-align:left"><xsl:value-of select="email"/></td>
    </tr>
    </xsl:for-each>
				    <xsl:for-each select="contacto">
    <tr>
      <th style="text-align:left">Web</th>
      <td style="text-align:left"><xsl:value-of select="web"/></td>
    </tr>
    </xsl:for-each>

  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

