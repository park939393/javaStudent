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
	String items[] = request.getParameterValues("item");
	if(items == null){
		out.print("선택한 항목이 존재하지 않습니다");
		
	}else{
		out.print("당신이 선택한 악세사리는 다음과 같습니다<hr>");
		for(String item : items){
			out.print(item + ",");
		}
		
	}


%>
<br>

<a href = 'javascript:history.go(-1)'>다시</a>

</body>
</html>