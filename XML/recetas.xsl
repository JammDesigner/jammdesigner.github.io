<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body style="font-family:Verdana;font-size:12pt;color:#FFF">
  <table border="0">
    <xsl:for-each select="recetas/receta">
    <tr bgcolor="#357AA1">
      <th style="text-align:center" colspan="2"><xsl:value-of select="nombre"/></th>
    </tr>
    </xsl:for-each>
    <tr>
	<th colspan="2"><img src="../IMG/receta.jpg"></img></th>
  </tr>
    <tr bgcolor="#5EA32F">
		<th style="text-align:center">Ingredientes</th>
		<th style="text-align:center">Preparación</th>

    </tr>
    <xsl:for-each select="recetas/receta/preparacion">
    <tr>
      <td width="30%" style="text-align:left"><xsl:value-of select="ingrediente"/></td>
      <td style="text-align:left"><xsl:value-of select="paso"/></td>
    </tr>
    </xsl:for-each>
	  	<tr>
		<th colspan="2"><video src="../MULTIMEDIA/receta%20(2).mp4"></video></th>
	</tr>


  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
