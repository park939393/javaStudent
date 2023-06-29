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
request.setCharacterEncoding("utf-8");
String gender = request.getParameter("gender");

String chk_mail = request.getParameter("chk_mail");

String content = request.getParameter("content");

out.println("당신의 성별은  " + gender +" 이며" + " 메일 수신 여부에 " + chk_mail +" 하셨습니다.<br>");

out.println("당신의 가입인사 :" + "<pre>" + content +"<pre>");

%>

</body>
</html>