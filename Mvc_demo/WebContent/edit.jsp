<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MVC EDIT PAGE</title>
</head>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> 
<body>
<form action="UpdateController" method="post">

<c:forEach items="${sessionScope.list}" var="i">
FIRST_NAME<input type="text" name="fn" value="${i.fn}"><br/>
LAST NAME	<input type="text" name="ln" value="${i.ln}"><br/>
<input type="hidden" name="id" value="${i.id}"/><br/>
<input type="submit" value="Edit"><br/><br/>
</c:forEach>
</form>
</body>
</html>