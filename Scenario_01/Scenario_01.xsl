<?xml version="1.0" encoding="UTF-8"?>
<!--In this scenario, my boss asked me to print a list of all clients-->
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
				<h2>Scenario 1 : List of all clients</h2>
				<table>
					<tr bgcolor="#8acfed">
						<th>Costumer id</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Country</th>
					</tr>
					<xsl:for-each select = "COSTUMERINFO/COSTUMER">
						<tr>
							<td><xsl:value-of select = "COSTUMER_ID"></xsl:value-of></td>
							<td><xsl:value-of select = "FIRSTNAME"></xsl:value-of></td>
							<td><xsl:value-of select = "LASTNAME"></xsl:value-of></td>
							<td><xsl:value-of select = "COUNTRY"></xsl:value-of></td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
