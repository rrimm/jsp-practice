<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- join.JoinBean class를 활용하여 join 객체 생성 -->
<jsp:useBean id="join" class="join.JoinBean" />
<jsp:setProperty name="join" property="*" />
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 입력 정보 확인 페이지</title>
</head>
<body>
	<center>
		<table border=1>
			<tr>
				<td bgcolor="yellow">
					<font size=2>아이디:</font>
				</td>
				<td bgcolor="yellow">
					<jsp:getProperty name="join" property="id" />
<%-- 					<%=join.getId() %> --%>
				</td>
			</tr>
			<tr>
				<td bgcolor="yellow">
					<font size=2>비밀번호:</font>
				</td>
				<td bgcolor="yellow">
					<jsp:getProperty name="join" property="pass" />
				</td>
			</tr>
			<tr>
				<td bgcolor="yellow">
					<font size=2>이름:</font>
				</td>
				<td bgcolor="yellow">
					<jsp:getProperty name="join" property="name" />
				</td>
			</tr>
			<tr>
				<td bgcolor="yellow">
					<font size=2>성별:</font>
				</td>
				<td bgcolor="yellow">
					<jsp:getProperty name="join" property="sex" />
				</td>
			</tr>
			<tr>
				<td bgcolor="yellow">
					<font size=2>나이:</font>
				</td>
				<td bgcolor="yellow">
					<jsp:getProperty name="join" property="age" />
				</td>
			</tr>
			<tr>
				<td bgcolor="yellow">
					<font size=2>이메일주소:</font>
				</td>
				<td bgcolor="yellow">
					<jsp:getProperty name="join" property="email" />
				</td>
			</tr>
		</table>
	</center>
</body>
</html>