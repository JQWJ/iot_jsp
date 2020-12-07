<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
String section = request.getParameter("section") != null ? request.getParameter("section") : ""; 
%>
</head>
<body>

<ul>
	<li><a href="index.jsp?section=a">a</a></li>
	<li><a href="index.jsp?section=b">b</a></li>
	<li><a href="index.jsp?section=c">c</a></li>
</ul>

<%
switch(section) {
case "a" :
	%> <%@include file="page/a.jsp" %> <%
	break;
case "b" :
	%> <%@include file="page/b.jsp" %> <%
	break;
case "c" :
	%> <%@include file="page/c.jsp" %> <%
	break;
default :
	out.println("메인 페이지 입니다.");
}
%>
</body>
</html>