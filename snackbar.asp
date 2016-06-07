<html>
<body>
<%
set conn=Server.CreateObject("ADODB.Connection")
conn.open "DSN=mydsn;UID=sb;PWD="

set rs=Server.createObject("ADODB.recordset")

sql="INSERT INTO embry_snackbar(name,phone,plate,spotnumber,hamb_qty,cheese_qty,hotdog_qty,frenchfry_qty,pretzel_qty,nuggets_qty,pizza_qty,lg_popcorn_qty,med_popcorn_qty,small_popcorn_qty,candy_qty,fountain_qty,bot_water_qty,bot_soda_qty)"
sql=sql & " VALUES "
sql=sql & "('" & Request.Form("name") & "',"
sql=sql & "'" & Request.Form("phone") & "',"
sql=sql & "'" & Request.Form("plate") & "',"
sql=sql & "'" & Request.Form("spotnumber") & "',"
sql=sql & "'" & Request.Form("ham_qty") & "',"
sql=sql & "'" & Request.Form("cheese_qty") & "',"
sql=sql & "'" & Request.Form("hotdog_qty") & "',"
sql=sql & "'" & Request.Form("frenchfry_qty") & "',"
sql=sql & "'" & Request.Form("pretzel_qty") & "',"
sql=sql & "'" & Request.Form("nuggets_qty") & "',"
sql=sql & "'" & Request.Form("pizza_qty") & "',"
sql=sql & "'" & Request.Form("lg_popcorn_qty") & "',"
sql=sql & "'" & Request.Form("med_popcorn_qty") & "',"
sql=sql & "'" & Request.Form("small_popcorn_qty") & "',"
sql=sql & "'" & Request.Form("candy_qty") & "',"
sql=sql & "'" & Request.Form("fountain_qty") & "',"
sql=sql & "'" & Request.Form("bot_water_qty") & "',"
sql=sql & "'" & Request.Form("bot_soda_qty") & "')"
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