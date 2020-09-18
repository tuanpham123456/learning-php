<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/book_shop">
  <html>
  <body>
         <xsl:for-each select="book">
          <p>Tên sách: <xsl:value-of select="title"/></p>
        <p>Tên tác giả: <xsl:value-of select="author"/></p>
        <p>Số trang: <xsl:value-of select="page"/></p>
        <xsl:if test="weight &gt; 400">
           <p>Cân nặng: <xsl:value-of select="weight"/>
           <xsl:value-of  select="weight/@units"/>
        </p>
      </xsl:if>        
      <li>Chú ý: 
      <xsl:choose>
        <xsl:when test="weight/@units ='gram' ">
           Vận chuyển miễn phí
        </xsl:when>
        <xsl:otherwise>
           Vận chuyển có phí
        </xsl:otherwise>
      </xsl:choose>
      </li>
      <hr/>
         </xsl:for-each>
       
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>