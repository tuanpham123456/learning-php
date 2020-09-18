<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
        <p>Tên sách: <xsl:value-of select="book/title"/></p>
        <p>Tên tác giả: <xsl:value-of select="book/author"/></p>
        <p>Số trang: <xsl:value-of select="book/page"/></p>
        <p>Cân nặng: <xsl:value-of select="book/weight"/>
          <xsl:value-of  select="book/weight/@units"/>
        </p>
        

        
        
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>