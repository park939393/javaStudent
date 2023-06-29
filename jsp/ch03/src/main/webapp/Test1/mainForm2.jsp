<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>게시판 글쓰기</h2>
<form action="mainResult2.jsp" method="post">
<table>
	<tr>
		<td>제목</td>
		<td><input type="text" name="title" size="20"></td>
	</tr>
	<tr>
		<td>가격</td>
		<td><input type="text" name="price" size="20"></td>
	</tr>
	<tr>
		<td>감독</td>
		<td><input type="text" name="det" size="20"></td>
	</tr>
	<tr>
		<td>출연배우</td>
		<td><input type="text" name="actor" size="50"></td>
	</tr>
	<tr>
		<td>시놉시스</td>
		<td><textarea name="content" maxlength="2048" style="height: 350px; width: 500px;"></textarea>
	</tr>
	
	<tr>
	<td align= "left"> 장르  </td>
	<td>
		<select name = "value" size = "1">
	
	<option value="액션">액션 </option>
	<option value="코믹">코믹 </option>
	<option value="로맨스">로맨스 </option>
	<option value="시대극">시대극 </option>
	<option value="호러">호러 </option>
</select>
	</td>
</tr>
	
	
	
		<td align="center"><input type="submit" value="등록"></td>
		<td align="center"><input type="reset" value="다시작성"></td>
	</tr>

</table>

</form>






</table>

</form>

</body>
</html>