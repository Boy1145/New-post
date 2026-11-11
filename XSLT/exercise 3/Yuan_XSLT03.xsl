<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0" xmlns="http://www.w3.org/1999/xhtml" > <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/> 
    <xsl:template match="/">
        <html>
            <head>
                <title>The Oblivion Crisis</title>
                <link rel="stylesheet" href="skyrim.css"/>
            </head>
            <body>
                <h1>The Oblivion Crisis</h1>
                <xsl:apply-templates select="//body"/>
            </body>
    </html>
    </xsl:template>
    <xsl:template match="body">
        <div class="body">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    <xsl:template match="paragraph">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="QuestEvent">
        <span class="questEvent">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="QuestItem">
        <span class="questItem">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="character">
        <span class="character">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="epithet">
        <span class="epithet">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="faction">
        <span class="faction">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="location">
        <span class="location">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
</xsl:stylesheet>