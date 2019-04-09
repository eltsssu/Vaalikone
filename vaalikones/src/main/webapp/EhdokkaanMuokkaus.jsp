<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*,vaalikone.Yllapito,persist.*"%>
<%@page import="persist.Ehdokkaat"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EhdokkaanMuokkaus</title>
</head>
<h1>Ehdokkaan Muokkaus</h1>
<body>
	


<!-- 	<form action="" id="EhdokkaanMuokkaus"> -->
<%-- 		<label>Etunimi: </label><input type='text' name='etunimi' value='<%=e.getEtunimi()%>'> --%>
<%-- 		<label>Sukunimi: </label><input type='text' name='sukunimi' value='<%=e.getSukunimi()%>'> --%>
<%-- 		<label>Puolue: </label><input type='text' name='puolue' value='<%=e.getPuolue()%>'> --%>
<%-- 		<label>Kotipaikkakunta: </label><input type='text' name='kotipaikkakunta' value='<%=e.getKotipaikkakunta()%>'> --%>
<%-- 		<label>Ik‰: </label><input type='text' name='ika' value='<%=e.getIka()%>'> --%>
<%-- 		<label>Miksi eduskuntaan: </label><input type='text' name='miksiEduskuntaan' value='<%=e.getMiksiEduskuntaan()%>'> --%>
<%-- 		<label>Mit‰ asioita haluat edist‰‰: </label><input type='text' name='mitaAsioitaHaluatEdistaa' value='<%=e.getMitaAsioitaHaluatEdistaa()%>'> --%>
<%-- 		<label>Ammatti: </label><input type='text' name='ammatti' value='<%=e.getAmmatti()%>'> --%>
				
<!-- 		<input type="submit" id="submitnappi" value="P‰ivit‰" /><br> -->




<!-- 	</form> -->
<%-- <% 			 
// List<Ehdokkaat> kaikkiEhdokkaat = (List<Ehdokkaat>) (request.getAttribute("ehdokaslista"));

// String id = request.getParameter(id);

%> --%>
	<form action="" id="EhdokkaanMuokkaus">
		<label>Sukunimi </label><input type='text' name='sukunimi' value=''><br>
		<label>Etunimi </label><input type='text' name='etunimi' value=''><br>
		<label>Puolue </label><input type='text' name='puolue' value=''><br>
		<label>Kotipaikkakunta </label><input type='text' name='kotipaikkakunta' value=''><br>
		<label>Ik‰ </label><input type='text' name='ika' value=''><br>
		<label>Miksi eduskuntaan? </label><input type='text' name='miksiEduskuntaan' value=''><br>
		<label>Mit‰ asioita haluat edist‰‰? </label><input type='text' name='mitaAsioitaHaluatEdistaa' value=''><br>
		<label>Ammatti </label><input type='text' name='ammatti' value=''><br>
			
		<input type="submit" id="submitnappi" value="P‰ivit‰" />




	</form>

</body>
</html>