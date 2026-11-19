<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0" xmlns="http://www.w3.org/1999/xhtml" > 
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/> 
 
    <xsl:template match="/">
        <html>
            
            <head>
                <title>chapter <xsl:value-of select="/chapter/@num"/></title>
                <link rel="stylesheet" type="text/css" href="formatWebsite1.css"/>
            </head>
            <body>
                <nav class="navbar">
                    <a href="../index.html"><img src="../images/SL_HomePic.jpg" alt="This is the image go to home page" width="100" height="50"/></a>
                    <ul class="menu">
                        <li><a href="../index.html">Home</a></li>
                        <li><a href="../method.html">Method</a></li>
                        <li><a href="../chapters.html">Chapters</a></li>
                        <li><a href="../data.html">Data</a></li>
                        <li><a href="../resources.html">Resources</a></li>
                    </ul>
                </nav>
                <div class="container">
                    <h1 class="center large-text-body"> Chapter <xsl:value-of select="/chapter/@num"/> </h1>
                    <xsl:apply-templates select="//page"/> 
                    <xsl:apply-templates select="//chapter/@num"></xsl:apply-templates>
                </div>
                
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="bubble">
        <xsl:choose>
            <xsl:when test="@type = 'thought'">
                <p class="bubble_thought-text">
                    <span class="speaker"><xsl:value-of select="@who"/></span>: <xsl:apply-templates/>
                </p>
            </xsl:when>
            <xsl:otherwise>
                <p>
                    <span class="speaker"><xsl:value-of select="@who"/></span>: <xsl:apply-templates/>
                </p>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="caption">
        <xsl:choose>
            <xsl:when test="@type = 'narration'">
                <p class="caption-text">
                    <span class="speaker"><xsl:value-of select="@who"/></span>: <xsl:apply-templates/>
                </p>
            </xsl:when>
            <xsl:otherwise>
                <p class="caption-text">
                    <xsl:apply-templates/>
                </p>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="systemMsg">
        <div class="system-container">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="info| stat | level">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="page">
        <div class="page_container" id="p{count(preceding-sibling::page) + 1}"><xsl:apply-templates/></div>
    </xsl:template>
    
    <xsl:template match="chapter/@num">
        <xsl:variable name="chapterNum" select="number(.)"/>
        
        <nav class="next-grid">
            <xsl:if test="$chapterNum > 1">
                <a class="previous-chapter" href="chapterDraft_{$chapterNum - 1}.html">Previous chapter</a>
            </xsl:if>
            
            <xsl:if test="$chapterNum &lt; 40">
                <a class="next-chapter" href="chapterDraft_{$chapterNum + 1}.html">Next chapter</a>
            </xsl:if>
        </nav>
    </xsl:template>
    
</xsl:stylesheet>