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
<title>Insert title here</title>
</head>
<body>

<%

response.setContentType("text/html;charset=UTF-8");

String uri = "http://127.0.0.1:8080/rest/kysymyspalvelu/haeKysymykset";
Client asiakas = ClientBuilder.newClient();

WebTarget wt = asiakas.target(uri);
Builder b = wt.request();
GenericType<List<Kysymykset>> x = new GenericType<List<Kysymykset>>() {};

List<Kysymykset> palautettu = b.get(x);

//List<Kysymykset> kaikkiKysymykset = (List<Kysymykset>) (request.getAttribute("kysymysLista"));

 for (int i = 0; i < palautettu.size(); i++) {

	Kysymykset k = palautettu.get(i);

	out.print(k.getKysymys() + " ");

	out.print("<a href='HaeKysymys?id=" + k.getKysymysId() + "'>Hae</a><br>");

}


 
 out.println("Tadaa!");
%>

</body>
</html>