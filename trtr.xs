<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<body>

<h1>College Records</h1>

<table border="1">
    <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Major</th>
        <th>Action</th>
    </tr>

    <xsl:for-each select="trainees/trainee">
        <tr>
            <td><xsl:value-of select="Name"/></td>
            <td><xsl:value-of select="Email"/></td>
            <td><xsl:value-of select="Major"/></td>
            <td>
                <form method="post" action="delete.php">
                    <input type="hidden" name="index" value="{position()-1}"/>
                    <input type="submit" value="Delete"/>
                </form>
            </td>
        </tr>
    </xsl:for-each>
</table>

<h3>Add Record</h3>

<form method="post" action="insert.php">
    <input type="text" name="Name" placeholder="Name" required="required"/><br/><br/>
    <input type="text" name="Email" placeholder="Email" required="required"/><br/><br/>
    <input type="text" name="Major" placeholder="Major" required="required"/><br/><br/>
    <input type="submit" value="Add"/>
</form>

</body>
</html>
</xsl:template>

</xsl:stylesheet>
