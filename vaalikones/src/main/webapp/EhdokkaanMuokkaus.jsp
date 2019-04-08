<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*,vaalikone.HaeEhdokas,persist.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EhdokkaanMuokkaus</title>
</head>
<h1>Ehdokkaan Muokkaus</h1>
<body>

	<form action="HaeEhdokas" id="EhdokkaanMuokkaus">
		<label>Etunimi:</label><input type='text' name='etunimi'
			value='<%=e.getEtunimi()%>'> <input type="submit"
			id="submitnappi" value="Päivitä" /><br>




	</form>

</body>
</html>