<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1">
<tr>
<%

int[] array = {0, 1, 2, 3, 11, 12, 13, 21, 22, 23, 31, 32, 33, 41, 42, 43};

	for(int i = 1; i < array.length; i++) {
		%> <td><%= array[i] %></td> <%
		
		if(i % 3 == 0) {
			%> <tr></tr> <%
		}
	}	
%>
</tr>	 
</table>
</body>
</html>