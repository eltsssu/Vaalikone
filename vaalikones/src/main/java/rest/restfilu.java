package rest;

import javax.ws.rs.GET;
import javax.ws.rs.POST;

import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;

import java.util.ArrayList;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.ws.rs.Consumes;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import persist.Kysymykset;

@Path ("/kysymyspalvelu")
public class restfilu {
	@POST
	@Path("/lisaaKysymys")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	public Kysymykset postRiista(Kysymykset k) {
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("vaalikones");
		EntityManager em=emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(k);
		em.getTransaction().commit();
		
		return k;
	}

}
