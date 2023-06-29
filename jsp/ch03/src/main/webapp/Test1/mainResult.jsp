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
%>
<jsp:useBean id="member" class="com.lbi.javaBean.Member12"/>
<jsp:setProperty property="*" name="member"/>
<h2>게시글 정보</h2>

<table>
<tr>
	<td>작성자 름 </td>
	<td>
		<jsp:getProperty property="name" name="member"/> 
</tr>

	<td>비밀번호 </td>
	<td>
		<jsp:getProperty property="pwd" name="member"/> 
</tr>
<td>이메일 </td>
	<td>
		<jsp:getProperty property="email" name="member"/> 
</tr>

<td>글제목 </td>
	<td>
		<jsp:getProperty property="title" name="member"/> 
</tr>

<td>글내용 </td>
	<td>
		<jsp:getProperty property="content" name="member"/> 
</tr>



</table>


</body>
</html>