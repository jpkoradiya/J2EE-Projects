package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.Reg_Dao;
import VO.Reg_Vo;

/**
 * Servlet implementation class UpdateController
 */
@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateController() {
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
		String s1=request.getParameter("fn");
		String s2=request.getParameter("ln");
		int id=Integer.parseInt(request.getParameter("id"));
		
		Reg_Vo v=new  Reg_Vo();
		v.setFn(s1);
		v.setLn(s2);	
		v.setId(id);
		
		Reg_Dao d=new Reg_Dao();
		d.update(v);
		List ls=d.search1(v);
		
		HttpSession session=request.getSession();
		session.setAttribute("list",ls);
		response.sendRedirect("mvcSearch.jsp");			
		
	}

}
