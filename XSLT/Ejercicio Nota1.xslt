<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<head>
				<title>Lista de Libros</title>
			</head>
			<body>
				<h1>Biblioteca</h1>
				<xsl:apply-templates select="biblioteca/libro" />
			</body>
		</html>
	</xsl:template>

	<xsl:template match="libro">
		<xsl:for-each select="//libro">
			<div>
				<h2>
					<xsl:value-of select="titulo" />
				</h2>
				<p>
					Autor:
					<xsl:value-of select="autor" />
				</p>
				<p>
					Año de Publicación:
					<xsl:value-of select="anno" />
				</p>
			</div>
			<xsl:if test="autor = 'Gabriel García Márquez'">
				<p style="color: blue;">El Autor es Colombiano</p>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>

</xsl:stylesheet>
