<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSTL FUNCTION TAGS PAGE</title>
</head>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
 
<body>
<c:set var="name" value="pari doshi"></c:set>
${"name contains 'p':-"}${f:contains(name,'p')}<br/>

${"name containsIgnorecase 'p':-"}${f:containsIgnoreCase(name,'A')}<br/>

${"name starts with 'pari':-"} ${f:startsWith(name,'pari') }<br/>

${"name ends with 'doshi':-"}${f:endsWith(name,'doshi')}<br/>

<c:set var="string1" value="It is <html>second String.</html>"></c:set>
${"string1 contains xml tag:-"} ${f:escapeXml(string1)}<br/>

${"Index of doshi in name:-"} ${f:indexOf(name,'doshi')}<br/>

${"name in upper case:-"} ${f:toUpperCase(name)}<br/>

${"name in lower case:-"} ${f:toLowerCase(name)}<br/>

${"substring:-"} ${f:substring(name,0,4)}<br/>

${"substring after 'pari':-"} ${f:substringAfter(name,"pari") }<br/>

${"substring before 'doshi':-"} ${f:substringBefore(name,"doshi") }<br/>

<c:set var="string2" value="abc html"></c:set>
${"string2 value is:-"}${string2}<br/>
${"replace xys with pqr:-"} ${f:replace(string2,'html','pqr')}<br/>

<c:set var="str1" value="Welcome-to-JSP-Programming."></c:set>  
${"str1 value is:-"}${str1}<br/>

<c:set var="str2" value="${f:split(str1, '-')}"></c:set>
${"splited value is:-"}
<c:forEach items="${str2}" var="z">
	${z}<br/>
</c:forEach>

<c:set var="str3" value="${f:join(str2, ' ')}" /><br/>
${"join value is:-"}${str3}<br/> 


<c:set var="str4" value="   hello  world!!!     "></c:set>
${"length of str4 is:-"}${f:length(str4)}<br/>
<c:set var="str5" value="${f:trim(str4)}"></c:set>
${"triiming value of str4 is:-"}${f:length(str5)}


</body>
</html>