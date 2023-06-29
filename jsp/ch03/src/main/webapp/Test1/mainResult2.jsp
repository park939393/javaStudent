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
<jsp:useBean id="member" class="com.lbi.javaBean.Member13"/>
<jsp:setProperty property="*" name="member"/>
<h2>게시글 정보</h2>

<table>
<tr>
	<td>제목 </td>
	<td>
		<jsp:getProperty property="title" name="member"/> 
</tr>

	<td>가격 </td>
	<td>
		<jsp:getProperty property="price" name="member"/> 
</tr>
<td>감독 </td>
	<td>
		<jsp:getProperty property="det" name="member"/> 
</tr>

<td>출연배우 </td>
	<td>
		<jsp:getProperty property="actor" name="member"/> 
</tr>

<td>시놉시스 </td>
	<td>
		<jsp:getProperty property="content" name="member"/> 
</tr>

<td>장르 </td>
	<td>
		<jsp:getProperty property="value" name="member"/> 
</tr>




</table>


</body>
</html>