<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method = "get" action="selectServlet">
<table>
 <tr>
<td valign="top">
직업 : 
<select name = "job" size="1">
	<option value="">선택하세요</option>
	<option value="학생">학생</option>
	<option value="언론인">언론인</option>
	<option value="직장인">직장인</option>
	<option value="서비스업">서비스업</option>
	<option value="군인">군인</option>
</select>
</td>

<td valign="top">
관심 분야: 
<select name = "interest" size = "5" multiple = "multiple">
	<option value = "아메리카노">아메리카노</option>
	<option value = "카푸치노">카푸치노</option>
	<option value = "생두">생두</option>
	<option value = "로스팅">로스팅</option>
	<option value = "핸드드립">핸드드립</option>
</select>
</td>

<td align="right">
<input  type = "submit" value ="전송">
</td>
  </tr>
</table>
</form>

</body>
</html>