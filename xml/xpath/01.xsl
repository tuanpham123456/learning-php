<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
      <xsl:value-of select="book_shop/book/title" />
      <p><xsl:value-of select="//price" /></p>
      <p><xsl:value-of select="." /></p>
      <xsl:for-each select="book_shop/book/price">
        <!-- .. truy cập cha của phần tử price -->
        <xsl:value-of select=".." /><br/> 
        <!-- truy cập phần tử price -->
        <xsl:value-of select="." /><br/> 

      </xsl:for-each>
      <br/>
      <xsl:for-each select="book_shop/book">
        <xsl:value-of select="@id" /><br/> 
      </xsl:for-each>
      <br/>
      <div>
        <!-- truy cập vào phần tử thứ 2-->
        <xsl:value-of select="book_shop/book[2]"/><br/>
        <!-- truy cập vào phần tử cuối - 1 -->
        <xsl:value-of select="book_shop/book[last()]"/><br/>
        <xsl:value-of select="book_shop/book[last()-1]"/><br/>
        <xsl:value-of select="book_shop/book[last()]/title"/><br/>
      </div>
      <br/>
      <!-- chỉ in ra các phần tử có id -->
      <xsl:for-each select="book_shop/book[@id]">
        <xsl:value-of select="title"/><br/>
      </xsl:for-each>
       <br/>
      <!-- chỉ in ra các phần tử có id =2 -->
      <xsl:for-each select="book_shop/book[@id=2]/title | book_shop/book[@id=2]/page">
        <xsl:value-of select="."/><br/>
      </xsl:for-each>

  </body>
  </html>
</xsl:template>

</xsl:stylesheet>