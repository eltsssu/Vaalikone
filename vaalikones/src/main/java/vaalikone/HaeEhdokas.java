package vaalikone;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import persist.Ehdokkaat;
import persist.Kysymykset;

/**
 * Servlet implementation class HaeEhdokas
 */
public class HaeEhdokas extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HaeEhdokas() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		EntityManagerFactory emf = null;
		EntityManager em = null;

		try {

			emf = Persistence.createEntityManagerFactory("vaalikones");
			em = emf.createEntityManager();
			
			Ehdokkaat ehdokkaat = new Ehdokkaat();
			
			Integer id = ehdokkaat.getEhdokasId();
			Ehdokkaat ehdokas = em.find(Ehdokkaat.class, id);

			System.out.println(ehdokas);
			
			

			String ehdokasID = (request.getParameter("id"));

			RequestDispatcher rd = request.getRequestDispatcher("EhdokkaanMuokkaus.jsp");
			request.setAttribute("ehdokasID", ehdokasID);
			rd.forward(request, response);
		}

		catch (Exception e) {

		}
		
  
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
