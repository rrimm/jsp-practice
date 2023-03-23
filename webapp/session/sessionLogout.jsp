<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
if (session.getAttribute("id") == null || session.getAttribute("id") == "") {
%>
<script>
    location.href = "sessionLogin.jsp";
</script>
<%
}
session.removeAttribute("id");
%>
<h3>로그아웃 되었습니다.</h3>
<a href="sessionLogin.jsp">로그인 페이지로 이동</a>