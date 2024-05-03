<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- Match the root element -->
    <xsl:template match="/root">
        <root>
            <!-- Apply transformation for each 'users' element -->
            <xsl:apply-templates select="users"/>
        </root>
    </xsl:template>
	
    <!-- Match each 'users' element -->
    <xsl:template match="users">
        <users>
            <!-- copy 'id' element as is -->
            <name>
                <xsl:value-of select="name"/>
            </name>
            <username>
                <xsl:value-of select="username"/>
            </username>
            <email>
                <xsl:value-of select="email"/>
            </email>
            <phone>
                <xsl:value-of select="phone"/>
            </phone>
            <location>
                <xsl:value-of select="address/city"/>
            </location>
            <company>
                <xsl:value-of select="company/name"/>
            </company>
            <!-- Calculate and copy 'count_of_posts' element -->
            <count_of_posts>
                <xsl:value-of select="count(posts)"/>
            </count_of_posts>
        </users>
    </xsl:template>
	
</xsl:stylesheet>