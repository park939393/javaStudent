<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>신상 정보</h1>

<%
//스크립트 릿 : 자바 코드를 작성하는 부분

String name = request.getParameter("id");
String pass = request.getParameter("ps");


out.println("이름 : " + name + "<br>" );
out.println("암호 : " + pass );



%>

</body>
</html>