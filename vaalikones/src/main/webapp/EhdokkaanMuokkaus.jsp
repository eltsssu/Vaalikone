<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*,vaalikone.Yllapito,persist.*"%>
<%@page import="persist.Ehdokkaat"%>


<%
List<Ehdokkaat> kaikkiEhdokkaat = (List<Ehdokkaat>) (request.getAttribute("ehdokasLista"));

if (kaikkiEhdokkaat==null) {
	System.out.println("JSP Ei ehdokkaita");
}
else {
	System.out.println("JSP ON ehdokkaita");
}



Ehdokkaat e=null;
try{
e=(Ehdokkaat)(kaikkiEhdokkaat.get(0));
}
catch(Exception z){
	out.println("Ehdokkaan poiminta on mukavaa toimintaa");
}
%>

<!DOCTYPE html>
<html>
<link href="style.css" rel="stylesheet" type="text/css">
<div id="container">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EhdokkaanMuokkaus</title>
<!-- <link href="style.css" rel="stylesheet" type="text/css"> -->
</head>
<h1>Ehdokkaan Muokkaus</h1>
<body>

	<form action="MuokkaaEhdokas" id="EhdokkaanMuokkaus"  method="post">
		<input type="hidden" name="muokattavaId" value='<%=e.getEhdokasId() %>'>
		<label>Sukunimi: </label><input type='text' name='sukunimi' value='<%=e.getSukunimi() %>'><br>
		<label>Etunimi: </label><input type='text' name='etunimi' value='<%=e.getEtunimi() %>'><br>
		<label>Puolue: </label><input type='text' name='puolue' value='<%=e.getPuolue()%>'><br>
		<label>Kotipaikkakunta: </label><input type='text' name='kotipaikkakunta' value='<%=e.getKotipaikkakunta()%>'><br>
		<label>Ik‰: </label><input type='text' name='ika' value='<%=e.getIka()%>'><br>
		<label>Miksi eduskuntaan: </label><input type='text' name='miksiEduskuntaan' value='<%=e.getMiksiEduskuntaan()%>'><br>
		<label>MitÔ‰ asioita haluat edist‰‰: </label><input type='text' name='mitaAsioitaHaluatEdistaa' value='<%=e.getMitaAsioitaHaluatEdistaa()%>'><br>
		<label>Ammatti: </label><input type='text' name='ammatti' value='<%=e.getAmmatti()%>'><br>
		
		<input type="submit" id="submitnappi2" formaction="/PoistaEhdokas" value="Poista" />		
		<input type="submit" id="submitnappi1" value="P‰ivit‰" />		
	</form>
</body>
</div>
</html>