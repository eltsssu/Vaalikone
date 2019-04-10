package vaalikone;

import java.io.PrintWriter;
import java.util.List;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import persist.Ehdokkaat;

import javax.persistence.*;

/**
 * Servlet implementation class MuokkaaEhdokas
 */
public class MuokkaaEhdokas extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MuokkaaEhdokas() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		List<Ehdokkaat> kaikkiEhdokkaat = (List<Ehdokkaat>) (request.getAttribute("ehdokasLista"));
//		
//		Ehdokkaat e=null;
//		try{
//		e=(Ehdokkaat)(kaikkiEhdokkaat.get(0));
//		}
//		
//		catch(Exception z){
//			
//		}
		
		
		String sukunimi = request.getParameter("sukunimi");
		String etunimi = request.getParameter("etunimi");
		String puolue = request.getParameter("puolue");
		String kotipaikkakunta = request.getParameter("kotipaikkakunta");
		Integer ika = Integer.parseInt(request.getParameter("ika"));
		String miksi = request.getParameter("miksiEduskuntaan");
		String mita = request.getParameter("mitaAsioitaHaluatEdistaa");
		String ammatti = request.getParameter("ammatti");
		
		EntityManagerFactory emf = null;
		EntityManager em = null;
		
		try {
			emf = Persistence.createEntityManagerFactory("vaalikones");
			em = emf.createEntityManager();
			em.getTransaction().begin();
			int x=0;
			
			String id = request.getParameter("muokattavaId");
			Integer ehdokas_id=Integer.parseInt(id);
//			
//			Query q = em.createQuery("SELECT e FROM Ehdokkaat e WHERE e.ehdokasId=?1");
//			q.setParameter(1, ehdokas_id);
//			List<Ehdokkaat> kaikkiEhdokkaat = (List<Ehdokkaat>)(q.getResultList());
			
			Ehdokkaat eh = (Ehdokkaat) em.find(Ehdokkaat.class, ehdokas_id);
			
			eh.setSukunimi(sukunimi);
			eh.setEtunimi(etunimi);
			eh.setPuolue(puolue);
			eh.setKotipaikkakunta(kotipaikkakunta);
			eh.setIka(ika);
			eh.setMiksiEduskuntaan(miksi);
			eh.setMitaAsioitaHaluatEdistaa(mita);
			eh.setAmmatti(ammatti);
			em.merge(eh);
			em.getTransaction().commit();
			em.close();	
		
			
		} catch (Exception z) {
			response.getWriter().println("EMF+EM EI Onnistu");

			z.printStackTrace(response.getWriter());
			return;
		}
		
		response.sendRedirect("/Yllapito");
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
