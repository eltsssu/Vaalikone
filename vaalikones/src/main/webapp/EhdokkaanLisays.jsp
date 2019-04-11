<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" --%>
<%-- 	pageEncoding="ISO-8859-1"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.*,vaalikone.Yllapito,persist.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EhdokkaanLisays</title>
<link href="style.css" rel="stylesheet" type="text/css">
<div id="container">
</head>
<h1>Ehdokkaan Lisäys</h1>
<body>

	<div class=Lisays>

		<form action="TallennaEhdokas" id="EhdokkaanLisays" method="post">
			<table> 
<tbody> 
<tr> 
<td>Sukunimi</td> 
<td><input type="text" name="sukunimi"value="sukunimi" /></td> 
</tr> 
<tr> 
<td>Etunimi</td> 
<td><input type="text" name="etunimi" value="etunimi" /></td> 
</tr> 
<tr> 
<td>Puolue</td> 
<td><input type="text" name="puolue" value="puolue" /></td> 
</tr> 
<tr> 
<td>Kotipaikkakunta</td> 
<td><input type="text" name="kotipaikkakunta" value="kotipaikkakunta" /></td> 
</tr> 
<tr> 
<td>Ikä</td> 
<td><input type="text" name="ika" value="5" /></td> 
</tr> 
<tr> 
<td>Miksi eduskuntaan?</td> 
<td><input type="text" name="miksieduskuntaan" value="miksieduskuntaan" /></td> 
</tr> 
<tr> 
<td>Mitä asioita haluat edustaa?</td> 
<td><input type="text" name="mitahaluat" value="mitahaluat" /></td> 
</tr> 
<tr> 
<td>Ammatti</td> 
<td><input type="text" name="ammatti" value="ammatti" /></td> 
</tr> 
<tr> 
<td><input type="submit" id="submitnappi1" value="Lisää" /></td> 
</tr> 
</tbody> 
</table> 
		</form>

	</div>

</body>
</div>
</html>