<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <!-- hàm round làm tròn số -->
  <!-- format-number -->
  <html>
  <body>
      <xsl:for-each select="//book">
        <xsl:value-of select="title"/><br/>
        <xsl:value-of select="weight"/><xsl:value-of select="weight/@units"/><br/>
        <h3>US: <xsl:value-of select="round((weight div 100)*(shipping/US))"/> USD</h3>
        <h3>VN: <xsl:value-of select="format-number((weight div 100)*(shipping/VN),'##0.###')"/> VNĐ</h3>
        <hr/>
      </xsl:for-each>

  </body>
  </html>
</xsl:template>

</xsl:stylesheet>