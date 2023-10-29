<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Librería</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        margin: 20px;
                    }
                    h1 {
                        text-align: center;
                        color: #333;
                    }
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    th, td {
                        padding: 8px 12px;
                        border: 1px solid #ddd;
                        text-align: left;
                    }
                    th {
                        background-color: #f0f0f0;
                    }
                </style>
            </head>
            <body>
                <h1>Historia en Libros</h1>
                <table>
                    <tr>
                        <th>Libro</th>
                        <th>Autor</th>
                        <th>Año</th>
                        <th>País</th>
                        <th>Editorial</th>
                    </tr>
                    <xsl:for-each select="libros/libro">
                    <tr>
                        <td><xsl:value-of select="titulo"/></td>
                        <td><xsl:value-of select="autor"/></td>
                        <td><xsl:value-of select="año"/></td>
                        <td><xsl:value-of select="pais"/></td>
                        <td><xsl:value-of select="editorial"/></td>
                    </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>