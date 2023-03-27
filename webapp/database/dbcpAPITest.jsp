<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<%
Connection conn = null;

try {
	Context initCtx = new InitialContext();
// 	DataSource ds = (DataSource) initCtx.lookup("java:comp/env/jdbc/MysqlDB");
	Context envCtx = (Context)initCtx.lookup("java:comp/env");
	DataSource ds = (DataSource) envCtx.lookup("jdbc/MysqlDB");
	conn = ds.getConnection();

	out.println("<h3>연결되었습니다.</h3>");
} catch (Exception e) {
	out.println("<h3>연결에 실패하였습니다.</h3>");
	e.printStackTrace();
}
%>
