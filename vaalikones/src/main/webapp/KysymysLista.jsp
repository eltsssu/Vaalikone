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
  
  <%@page import="" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String uri = "http://127.0.0.1:8080/rest/kysymyspalvelu/haeKysymykset";
Client asiakas = ClientBuilder.newClient();


WebTarget wt = asiakas.target(uri);
Builder b = wt.request();
GenericType<ArrayList<Kysymykset>> x = new GenericType<ArrayList<Kysymykset>>() {
};

ArrayList<Kysymykset> palautettu = b.get(x);


out.print("<a href='HaeEhdokas?id=" + k.getKysymysId() + "'>Hae</a><br>");
out.println(palautettu);

%>







</body>
</html>