<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
      <!-- có khuyến mãi real > sale không có khuyến mãi real = sale -->
      <xsl:for-each select="//book[price/real &gt; price/saleoff]">
        <xsl:value-of select="title" /><br/>
      </xsl:for-each>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>