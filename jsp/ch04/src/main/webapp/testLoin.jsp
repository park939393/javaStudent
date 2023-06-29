<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>당신이 입력한 값은(고전적 방식)</h2>

아이디 : <%=request.getParameter("id") %><br>
암호 : <%=request.getParameter("pwd") %>
<hr>
<h2>당신이 입력한 값은(EL 방식)</h2>
아이디 : ${param.id}<br>
암호 : ${param.pwd}<br>

</body>
</html>