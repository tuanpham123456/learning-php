<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <!-- hàm round làm tròn số -->
  <!-- format-number -->
  <html>
  <body>  
        Số cuốn sách: <xsl:value-of select="count(//book)"/><br/>
        Tổng số tiền: <xsl:value-of select="sum(//price/saleoff)"/>

  </body>
  </html>
</xsl:template>

</xsl:stylesheet>