<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
Connection conn = null;

String driver = "com.mysql.cj.jdbc.Driver";

String url = "jdbc:mysql://localhost:3306/jpa?characterEncoding=utf8";	// jpa 데이터베이스를 사용하겠다고 지정
Boolean connect = false;

try {

	Class.forName(driver);	// 드라이버 로드
	conn = DriverManager.getConnection(url, "root", "123456");	// 연결객체 생성
	connect = true;
	conn.close();
} catch (Exception e) {
	connect = false;
	e.printStackTrace();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC 연동 테스트 예제</title>
</head>
<body>
	<h3>
		<%
		if (connect == true) {
		%>
		연결되었습니다.
		<%
		} else {
		%>
		연결에 실패하였습니다.
		<%
		}
		%>

	</h3>
</body>
</html>