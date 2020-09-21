<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <!-- hàm round làm tròn số -->
  <!-- format-number -->
  <html>
  <body>
      <xsl:for-each select="//book">
        Giá gốc: <xsl:value-of select="price/real"/><br/>
        Giá khuyến mãi: <xsl:value-of select="price/saleoff"/><br/>
        Down: <xsl:value-of select="price/real - price/saleoff"/><br/>
        % giảm giá <xsl:value-of select="round(100-(price/saleoff div price/real)*100)"/><br/>

      
        <hr/>
      </xsl:for-each>

  </body>
  </html>
</xsl:template>

</xsl:stylesheet>