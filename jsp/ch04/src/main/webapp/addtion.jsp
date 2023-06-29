<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>고전적인 방식</h2>
<%
/*
	int num1 =Integer.parseInt(request.getParameter("num1"));
	int num2 =Integer.parseInt(request.getParameter("num2"));
	*/
	
	int num1 = (Integer)request.getAttribute("num1");
	int num2 = (Integer)request.getAttribute("num2");
%>
<%= num1 %> + <%=num2%> = <%=num1 + num2 %>

<hr>
<h2>EL 방식</h2>

${num1} + ${num2} = ${num1 + num2}

</body>
</html>