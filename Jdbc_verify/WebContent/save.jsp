<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JDBC SAVE PAGE</title>
</head>
<body>
<%
String s1=request.getParameter("fn");
String s2=request.getParameter("ln");
String s3=request.getParameter("un");
String s4=request.getParameter("pwd");


Class.forName("com.mysql.jdbc.Driver");
Connection c=DriverManager.getConnection("jdbc:mysql://mymysql.senecacollege.ca:3306/?user=db_jpkoradiya","db_jpkoradiya","3M+dmO0+bh");
Statement s=c.createStatement();
s.executeUpdate("insert into userdata(firstname,lastname,username,password) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')");
s.close();
c.close();
response.sendRedirect("login.jsp");
%>
</body>
</html>