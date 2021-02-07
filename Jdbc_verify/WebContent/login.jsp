<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JDBC LOGIN PAGE </title>
</head>
<body>

<form action="verify.jsp">
USER_NAME<input type="text" name="un"><br/><br/>
PASSWORD<input type="password" name="pwd"><br/><br/>
<input type="submit" value="Login">
</form><br/>
<a href="register.jsp">REGISTER</a>
</body>
</html>