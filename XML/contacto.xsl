<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<head>
    <link rel="stylesheet" href="../CSS/estilos.css"/>
</head>
<body>
 
    <xsl:for-each select="contacto">
    <div>
        <p class="icon-location"><strong>DIRECCIÓN: </strong><xsl:value-of select="direccion"/></p>
        <p class="icon-movil"><strong>MÓVIL: </strong><xsl:value-of 
        select="movil"/></p>
         <p class="icon-fijo"><strong>TELÉFONO: </strong><xsl:value-of select="fijo"/></p>
        <p class="icon-correo"><strong>E-MAIL: </strong><xsl:value-of 
        select="email"/></p>
        <p class="icon-web"><strong>WEB: </strong><xsl:value-of select="web"/></p>
    </div>

    </xsl:for-each>

  
</body>
</html>
</xsl:template>
</xsl:stylesheet>


