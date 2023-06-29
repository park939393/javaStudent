<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method = "post" action="selectReselt.jsp">
직업 : <br>
<select name = "job" size="1">
	<option value="">선택하세요 </option>
	<option value="학생">학생 </option>
	<option value="언론인">언론인 </option>
	<option value="직장인">직장인 </option>
	<option value="서비스업">서비스업 </option>
	<option value="군인">군인 </option>
</select>

<br>
관심분야 :
<br>
<select name = "interest" size = "5" multiple = "multiple">
	<option value="아메리카노">아메리카노</option>
	<option value="카푸치노">카푸치노</option>
	<option value="생두">생두</option>
	<option value="로스팅">로스팅</option>
	<option value="핸드드립">핸드드립</option>
	
</select>
<br><br><br><br>
<input type = "submit" value ="제출">

</form>

</body>
</html>