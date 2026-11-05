<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
    xmlns="http://purl.oclc.org/dsdl/schematron">
    
    <pattern>
        <rule context="location[contains(., 'AU')]">
            <assert test="@lat lt 0">The latitude reading of AU must be less than zero </assert>
            <assert test="@long gt 100">The longitude reading of AU must be less than 100</assert>
            
            
        </rule>
        <rule context="location[contains(., 'USA')]">
            <report test="@long ge 0" >The longitude reading of USA must be less than 0</report>
            <report test="@lat le 0">The latitude reading of USA must be less than 0</report>
        </rule>
    </pattern>
    
</schema>