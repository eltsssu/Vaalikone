<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*,vaalikone.Yllapito,persist.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ehdokkaan lisays</title>
</head>
<h1>Ehdokkaan Lisäys</h1>
<body>

	<div class=Lisays>
	
		        <form action="Yllapito" id="ehdokkaanLisaysFormi">
                    <label>Sukunimi</label><input type="text" name="sukunimi" value="" /><br>
                      <label>Etunimi</label><input type="text" name="etunimi" value="" /><br>
                      <label>Puolue</label><input type="text" name="puolue" value="" /><br>
                      <label>Kotipaikkakunta</label><input type="text" name="kotipaikkakunta" value="" /><br>
                      <label>Ikä</label><input type="text" name="ika" value="" /><br>
                      <label>Miksi eduskuntaan?</label><input type="text" name="miksieduskuntaan" value="" /><br>
                      <label>Mitä asioita haluat edustaa?</label><input type="text" name="mitahaluat" value="" /><br>
                      <label>Ammatti</label><input type="text" name="ammatti" value="" /><br>
                    <input type="submit" id="submitnappi" value="Lisää" /><br>
                </form>
	
	
	
	
	
	
	
	</div>

</body>
</html>