<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*,vaalikone.HaeEhdokasLista,persist.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ehdokaslista</title>
</head>
<h1>Ehdokaslista</h1>
<body>

	<%
		List kaikkiEhdokkaat = (List) (request.getAttribute("ehdokaslista"));

		for (int i = 1; i < kaikkiEhdokkaat.size(); i++) {

			out.print("<a href='HaeEhdokas?id=" + e.getId() + "'>Hae</a>");
		}
	%>



</body>
</html>