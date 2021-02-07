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
 * Servlet implementation class servlet_search
 */
@WebServlet("/servlet_search")
public class servlet_search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public servlet_search() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			
			response.setContentType("text/html");
			Class.forName("com.mysql.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost/demodb","root","root");
			Statement st=c.createStatement();
			ResultSet rs=st.executeQuery("select * from test");

			PrintWriter p = response.getWriter();
			p.println("<html><body>");
			p.println("<table border=1 width=50% height=50%>");
            p.println("<tr><th>Id</th><th>FirstName</th><th>LastName</th><th>Action</th></tr>");
            while(rs.next())
            {
            int id=rs.getInt("Id");	
            String fn=rs.getString("Firstname");
            String ln=rs.getString("Lastname");
            p.println("<tr><td>" + id + "</td><td>" + fn + "</td><td>" + ln + "</td><td><a href=servlet_delete?Id="+id+">Delete</a><a href=servlet_update?Id="+id+">Edit</a></td></tr>"); 
            }
            p.println("</table>");
            p.println("</html></body>");
            c.close();
			st.close();
		
		} 
		catch (Exception e) {
			// TODO: handle exception
		}
		
	}

}
