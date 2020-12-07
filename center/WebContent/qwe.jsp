<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
		<table border = "1">
<%
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager.getConnection
		("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
		Statement stmt = conn.createStatement();
		String query = "select salelist.saleno, salelist.scode, salelist.saledate, pizza.pname, salelist.amount s from TBL_PIZZA_01 pizza, TBL_SALELIST_01 salelist where pizza.PCODE = salelist.PCODE";
		ResultSet rs = stmt.executeQuery(query);
		while (rs.next()) {
			%>
				<tr>
					<td><%= rs.getString(1) %></td>
					<td><%= rs.getString(2) %></td>
					<td><%= rs.getString(3) %></td>	
					<td><%= rs.getString(4) %></td>	
					<td><%= rs.getString(5) %></td>	
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