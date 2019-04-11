<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*,vaalikone.Yllapito,persist.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ehdokaslista</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<h1>Ehdokaslista</h1>
<body>

<form action="FiltteroidaanEhdokasLista" id="EhdokkaanFiltterointi" method="post">
<input type='text' name='sukunimi' value=''>
<input type="submit" id="submitnappi3" value="Hae" />
</form>

	<%
		List<Ehdokkaat> kaikkiEhdokkaat = (List<Ehdokkaat>) (request.getAttribute("ehdokasLista"));

		for (int i = 0; i < kaikkiEhdokkaat.size(); i++) {
			
			Ehdokkaat e=kaikkiEhdokkaat.get(i);
			
			out.print(e.getEhdokasId() + " ");
			out.print(e.getSukunimi() + " ");
			out.print(e.getEtunimi() + " ");
			out.print("<a href='HaeEhdokas?id=" + e.getEhdokasId() + "'>Hae</a><br>");
		}
	%>
	

</body>
</html>