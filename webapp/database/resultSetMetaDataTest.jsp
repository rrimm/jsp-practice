<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<%
Connection conn = null;
String sql = "SELECT*FROM student";

try {
	Context init = new InitialContext();
	DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/MysqlDB");
	conn = ds.getConnection();

	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	ResultSetMetaData rsmd = rs.getMetaData();

	out.println("컬럼 수:" + rsmd.getColumnCount() + "<br>");
	for (int i = 1; i <= rsmd.getColumnCount(); i++) {
		out.println(i + "번째 컬럼의 이름:" + rsmd.getColumnName(i) + "<br>");
		out.println(i + "번째 컬럼의 타입 이름:" + rsmd.getColumnTypeName(i) + "<br>");
	}

} catch (Exception e) {
	e.printStackTrace();
}
%>
