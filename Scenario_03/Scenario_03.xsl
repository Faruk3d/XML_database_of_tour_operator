<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8"/>
	<xsl:template match="/">
		<html>
			<head>
				<style>
				tr:hover {background-color: #c6e1f4;}
				table {width: 400px;border: 1px solid black;border-collapse: collapse;border-radius: 10px;border-color: #8acfed;text-align: center;}
				</style>
				<h2>Scenario 3: Shows all tours organized during the month, the total number of participants and the group members of each tour.</h2>
			</head>
			<body>
			<!-- Here is a calculation of how many tours our travel agency organized during the month and the total number of participants.-->
				<h3>The number of tours organized this month was <xsl:value-of select="count(TRIPS/TRIP/DESTINATION)"/>,  
			and the total number of participants was <xsl:value-of select="count(TRIPS/COSTUMERINFO/COSTUMER)"/>.</h3>
				<ul>
				<!-- Each tour, the people participating and the cost per person are shown here in these table.-->
				  <xsl:for-each select="//TRIP">
					<xsl:sort select="DESTINATION" order="ascending" />
					<table border="1">
						<tr bgcolor="#b6e1f4">
							<th>Destination</th>
							<th>Participants</th>
							<th>Guide Name</th>
							<th>Hotel Rating</th>
							<th>Cost per person</th>
						</tr>
						<tr>
							<td><xsl:value-of select="DESTINATION" /></td>
							<td>
							<xsl:for-each select="GROUPMEMBERS/COSTUMER">
							<p><xsl:value-of select="FIRSTNAME"/>,<xsl:value-of select="LASTNAME"/></p>
							</xsl:for-each>
							</td>
							<td><xsl:value-of select="GUIDE"/></td>
							<td><xsl:value-of select="HOTELRATING"/></td>
							<td><xsl:value-of select="COST"/></td>
						</tr>
					</table>
					<p></p>
				  </xsl:for-each>
				</ul>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>