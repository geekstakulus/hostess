<?xml version="1.0"?> 
<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns="http://www.w3.org/TR/xhtml1/transitional">
  <xsl:output method='html' indent='yes' />

  <xsl:template match='/'>
    <html>
      <head>
	<title>Oberon Testsuite</title>
      </head>
      <body bgcolor="white">
	<xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match='testsuite'>
    <h2>Oberon Testsuite</h2>
    <p><b>Profile</b>: <xsl:value-of select="@profile"/></p>
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match='testcases'>
    <h4>Testcases Profile: <xsl:value-of select="@profile"/></h4>
    <table border="1" cellpadding="3" cellspacing="0" width="100%">
      <xsl:apply-templates/>
    </table>
  </xsl:template>

  <xsl:template match='test'>
    <tr bgcolor="#CCCCFF">
      <td width="25%">
	<a name="{@id}">
	  <strong>ID</strong>
	  <xsl:text>: </xsl:text>
	  <xsl:value-of select="@id"/>
	</a>
      </td>
      <td>
	<strong>Languages</strong>
	<xsl:text>: </xsl:text>
	<xsl:choose>
	  <xsl:when test="@lang">
	    <xsl:value-of select="@lang"/>
	  </xsl:when>
	  <xsl:otherwise>
	    <xsl:value-of select="../@default-lang"/>
	  </xsl:otherwise>
	</xsl:choose>
      </td>
      <td width="25%">
	<strong>Relevance</strong>
	<xsl:text>: </xsl:text>
	<xsl:choose>
	  <xsl:when test="@relevance">
	    <xsl:value-of select="@relevance"/>
	  </xsl:when>
	  <xsl:otherwise>standard</xsl:otherwise>
	</xsl:choose>
      </td>
    </tr>
    <tr>
      <td colspan="3">
	<em>Type: </em><xsl:value-of select="@type"/>
	<xsl:text> [</xsl:text>
	<a href="{@file}">Input</a>
	<xsl:text>]</xsl:text>
	
	<xsl:if test="@output">
	  <xsl:text> [</xsl:text>
	  <a href="{@output}">Output Reference</a>
	  <xsl:text>]</xsl:text>
	</xsl:if>
	<p><xsl:apply-templates/></p>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match='em'>
    <em><xsl:apply-templates/></em>
  </xsl:template>

  <xsl:template match='b'>
    <b><xsl:apply-templates/></b>
  </xsl:template>

  <xsl:template match='code'>
    <code><xsl:apply-templates/></code>
  </xsl:template>
</xsl:stylesheet>
