<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <!-- Create Key based on the Code element -->
    <xsl:key name="unique-codes" match="//Reservation" use="Person/UsrAddress/Code" />
    <xsl:template match="//document">
        <!-- Create SalesOrderHeader/SalesOrderHeaderFields/CustomerNumnber elements based on unique Code values -->
        <xsl:for-each select="//Reservation[count(. | key('unique-codes', Person/UsrAddress/Code)[1]) = 1]">
            <xsl:sort select="Code" />
            <xsl:element name="SalesOrderHeader">
                <xsl:element name="SalesOrderHeaderFields">
                    <xsl:element name="CustomerNumber">
                        <xsl:value-of select="Person/UsrAddress/Code"/>
                    </xsl:element>
                </xsl:element>
                <!-- Create ItemFields/_USERFIELD1 elements grouped by unique Code values -->
                <xsl:for-each select="key('unique-codes', Person/UsrAddress/Code)">
                    <xsl:sort select="Code" />
                    <xsl:element name="ItemFields">
                        <xsl:element name="_USERFIELD1">
                            <xsl:value-of select="OrderNumber" />
                        </xsl:element>
                    </xsl:element>
                </xsl:for-each>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>