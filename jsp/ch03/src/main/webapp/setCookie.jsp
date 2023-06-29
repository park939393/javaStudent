<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//1.쿠키 객체를 생성

Cookie c = new Cookie("id", "park0490");

// 2. 쿠키의 유효 기간 설정
c.setMaxAge(2*60); // 초를 기준

//3. 클라이언트에 쿠기 전송

response.addCookie(c);

//4. 추가 쿠키를 생성하여 클라이언트에 전송

response.addCookie(new Cookie("pwd", "1234"));

response.addCookie(new Cookie("age", "20"));

%>

</body>
</html>