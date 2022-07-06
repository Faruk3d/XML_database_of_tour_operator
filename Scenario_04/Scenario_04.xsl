<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" encoding="UTF-8"/>
  <!-- In this scenario, I classify trips longer than five days as "long trips" and trips less than five days as "short trips".-->
  <xsl:template match="TRIPS">
    <xsl:element name="{name(.)}">
		<xsl:element name="LONGTRIP">
			<xsl:apply-templates select="TRIP[DURATION &gt; 5]"/>
		</xsl:element>
		<xsl:element name="SHORTTRIP">
			<xsl:apply-templates select="TRIP[not(DURATION &gt; 5)]"/>
		</xsl:element>
    </xsl:element>
  </xsl:template>

  <xsl:template match="TRIP">
		<xsl:element name="TRIP">
			<xsl:value-of select="DESTINATION"/>
		</xsl:element>
  </xsl:template>
  
    <xsl:template match="*"/>
</xsl:stylesheet>