<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <html>
    <body>
    <h2>Tabla 1</h2>
    <table border="1px">
        <tr>
        <th>Marca</th>
        <th>Modelo</th>
        <th>Precio</th>
        </tr>
        <xsl:for-each select="vehiculos/vehiculo">
        <xsl:sort select="marca"/>
            <tr>
                <td><xsl:value-of select="marca"/></td>
                <td><xsl:value-of select="modelo"/></td>
                <td><xsl:value-of select="precio"/></td>
            </tr>
        </xsl:for-each>
    </table>

    <h2>Tabla 2</h2>
    <table border="1px">
        <tr>
        <th>Marca</th>
        <th>Modelo</th>
        <th>Cambio</th>
        <th>Precio</th>
        <th>Combustible</th>        
        </tr>
        <xsl:for-each select="vehiculos/vehiculo">
            <xsl:if test="@cambio ='automatico' and @combustible ='gasolina'">
            <tr>
                <td><xsl:value-of select="marca"/></td>
                <td><xsl:value-of select="modelo"/></td>
                <td><xsl:value-of select="@cambio"/></td>
                <td><xsl:value-of select="precio"/></td>
                <td><xsl:value-of select="@combustible"/></td>
            </tr>
            </xsl:if>
        </xsl:for-each>
    </table>

    <h2>Tabla 3</h2>
    <table border="1px">
        <tr>
        <th>Marca</th>
        <th>Modelo</th>
        <th>KM</th>
        <th>Precio</th>
        <th>Potencia</th>    
        <th>Año</th>     
        </tr>
        <xsl:for-each select="vehiculos/vehiculo">
        <xsl:choose>
            <xsl:when test="precio &lt; 20000">
            <tr>
                <td style="background-color:green"><xsl:value-of select="marca"/></td>
                <td style="background-color:green"><xsl:value-of select="modelo"/></td>
                <td style="background-color:green"><xsl:value-of select="anno"/></td>
                <td style="background-color:green"><xsl:value-of select="precio"/></td>
                <td style="background-color:green"><xsl:value-of select="km"/></td>
                <td style="background-color:green"><xsl:value-of select="potencia"/></td>
            </tr>
            </xsl:when>
            <xsl:otherwise>
            <tr>
                <td><xsl:value-of select="marca"/></td>
                <td><xsl:value-of select="modelo"/></td>
                <td><xsl:value-of select="anno"/></td>
                <td><xsl:value-of select="precio"/></td>
                <td><xsl:value-of select="km"/></td>
                <td><xsl:value-of select="potencia"/></td>
            </tr>
            </xsl:otherwise>
        </xsl:choose>    
        </xsl:for-each>
    </table>

    <h2>Tabla 4</h2>
    <table border="1px">
        <tr>
        <th>Marca</th>
        <th>Modelo</th>
        <th>Precio</th>
        <th>Combustible</th>        
        </tr>
        <xsl:for-each select="vehiculos/vehiculo">
            <xsl:sort select="precio" data-type="number"/>
            <xsl:if test="@combustible !='gasolina'">
            <tr>
                <td><xsl:value-of select="marca"/></td>
                <td><xsl:value-of select="modelo"/></td>
                <td><xsl:value-of select="precio"/></td>
                <td><xsl:value-of select="@combustible"/></td>
            </tr>
            </xsl:if>

        </xsl:for-each>
    </table>

    <h2>Tabla 5</h2>
    <table border="1px">
        <tr>
        <th>Marca</th>
        <th>Modelo</th>
        <th>Precio</th>        
        </tr>
        <xsl:for-each select="vehiculos/vehiculo">
            <xsl:sort select="precio" data-type="number" order="descending"/>
            <xsl:if test="position() &lt;= 3">
            <tr>
                <td><xsl:value-of select="marca"/></td>
                <td><xsl:value-of select="modelo"/></td>
                <td><xsl:value-of select="precio"/></td>
            </tr>
            </xsl:if>
        </xsl:for-each>
    </table>

    </body>
    </html>
    </xsl:template>
</xsl:stylesheet> 