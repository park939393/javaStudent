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

String id = "park0490";

String pwd = "1234";

String name = "bts";

if(id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd"))){
	session.setAttribute("loginUser", name);
	response.sendRedirect("main.jsp");
	
}else{
	response.sendRedirect("loginForm.jsp");
}


%>

</body>
</html>