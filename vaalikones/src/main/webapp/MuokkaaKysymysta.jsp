<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.util.*,vaalikone.Yllapito,persist.*"%>

<%@page import="javax.ws.rs.client.Client"%>
<%@page import="javax.ws.rs.client.ClientBuilder"%>
<%@page import="javax.ws.rs.client.Entity"%>
<%@page import="javax.ws.rs.client.WebTarget"%>
<%@page import="javax.ws.rs.client.Invocation.Builder"%>
<%@page import="javax.ws.rs.core.GenericType"%>
<%@page import="javax.ws.rs.core.MediaType"%>
<%@page import="javax.ws.rs.client.Client"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Kysymyksen muokkaus</title>
<link href="style.css" rel="stylesheet" type="text/css">

</head>
<div id="container">
<h1>Kysymyksen muokkaus</h1>

<body>

	<%
		response.setContentType("text/html;charset=UTF-8");

		String id = request.getParameter("id");

		String uri = "http://127.0.0.1:8080/rest/kysymyspalvelu/haeYksiKysymys/" + id;
		Client asiakas = ClientBuilder.newClient();

		WebTarget wt = asiakas.target(uri);
		Builder b = wt.request();

		Kysymykset k = b.get(Kysymykset.class);

		//		Kysymykset k = "./rest/kysymyspalvelu/haeYksiKysymys/id";
	%>

	<table>
		<tbody>
			<tr>
				<td>
					<form id='lomake2' onsubmit="return false;">
						<tr>
							<td><label>Kysymys </label></td>
							<td><input type='text' name='kysymys'
								value="<%=k.getKysymys()%>" /></td>
						</tr>
					</form>
				</td>
			</tr>

			<tr>
				<td><button onclick="muokkaakysymysta();">Muokkaa</button>
					<button onclick="poistakysymys();">Poista</button></td>
			</tr>
		</tbody>
	</table>
	</div>
</body>

<script>
	function muokkaakysymysta() {

	}

	function poistakysymys() {

	}
</script>
</html>