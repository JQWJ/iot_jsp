<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
		<table border = "1">
			<tr>
				<td>상품코드</td>
				<td>피자명</td>
				<td>가격</td>
			</tr>
<%
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager.getConnection
		("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
		Statement stmt = conn.createStatement();
		String query = "SELECT * FROM TBL_PIZZA_01, TBL_SALELIST_01 WHERE TBL_PIZZA_01.PCODE = TBL_SALELIST_01.PCODE";
		ResultSet rs = stmt.executeQuery(query);
		while (rs.next()) {
			%>
				<tr>
					<td><%= rs.getString(1) %></td>
					<td><%= rs.getString(2) %></td>
					<td><%= rs.getInt(3) %></td>	
				</tr>
			 <%
		}
		stmt.close();
		conn.close();
	}
	catch (Exception e) {
		e.printStackTrace();
	}
%> 
			</table>