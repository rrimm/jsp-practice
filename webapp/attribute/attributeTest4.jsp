<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	pageContext.setAttribute("pageScope", "pageValue");
	request.setAttribute("requestScope", "requestValue");
	%>
	pageValue=<%=pageContext.getAttribute("pageScope")%><br> 
	requestValue=<%=request.getAttribute("requestScope")%>
</body>
</html>