package p;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class servlet_update
 */
@WebServlet("/servlet_update")
public class servlet_update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public servlet_update() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int i=0;
		String fn="";
		String ln="";
		
		try {
			
			
			int id1 = Integer.parseInt(request.getParameter("Id"));
			Class.forName("com.mysql.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost/demodb","root","root");
			Statement st=c.createStatement();
			ResultSet r=st.executeQuery("select * from redit where Id='"+id1+"'");

			while ( r.next() )
			{ 
			  
				i =r.getInt("Id");
				fn=r.getString ("Firstname");
				ln=r.getString ("Lastname");
			}
			st.close();
			c.close();

		} 
		catch (Exception e) {
			// TODO: handle exception
		}
	

		PrintWriter p = response.getWriter();
		response.setContentType("text/html");

p.println("<form action=servlet_edit>");
p.println("<table>");
p.println("<tr><td>First_name</td><td><input type=text name=fn value="+fn+"></td></tr>");
p.println("<tr><td>Last_name</td><td><input type=text name=ln value="+ln+"></td></tr>");
p.println("<tr><td><input type=hidden name=id value="+i+">");
p.println("<input type=submit value=submit></td></tr>");
p.println("</table>");
p.println("</form>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
