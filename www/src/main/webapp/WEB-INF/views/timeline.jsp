<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
오후 일정 : 5시30분까지 숨도 쉬지말고 화장실도 가지말고
잠도 자면 안되고, 브롤하기

<a href="<%=request.getContextPath()%>/viewMessage?time=4&name=human">[시간표보기]</a>
<!-- get방식 -->
<form action="viewMessage" method="get">
	<input type="text" name="name">
	<input type="text" name="time">
	<input type="text" name="age">
	<input type="submit" value="전송">
</from>
<!-- post방식 -->
<form action="viewMessage" method="post">
	<input type="text" name="name">
	<input type="text" name="time">
	<input type="text" name="age">
	<input type="submit" value="전송">
</from>
</body>
</html>