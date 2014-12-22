<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="1.0">
<xsl:output method="text"/>
	
<xsl:template match="issue">
	<xsl:value-of select="status/@name"/>
	<xsl:text> </xsl:text>
	<xsl:value-of select="project/@name"/>
	<xsl:text> </xsl:text>
	<xsl:value-of select="tracker/@name"/> #<xsl:value-of select="id"/>
	<xsl:text>:&#10;</xsl:text>
	<xsl:value-of select="concat(subject, '&#10;&#10;')"/>
	<xsl:value-of select="concat(
		    ' Category: ', category/@name, 
		'&#9;&#9; Version: ', fixed_version/@name,
		'&#10; Author: ', author/@name,
		'&#9; Assignee: ', assigned_to/@name,
		'&#10;&#10;',
		description,
		'&#10;')"/>
</xsl:template>
	
</xsl:stylesheet>