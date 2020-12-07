<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/css.css"></link>
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
	<%@include file="static/header.jsp" %>
	<%@include file="static/nav.jsp" %>
	
	<%
		switch(section) {
		case "register":
			%> <%@include file="page/register.jsp" %> <%
			break;
		case "sales_history_inquiry":
			%> <%@include file="page/sales_history_inquiry.jsp" %> <%
			break;
		case "sales_status":
			%> <%@include file="page/sales_status.jsp" %> <%
			break;
		case "category_inquiry":
			%> <%@include file="page/category_inquiry.jsp" %> <%
			break;
		default:
			%> <%@include file="static/index.jsp" %> <%
		}
	%>
	
	<%@include file="static/footer.jsp" %>
</body>
</html>