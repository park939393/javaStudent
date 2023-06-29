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
	String job = request.getParameter("job");
	String interestes[] = request.getParameterValues("interest");
	
	out.print("당신의 직업은 : " + job);
	out.print("<br> 당신이 선택한 관심 분야 : <br>");
	if(interestes == null){
		out.print("선택한 항목이 없습니다.");
		
	}else{
		for(String a : interestes){
			out.print(a + "   ");
		}
	}


%>
<br>
<a href= 'javascript:history.go(-1)'>다시</a>


</body>
</html>