package vaalikone;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import persist.Ehdokkaat;

/**
 * Servlet implementation class MuokkaaEhdokas
 */

public class HaeEhdokasLista extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HaeEhdokasLista() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		Ehdokkaat ehdokkaat = new Ehdokkaat();
//		
//		Integer id = request.getParameter("id");
//		String sukunimi = request.getParameter("sukunimi");
//		String etunimi = request.getParameter("etunimi");
		
		
	 	EntityManagerFactory emf=null;
        EntityManager em = null;
        
        Query qE = em.createQuery(
                "SELECT e.ehdokasId FROM Ehdokkaat e"
        );
        List<Integer> ehdokasList = qE.getResultList();
        PrintWriter out = response.getWriter();
  
        out.println(ehdokasList);
        
        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
