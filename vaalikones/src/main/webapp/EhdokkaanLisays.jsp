<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*,vaalikone.Yllapito,persist.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EhdokkaanLisays</title>
<link href="style.css" rel="stylesheet" type="text/css">
<div id="container">
</head>
<link href="style.css" rel="stylesheet" type="text/css">
<div id="container">
<h1>Ehdokkaan Lis�ys</h1>
<body>

	<div class=Lisays>

		<form action="TallennaEhdokas" id="EhdokkaanLisays" method="post">
			<label>Sukunimi </label><input type="text" name="sukunimi"
				value="sukunimi" /><br> <label>Etunimi </label><input
				type="text" name="etunimi" value="etunimi" /><br> <label>Puolue </label><input
				type="text" name="puolue" value="puolue" /><br> <label>Kotipaikkakunta </label><input
				type="text" name="kotipaikkakunta" value="kotipaikkakunta" /><br>
			<label>Ik� </label><input type="text" name="ika" value="5" /><br>
			<label>Miksi eduskuntaan? </label><input type="text"
				name="miksieduskuntaan" value="miksieduskuntaan" /><br> <label>Mit�
				asioita haluat edustaa? </label><input type="text" name="mitahaluat"
				value="mitahaluat" /><br> <label>Ammatti </label><input
				type="text" name="ammatti" value="ammatti" /><br> <input
				type="submit" id="submitnappi" value="Lis��" /><br>
		</form>

		

	</div>

</body>
</div>
</html>