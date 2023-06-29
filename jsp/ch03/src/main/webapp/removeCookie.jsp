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
	Cookie c = new Cookie("id","");
	c.setMaxAge(0); // 쿠키의 만료 시간을 설정
	response.addCookie(c);

%>
<h3> id 쿠키가 삭제 되었습니다.</h3>
<a href="getCookie.jsp">쿠키 삭제를 확인하려면 클릭해 보세요</a>
</body>
</html>