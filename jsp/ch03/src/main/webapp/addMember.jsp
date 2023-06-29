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

<jsp:useBean id="member" class="com.lbi.javaBean.MemberBean"/>
<jsp:setProperty property="*" name="member"/>

<h2>입력된 회원 정보</h2>

<table>
<tr>
	<td>이 름 </td>
	<td>
		<jsp:getProperty property="name" name="member"/> 
</tr>

	<td>아이디 </td>
	<td>
		<jsp:getProperty property="userid" name="member"/> 
</tr>


</table>

</body>
</html>