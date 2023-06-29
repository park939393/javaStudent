<%@ page import ="java.net.URLEncoder"%>
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
	String id = "root";
	String pwd = "1111";
	String name = "관리자";
	
	if(id.equals(request.getParameter("id")) &&
			pwd.equals(request.getParameter("pwd"))){
		response.sendRedirect("main1.jsp?name"+
				URLEncoder.encode(name,"UTF-8"));
		
	}else{
		response.sendRedirect("loginForm.jsp");
	}


%>

</body>
</html>