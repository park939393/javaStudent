<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="pink">
<%
	String age = request.getParameter("age");
	String name = (String)request.getAttribute("name");

%>

어린이 집 입장 환영해요~<br>
나이 : <%=age %><br>
이름 : <%=name %>

</body>
</html>