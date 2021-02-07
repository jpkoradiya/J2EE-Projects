<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JDBC VERIFY PAGE</title>
</head>
<body>
<% 

String p1=request.getParameter("un");
String p2=request.getParameter("pwd");


int i = 0;
String u="";
String p="";

Class.forName("com.mysql.jdbc.Driver");
Connection c=DriverManager.getConnection("jdbc:mysql://mymysql.senecacollege.ca:3306/?user=db_jpkoradiya","db_jpkoradiya","3M+dmO0+bh");
Statement st=c.createStatement();
ResultSet r = st.executeQuery("select * from userdata where username='"+p1+"' and password='"+p2+"'");
if( r.next() )
 { 
	String fn=r.getString("firstname");
	String ln=r.getString("lastname");
	session.setAttribute("ss1",fn);
	session.setAttribute("ss2",ln);
	//session.setAttribute("ss3",p2);
	response.sendRedirect("welcome.jsp");
	
	 i=r.getInt("id");;
	session.setAttribute("id1",i);

}

else
{
	
	response.sendRedirect("login.jsp");
}
 

st.close();
c.close();
%>
</body>
</html>