<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.SimpleDateFormat" %>
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
	Calendar date = Calendar.getInstance();
	SimpleDateFormat today = new SimpleDateFormat("yyyy년 MM월 dd일");
	SimpleDateFormat now = new SimpleDateFormat("hh시 mm분 ss초");

%>

date는 어떻게 찍힐까요 : <%=date %>
<br>

오늘은 <b><%=today.format(date.getTime()) %></b>입니다<br>

지금 시간은 <b><%= now.format(date.getTime()) %> </b> 입니다



</body>
</html>