<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1> 검색 엔진 만들기</h1>
<form action="comboResult.jsp">
	<h2>검색 엔진을 선택하세요</h2>
	<select name= "site">
		<option value= "http://www.naver.com">네이버</option>
		<option value= "http://www.imbc.com">MBC</option>
		<option value= "http://www.daum.net">다음 </option>
	</select>
<br>
<input type="submit" value="사이트 가기">
</form>


</body>
</html>