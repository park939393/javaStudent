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
	int age = Integer.parseInt(request.getParameter("age"));
	
	if(age >= 19){
	%>
	<script type="text/javascript">
	alert("19세 이상이므로 입장 불가 합니다.");
	history.go(-1);
	</script>
	<%	
	}else{
		request.setAttribute("name", "끼욤");
		RequestDispatcher rd = 
				request.getRequestDispatcher("forwardResult.jsp");
		rd.forward(request, response);
	}

%>

</body>
</html>