<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html"/>
<xsl:template match="//holidays">
<!--Assignment 2
  SENG1050*/
  NI ZENG*/
  C3238805*/
  CREATE: 30/10/2020*/
  DUE 1/11/2020*-->
	<html>
		<head>			
			<title>	Introducing The Cruise Holidays Packeage.</title>	
			<link rel = "stylesheet" type = "text/css" href = "style.css" />
			
		</head>
		
		
		<body>		
		<nav>
		  <a href="index.html"> home </a><br/> 
		  <a href="terms.html"> Terms and conditions </a><br/> 
		  <a href="Privacy_policy.html"> Privacy policy </a><br/> 
		  <a href="Contact.html"> Contact us </a>	 <br/> 
		  <a href="goHoliday_luxury.xml"> Luxury packeage </a><br/> 
		  <a href="goHoliday_cruise.xml"> Cruise packeage </a><br/> 
		  <a href="Aboutus.html"> About us </a><br/>
		  <a href="DataCollection.html"> Data Collection </a><br/>
		  <a href="goHoliday_luxury.xml"> Luxury Packeage </a><br/>
		  <a href="goHoliday_cruise.xml"> Cruise Packeage </a><br/>
		</nav>
				
		<h1>Holidays Packeage</h1>
		
		<xsl:for-each select="cruise">
		<xsl:sort select="packeage_name" data-type="text" order="ascending"/>
			<h2>				
				<xsl:value-of select="description" />(<xsl:value-of select="name(.)" />)<br />
			</h2>
			
			<ul>
			<xsl:for-each select="*">
			<li>
			<xsl:value-of select="name(.)" /> :  <xsl:value-of select="." />
			
			</li>
			</xsl:for-each>
			</ul>
			<td><img src="{picture}"/></td>
			Link to the website >>>><a href="{@link}"><xsl:value-of select="@link"/></a>
			
		</xsl:for-each>
		
		
		<xsl:for-each select="luxury">
		<xsl:sort select="packeage_name" data-type="text" order="ascending"/>
			<h2>				
				<xsl:value-of select="description" />(<xsl:value-of select="name(.)" />)<br />
			</h2>
			
			<ul>
			<xsl:for-each select="*">
			<li>
			<xsl:value-of select="name(.)" /> :  <xsl:value-of select="." />
			
			</li>
			</xsl:for-each>
			</ul>
			<td><img src="{picture}"/></td>
			Link to the website >>>><a href="{@link}"><xsl:value-of select="@link"/></a>
			
		</xsl:for-each>
		
		
		
		
		</body>
		
	</html>
</xsl:template>

</xsl:stylesheet>