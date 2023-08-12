<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="//document">
          <!-- Create SalesOrderHeader/SalesOrderHeaderFields/CustomerNumnber elements based on unique Person/UsrAddress/Code values -->
          <xsl:for-each-group select="businessobjects/Reservation" group-by="Person/UsrAddress/Code">
            <xsl:element name="SalesOrderHeader">
                <xsl:element name="SalesOrderHeaderFields">
                    <xsl:element name="CustomerNumber">
                        <xsl:value-of select="current-grouping-key()"/>
                    </xsl:element>
                </xsl:element>
                <!-- Create ItemFields/_USERFIELD1 elements grouped by Person/UsrAddress/Code values -->
                <xsl:for-each select="current-group()">
                    <xsl:element name="ItemFields">
                        <xsl:element name="_USERFIELD1">
                            <xsl:value-of select="OrderNumber" />
                        </xsl:element>
                    </xsl:element>
                </xsl:for-each>
            </xsl:element>
        </xsl:for-each-group>
    </xsl:template>
</xsl:stylesheet>