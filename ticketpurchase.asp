<html>
<body>
<%
set conn=Server.CreateObject("ADODB.Connection")
conn.open "DSN=mydsn;UID=sb;PWD="

set rs=Server.createObject("ADODB.recordset")

sql="INSERT INTO embry(fname,lname,phone,adult_qty,adult_total,child_qty,child_total,under5_qty,under5_total)"
sql=sql & " VALUES "
sql=sql & "('" & Request.Form("fname") & "',"
sql=sql & "'" & Request.Form("lname") & "',"
sql=sql & "'" & Request.Form("phone") & "',"
sql=sql & "'" & Request.Form("adult_qty") & "',"
sql=sql & "'" & Request.Form("adult_total") & "',"
sql=sql & "'" & Request.Form("child_qty") & "',"
sql=sql & "'" & Request.Form("child_total") & "',"
sql=sql & "'" & Request.Form("under5_qty") & "',"
sql=sql & "'" & Request.Form("under5_total") & "')"
rs.open sql,conn

on error resume next

if err.number > 0 then
	Response.Write("No update!")
else
	Response.Write("<p>record added</p>")
end if
conn.close
%>

</body>
</html>