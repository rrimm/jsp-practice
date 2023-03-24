<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.Calendar" %>
<!-- 스크립틀릿: 자바코드 기술 영역 -->
<% 
Calendar c=Calendar.getInstance();
int hour=c.get(Calendar.HOUR_OF_DAY);
int minute=c.get(Calendar.MINUTE);
int second=c.get(Calendar.SECOND);
%>
<html>
<head>
<meta charset="UTF-8">
<title>Scriptlet Test</title>
</head>
<body>
<!-- 변수, 리턴값, 수식이 오는 위치 -->
<h1>현재시간은 <%=hour %>시 <%=minute %>분 <%=second %>초 입니다.</h1>
</body>
</html>