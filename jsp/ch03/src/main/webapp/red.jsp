<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="red">
이 파일은 red.jsp입니다<br>
브라우저에 배경색이 빨간색입니다.<br>
노란색으로 나타날까요?<hr>
이제 이 화면은 보이지 않습니다.
<jsp:forward page="yellow.jsp" />


</body>
</html>