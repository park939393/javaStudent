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
int num1 = Integer.parseInt(request.getParameter("num1"));
int num2 = Integer.parseInt(request.getParameter("num2"));
String op = request.getParameter("op");

switch(op){
	
	case "더하기": out.println(num1 + num2);
		break;
	case "빼기": out.println(num1 - num2);
		break;
	case "곱하기": out.println(num1 * num2);
		break;
	case "나누기": out.println(num1 / num2);
		break;
		default :
			out.print("계산 못해요");


}


%>

</body>
</html>