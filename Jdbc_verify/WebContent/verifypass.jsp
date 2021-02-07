<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JDBC VERIFY PASSWORD PAGE</title>
</head>
<body>
<% 

Integer id2=(Integer)session.getAttribute("id1");
String op1=request.getParameter("op");
String np1=request.getParameter("np");
String cp1=request.getParameter("cp");
//String ps=(String)session.getAttribute("ss3");
Class.forName("com.mysql.jdbc.Driver");
Connection c=DriverManager.getConnection("jdbc:mysql://mymysql.senecacollege.ca:3306/?user=db_jpkoradiya","db_jpkoradiya","3M+dmO0+bh");
Statement st=c.createStatement();
ResultSet r = st.executeQuery("select * from userdata where UID="+id2);
String ps="";
if( r.next() )
{
ps=r.getString("password");
}

if(op1.equals(ps) && np1.equals(cp1))
{
	//out.println(op1);
	//out.println(np1);
	//out.println(cp1);

st.executeUpdate("update userdata set password='"+cp1+"' where id="+id2);	
response.sendRedirect("login.jsp");
}
else
{
	response.sendRedirect("change.jsp");
}
%>

</body>
</html>