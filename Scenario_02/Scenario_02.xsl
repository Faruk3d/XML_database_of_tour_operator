<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version = "1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/> 
	<xsl:template match = "/TRIPS">
		<html>
		<head>
		<style>
		tr:nth-child(even) {background-color: #b6e1f4;}
		tr {border-bottom: 1px solid #ddd;}
		tr:hover {background-color: #c6e1f4;}
		</style>
		</head>
			<body>
				<h2>Scenario 2 : Show all travel destinations with details</h2>
				<!-- I created a table and extracted data from the database such as tour destination, tour guide name, cost, number of tour days, etc.-->
				<table>
					<tr bgcolor="#8acfed">
						<th>Destination</th>
						<th>Activitie Type</th>
						<th>Cost (Euro)</th>
						<th>Duration (Days)</th>
						<th>Guide Name</th>
						<th>Hotel Rating</th>
					</tr>
					<xsl:for-each select = "TRIP">
						<xsl:sort order="ascending" select="COST"/>
						<tr>
							<td><xsl:value-of select = "DESTINATION"></xsl:value-of></td>
							<td><xsl:value-of select = "TYPE"></xsl:value-of></td>
							<td><xsl:value-of select = "COST"></xsl:value-of></td>
							<td><xsl:value-of select = "DURATION"></xsl:value-of></td>
							<td><xsl:value-of select = "GUIDE"></xsl:value-of></td>
							<td><xsl:value-of select = "HOTELRATING"></xsl:value-of></td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>