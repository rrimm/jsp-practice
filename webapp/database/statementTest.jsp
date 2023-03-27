<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<%
Connection conn = null;
String sql = "INSERT INTO student(num,name) VALUES(6,'홍길동')";

try {
	Context init = new InitialContext();
	DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/MysqlDB");
	conn = ds.getConnection();

	Statement stmt = conn.createStatement();

	int result = stmt.executeUpdate(sql);
	if (result != 0) {
		out.println("<h3>레코드가 등록되었습니다.</h3>");
	}
} catch (Exception e) {
	out.println("<h3>레코드 등록에 실패하였습니다.</h3>");
	e.printStackTrace();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>