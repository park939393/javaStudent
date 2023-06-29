<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method = "post" action = "RadioSelect.jsp">
성별 : <input type = radio name = "gender" value = "남자" checked>남자
	<input type = radio name = "gender" value = "여자" checked>여자
	<br>
메일 수신 여부 : <input type = radio name= "chk_mail" value = "수신" checked>수신	
			<input type = radio name= "chk_mail" value = "거부" checked>거부
<br>
가입 인사를 적어주세요<br>

<textarea rows="4" cols="40" name= "content"></textarea>
<input type = "submit" value="전송">				

</form>

</body>
</html>