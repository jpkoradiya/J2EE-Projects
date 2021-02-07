<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JDBC CHANGE PASSWORD PAGE</title>
</head>
<body>
<form action="verifypass.jsp">
OLD_PASSWORD<input type="text" name="op"><br/><br/>
NEW_PASSWORD<input type="text" name="np"><br/><br/>
CONFIRM_PASSWORD<input type="text" name="cp"><br/><br/>
<input type="submit" value="Change">
</form>
</body>
</html>