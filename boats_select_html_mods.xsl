<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version ="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>Boat Listing</head>
            <body>
                <p>Your search was: price &lt; 100000, length &lt; 40 feet.</p>
                <br/>
                
                <table border="2">
                    <xsl:for-each select="boats/boat">
                        <xsl:if test = "price &lt;100000">
                            <xsl:if test="length &lt;40">
                                <tr>
                                    <td><xsl:value-of select="name"/></td>
                                    <td><xsl:value-of select="make"/></td>
                                    <td><xsl:value-of select="type"/></td>
                                    <td><xsl:value-of select="year"/></td>
                                    <td><xsl:value-of select="length"/></td>
                                    <td><xsl:value-of select="price"/></td>
                                    <!-- a table cell per feature of the boat -->
                                </tr>
                            </xsl:if>
                        </xsl:if>
                    </xsl:for-each>
                    <!-- a table row per boat -->
                </table>
                
                <xsl:variable name="sumAllBoatPrices" select="sum(boats/boat//price)"/>
                <xsl:variable name="sumAllBoatLengths" select="sum(boats/boat//length)"/>
                <xsl:variable name="noOfAllBoats" select = "count(boats//boat)"/>
                <xsl:variable name="totalBoats" select="boats/boat"/>
                
                <xsl:variable name="relevantBoats" select="$totalBoats[price&lt;100000]"/>
                <xsl:variable name="relevantBoatsLeft" select="$relevantBoats[length&lt;40]"/>
                <xsl:variable name="noOfRelevantBoats" select="count($relevantBoatsLeft)"/>
                
                <xsl:variable name="sumRelevantBoatPrices" select="sum($relevantBoatsLeft//price)"/>
                <xsl:variable name="sumRelevantBoatLengths" select="sum($relevantBoatsLeft//length)"/>
                    
                <p>avg price: all boats: <xsl:value-of select="$sumAllBoatPrices div $noOfAllBoats"/></p>
                <p>avg price: relevant boats: <xsl:value-of select="$sumRelevantBoatPrices div $noOfRelevantBoats"/></p>
                <p>avg length: all boats: <xsl:value-of select="$sumAllBoatLengths div $noOfAllBoats"/></p>  
                <p>avg length: relevant boats: <xsl:value-of select="$sumRelevantBoatLengths div $noOfRelevantBoats"/></p>  
                 
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>