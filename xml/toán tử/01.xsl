<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
      <xsl:for-each select="//book[price/real &gt; 50]">
        <xsl:value-of select="title" /><br/>
      </xsl:for-each>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>