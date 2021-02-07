<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSTL SQL TAGS EXAMPLE</title>
</head>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jstl/sql_rt" prefix="s"%>
<body>

<s:setDataSource driver="com.mysql.jdbc.Driver"  url="jdbc:mysql://localhost/demodb" user="root" password="root" var="i"/>
<s:update dataSource="${i}">
insert into test(Firstname,Lastname) values('${param.fn}','${param.ln}');
</s:update>

<s:update dataSource="${i}">
update test set Firstname='aa',Lastname='aa' where id=6;
</s:update>


<s:update dataSource="${i}">
delete from test where id=6;

</s:update>

<s:query dataSource="${i}"  var="z">
select * from test;
</s:query>
<c:forEach var="p1" items="${z.rows}">
	<c:out value="${p1}"></c:out><br/>
</c:forEach>
</body>
</html>