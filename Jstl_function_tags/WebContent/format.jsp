<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP FORMAT PAGE</title>
</head>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<body>
<fmt:setLocale value="${param.flag}"/>
<fmt:setBundle basename="s" var="i"/>
<fmt:message key="fn" bundle="${i}"></fmt:message> :<input type="text"></input><br/><br/>
<fmt:message key="ln" bundle="${i}"></fmt:message> :<input type="text"></input><br/><br/>

CHOOSE LANGUAGE ?

<br>
<a href="format.jsp?flag=en">ENGLISH</a><br>
<a href="format.jsp?flag=gu">GUJARATI</a><br>
<a href="format.jsp?flag=hi">HINDI</a>

</body>
</html>