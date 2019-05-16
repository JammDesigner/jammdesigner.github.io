<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">  
<html>
	<head>	
		<link rel="stylesheet" href="../CSS/estilos.css"/>
	</head>
	<body>
		<section class="sectionRecetas">
			<xsl:for-each select="recetas/receta"> 
				<div class="cajaRecetas">
					<p class="recetaTitulo"><xsl:value-of select="nombre"/></p>
					<img class="recetaImagen"><xsl:attribute name="src"><xsl:value-of select="imagen"/></xsl:attribute></img>
					<p><strong>VALOR ENERGÉTICO: </strong><xsl:value-of select="valor"/></p>
					<p><strong>PROTEÍNAS: </strong><xsl:value-of select="proteinas"/></p>
					<p><strong>HIDRATOS DE CARBONO: </strong><xsl:value-of select="hidratos"/></p>
					<p><strong>GRASAS: </strong><xsl:value-of select="grasas"/></p>
				</div>
			</xsl:for-each>
		</section>
	</body>
</html>
  
