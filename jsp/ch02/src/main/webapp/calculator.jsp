<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action = "forwardTest.jsp" method="get">
	숫자 입력 :
	 <input type="text" name= "num1">
	<select op = "" size="1">
	<option value=더하기>+</option>
	<option value=빼기>-</option>
	<option value=곱하기>*</option>
	<option value=나누기>%</option>
	</select>
	<input type= "text" name="num2">
	<input type="submit" value = "계산하기">

</form>


</body>
</html>