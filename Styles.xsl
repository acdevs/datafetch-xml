<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<h1> Index of ./Students</h1>
<br /><br />
<table  align="center">
<style>
tr:nth-child(even) {
  background-color: #f2f2f2
}
</style>
<tr><th>Roll No.</th><th>Name</th><th>Gender</th><th>Contact</th></tr>
<xsl:for-each select="school/class/student/profile">
<xsl:sort order="ascending" select="Rollno"/>
<tr>
<td class="rllno"><xsl:value-of select="Rollno" /></td>
<td class="nme"><xsl:value-of select="Name" /></td>
<td class="rllno"><xsl:value-of select="gender" /></td>
<td class="rllno"><xsl:value-of select="contact" /></td>
</tr>
</xsl:for-each>
</table>
<style>
    h1{
        font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif ;
        color:#000;
        padding: 20px;
        border-bottom: 1px solid #000;
        }
        
    table{
        font-family:monospace;
        width:80%;
        font-size:1.25em
        }
        
    th{
        font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color:#08f;
        color:#fff;
        border-bottom: 5px solid #07c;
        padding:10px 0px;
        }
    td{
        padding:10px 0px;
    }
    .rllno{
        text-align:center;
        }
        
    .nme{
        text-align:left;
        }
        
    </style>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
