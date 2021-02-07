<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JDBC WELCOME PAGE</title>
</head>
<body>
<% 
out.println("welcome : ");%>

<% String fn1=(String)session.getAttribute("ss1");
out.println(fn1);%><br/>

<% 
String ln1=(String)session.getAttribute("ss2");
out.println(ln1); %><br/>

<a href="change.jsp">CHANGE PASSWORD</a>
</body>
</html>