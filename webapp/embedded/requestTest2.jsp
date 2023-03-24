<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ import="java.util.Enumeration" %>
<html>
<head>
<meta charset="UTF-8">
<title>Request Test2</title>
</head>
<body>
<h1>헤더정보 예제</h1>
<table border="1">
<tr>
<td>헤더이름</td>
<td>헤더값</td>
</tr>
<%
Enumeration e =request.getHeaderNames();
while(e.hasMoreElements()){
	String headerName=(String)e.nextElement();
	%>
	<tr>
<td><%=headerName %></td>
<td><%=request.getHeader(headerName) %>
</td>
</tr>
<%}%>

</table>
</body>
</html>