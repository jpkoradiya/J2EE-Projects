package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Reg_Dao;
import VO.Reg_Vo;

/**
 * Servlet implementation class Reg_Controller
 */
@WebServlet("/RegController")
public class RegController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try 
		{
			String s1=request.getParameter("fn");
			String s2=request.getParameter("ln");
			
			Reg_Vo v=new  Reg_Vo();
			v.setFn(s1);
			v.setLn(s2);
				
			
			Reg_Dao d=new Reg_Dao();
			d.insert(v);
			
		} 
		catch (Exception e) {
			// TODO: handle exception
		}
	response.sendRedirect("mvcReg.jsp");
	}

}
