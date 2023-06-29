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
<form action="mainResult.jsp" method="post">
<table>
	<tr>
		<td>작성자</td>
		<td><input type="text" name="name" size="20"></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="pwd" size="20"></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input type="text" name="email" size="20"></td>
	</tr>
	<tr>
		<td>글제목</td>
		<td><input type="text" name="title" size="50"></td>
	</tr>
	<tr>
		<td>글 내용</td>
		<td><textarea name="content" maxlength="2048" style="height: 350px; width: 500px;"></textarea>
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