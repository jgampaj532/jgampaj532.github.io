<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" indent="yes"/>
  <xsl:key name="k" match="marca" use="."/>

  <xsl:template match="vehiculos/vehiculo">
    <xsl:apply-templates select="marca[generate-id() = generate-id(key('k', .))]"/>
  </xsl:template>

  <xsl:template match="marca">
    <xsl:value-of select="concat(., ' ', count(key('k', .)))"/>
    <xsl:text>&#xa;</xsl:text>
  </xsl:template>

</xsl:stylesheet>
