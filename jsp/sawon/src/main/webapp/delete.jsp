<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="delete.do" method="post" name="frm">
	<table align="center" width="550">
		<tr>
			<td colspan="2" align="center"> 사원삭제</td>
		</tr>
		<tr>
			<td id="front">아이디</td>
			<td><input type="text" name="id" value="id"></td>
		</tr>
		
		<tr align="center">
			<td colspan="2">
				<input type="submit" value="삭제">
				<input type="reset" value="취소">
			</td>
		</tr>
	
	</table>
</form>
</body>
</html>
