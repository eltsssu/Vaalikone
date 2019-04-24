package vaalikone;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.client.Invocation.Builder;
import javax.ws.rs.core.MediaType;

import persist.Kysymykset;

@WebServlet(
    name = "KysymysServlet",
    urlPatterns = {"/hello"}
)
public class KysymysServlet extends HttpServlet {

  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response) 
      throws IOException {

	  response.setContentType("text/html;charset=UTF-8");
	  PrintWriter out=response.getWriter();
		String uri = "http://127.0.0.1:8080/rest/kysymyspalvelu/lisaaKysymys";
		try {
			
			Client asiakas=ClientBuilder.newClient();
			
			WebTarget wt=asiakas.target(uri);
			Builder b=wt.request();
			
			Kysymykset postTietokone = new Kysymykset();
			Entity e = Entity.entity(postTietokone, MediaType.APPLICATION_JSON);
			Kysymykset palautettu = b.post(e, Kysymykset.class);
			
			out.println(palautettu);

			
		}
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
  }
}