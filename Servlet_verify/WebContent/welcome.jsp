<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SERVLET WELCOME PAGE</title>
</head>
<body>
<% 
out.println("welcome : ");%>

<% String fn2=(String)session.getAttribute("fn1");
out.println(fn2);%><br/>

<% 
String ln2=(String)session.getAttribute("ln1");
out.println(ln2); %><br/>


</body>
</html>