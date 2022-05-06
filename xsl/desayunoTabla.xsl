<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
    <html>
    <body>
    <h2>Tabla 1</h2>
    <table border="1px">
        <tr>
        <th>Nombre</th>
        <th>Precio</th>
        <th>Calorias</th>
        </tr>
        <xsl:for-each select="breakfast_menu/food">
            <tr>
                <td><xsl:value-of select="name"/></td>
                <td><xsl:value-of select="price"/></td>
                <td><xsl:value-of select="calories"/></td>
            </tr>
        </xsl:for-each>
    </table>

    <h2>Tabla 2</h2>
    <table border="1px">
        <tr>
        <th>Nombre</th>
        <th>Precio</th>
        <th>Calorias</th>
        </tr>
        <xsl:for-each select="breakfast_menu/food">
        <xsl:sort select="name"/>
            <tr>
                <td><xsl:value-of select="name"/></td>
                <td><xsl:value-of select="price"/></td>
                <td><xsl:value-of select="calories"/></td>
            </tr>
        </xsl:for-each>
    </table>    

    <h2>Tabla 3</h2>
    <table border="1px">
        <tr>
        <th>Nombre</th>
        <th>Precio</th>
        <th>Calorias</th>
        </tr>
        <xsl:for-each select="breakfast_menu/food">
        <xsl:if test="calories &gt; 850">
            <tr>
                <td><xsl:value-of select="name"/></td>
                <td><xsl:value-of select="price"/></td>
                <td><xsl:value-of select="calories"/></td>
            </tr>
        </xsl:if>    
        </xsl:for-each>
    </table> 

    <h2>Tabla 4</h2>
    <table border="1px">
        <tr>
        <th>Nombre</th>
        <th>Precio</th>
        <th>Calorias</th>
        </tr>
        <xsl:for-each select="breakfast_menu/food">
        <xsl:choose>
            <xsl:when test="price &gt; 800">
                <tr>
                    <td style="color:red"><xsl:value-of select="name"/></td>
                    <td style="color:red"><xsl:value-of select="price"/></td>
                    <td style="color:red"><xsl:value-of select="calories"/></td>
                </tr>
            </xsl:when>    
            <xsl:otherwise>
                <tr>
                    <td><xsl:value-of select="name"/></td>
                    <td><xsl:value-of select="price"/></td>
                    <td><xsl:value-of select="calories"/></td>
                </tr>
            </xsl:otherwise>
        </xsl:choose>
        </xsl:for-each>
    </table>

    </body>
    </html>
    </xsl:template>
</xsl:stylesheet> 