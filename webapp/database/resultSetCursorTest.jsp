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

	PreparedStatement pstmt = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
	ResultSet rs = pstmt.executeQuery();
	
	rs.last();
	out.println(rs.getInt(1) + "," + rs.getString(2) + "<br>");
	rs.first();
	out.println(rs.getInt(1) + "," + rs.getString(2) + "<br>");
	rs.absolute(3);
	out.println(rs.getInt(1) + "," + rs.getString(2) + "<br>");

} catch (Exception e) {
	out.println("<h3>데이터 가져오기에 실패하였습니다.</h3>");
	e.printStackTrace();
}
%>
