<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>정보 입력 폼</h1>

<form action="addItem.jsp" method="post">
<table>
	<tr>
		<td> 상품명 </td>
		<td><input type="text" name= "name" size="20"></td>
	</tr>
	
	<tr>
		<td> 가격 </td>
		<td><input type="text" name= "price" size="20"></td>
	</tr>
	<tr>
		<td> 내용 </td>
		<td><textarea  name="description" maxlength="100" style="width:800px;  height: 200px;"></textarea></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="submit" value="전송">
		<input type="reset" value="취소"></td>
	</tr>


</table>


</form>

</body>
</html>