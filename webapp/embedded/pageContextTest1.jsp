<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setAttribute("id", "lee");
pageContext.forward("pageContextTest2.jsp");
// response.sendRedirect("pageContextTest2.jsp");
%>