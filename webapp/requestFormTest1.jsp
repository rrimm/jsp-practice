<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>가입 예제</h1>

	<table border="1" width="400">
		<tr>
			<td>이름</td>
			<td><%=request.getParameter("name")%></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><%=request.getParameter("password")%></td>
		</tr>
		<tr>
			<td>주민번호</td>
			<td><%=request.getParameter("jumin")%></td>
		</tr>
		<tr>
			<td>성별</td>
			<td>
				<%
				if (request.getParameter("gender").equals("male")) {
				%>
				남자
				<%
				} else {
				%>여자<%
				}
				%>

			</td>
		</tr>
		<tr>
		<tr>
			<td>전화번호</td>
			<td><%=request.getParameter("tel")%></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><%=request.getParameter("email")%></td>
		</tr>
			<td>취미</td>
			<td>
				<%
				String[] hobby = request.getParameterValues("hobby");
				for (int i = 0; i < hobby.length; i++) {
				%>
				<%=hobby[i]%>&nbsp;,
				<%
				}
				%>

			</td>
		</tr>
		<tr>
		<tr>
			<td>자기소개</td>
			<td><%=request.getParameter("intro")%></td>
		</tr>
			<td colspan="2">
				<input type="submit" value="전송">
			</td>
		</tr>

	</table>
</body>
</html>