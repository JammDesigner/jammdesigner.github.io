<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
  
<html>

<head>
	
<link rel="stylesheet" href="../CSS/nuestra_historia.css"/>

</head>
  <body>

<section class="sectionNosotros">
    <xsl:for-each select="nosotros/staff">
    
      <div class="cajaNosotros">
        <p class="nosotrosTitulo"><xsl:value-of select="nombre"/></p>
        <img class="nosotrosImagen"><xsl:attribute name="src"><xsl:value-of select="imagen"/></xsl:attribute></img>
    
        <p><strong>PROFESIÓN: </strong><xsl:value-of select="profesion"/></p>
        <p><strong>¿CÓMO TE DEFINES?: </strong><xsl:value-of 
        select="descripcion"/></p>
        <audio><xsl:attribute name="src"><xsl:value-of select="audio"/></xsl:attribute></audio>

 
        
      </div>
        
    </xsl:for-each>
    
     </section>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>
