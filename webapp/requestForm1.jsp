<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="requestFormTest1.jsp" method="post">
<table border="1" width="400">
<tr>
<td>이름</td>
<td><input type="text" name="name"></td>
</tr>
<tr>
<td>비밀번호</td>
<td><input type="password" name="password"></td>
</tr>
<tr>
<td>주민번호</td>
<td><input type="text" name="jumin"></td>
</tr>
<tr>
<td>성별</td>
<td>
남<input type="radio" name="gender" value="male">
여<input type="radio" name="gender" value="female">
</td>
</tr>
<tr>
<td>전화번호</td>
<td><input type="text" name="tel"></td>
</tr>
<tr>
<td>이메일</td>
<td><input type="text" name="email"></td>
</tr>
<tr>
<td>취미</td>
<td>
독서<input type="checkbox" name="hobby" value="독서">
게임<input type="checkbox" name="hobby" value="게임">
TV시청<input type="checkbox" name="hobby" value="TV">
축구<input type="checkbox" name="hobby" value="축구">
기타<input type="checkbox" name="hobby" value="기타">
</td>
</tr>
<tr>
<tr>
<td>자기소개</td>
<td><input type="text" name="intro"></td>
</tr>
<td colspan="2"><input type="submit" value="전송"></td>
</tr>
</table>
</form>
</body>
</html>