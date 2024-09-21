<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:variable name="generoSeleccionado" select="'Fantasía'"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Lista de Libros</title>
            </head>
            <body>
                <h1>Biblioteca</h1>
                <xsl:apply-templates select="biblioteca/libro[genero=$generoSeleccionado]"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="libro">
        <div>
            <h2><xsl:value-of select="titulo"/></h2>
            <p>Autor: <xsl:value-of select="autor"/></p>
            <p>Año de Publicación: <xsl:value-of select="anno"/></p>
            <p>Género: <xsl:value-of select="genero"/></p>
            <xsl:if test="anno &gt; 2000">
                <p style="color: red;">Publicado después del año 2000</p>
            </xsl:if>
        </div>
    </xsl:template>

</xsl:stylesheet>
