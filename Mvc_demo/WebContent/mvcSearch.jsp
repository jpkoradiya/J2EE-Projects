<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MVC SEARCH PAGE</title>
</head>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> 
<body>
<%-- <form action="<%=request.getContextPath()%>/SearchController" method="post">
FIRST_NAME<input type="text" name="fn"><br/><br/>
LAST NAME	<input type="text" name="ln"><br/><br/>
<input type="submit" value="Search"><br/><br/>
</form> --%>

<table border="1px solid black">
<tr>
	<th>Id</th>
	<th>FirstName</th>
	<th>LastName</th>
	<th>Action</th>
</tr>
<c:forEach items="${sessionScope.list}" var="i">
<tr>
	<td>${i.id}</td>
	<td>${i.fn}</td>
	<td>${i.ln}</td>
	<td colspan="2"><a href="<%=request.getContextPath()%>/DeleteController?Id=${i.id}">Delete</a>&nbsp&nbsp&nbsp
	<a href="<%=request.getContextPath()%>/EditController?Id=${i.id}">Edit</a></td>
</tr>
</c:forEach>
</table>
</body>
</html>