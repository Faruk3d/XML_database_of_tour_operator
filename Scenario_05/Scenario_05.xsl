<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" encoding="UTF-8" indent="yes"/>

	<xsl:template match="/">
	{
		"Costumers": [<xsl:apply-templates select="TRIPS/COSTUMERINFO/COSTUMER" />]
	}
    </xsl:template>

	<xsl:template match="COSTUMER">
	{
		"id": "<xsl:value-of select="@cid"/>",
		"First Name": "<xsl:value-of select="FIRSTNAME"/>",
		"Last Name": "<xsl:value-of select="LASTNAME"/>",
		"Country": "<xsl:value-of select="COUNTRY"/>"
	}<xsl:if test="position() != last()">,</xsl:if>
	</xsl:template>
</xsl:stylesheet>
