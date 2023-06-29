<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String[] movieList = {"타이타닉", "시네마천국", "카지노", "더글로리"};
pageContext.setAttribute("movieList", movieList);

%>
<table border="1" style="width:100%; text-align: center;">
<tr>
	<th>index</th>
	<th>count</th>
	<th>title</th>
</tr>


<c:forEach var="movie" items="${movieList}" varStatus="status">
<tr>
	<td>${status.index}</td>
	<td>${status.count}</td>
	<td>${movie}</td>
</tr>
</c:forEach>
</table>

<br><br>
<hr>
<ul>
<c:forEach var="movie" items="${movieList}" varStatus="status">
	<c:choose>
		<c:when test="${status.first}">
			<li style="font-weight:bold; color:red;">${movie}</li>
		</c:when>
		<c:otherwise>
			<li>${movie}</li>
		</c:otherwise>	
	
	</c:choose>
</c:forEach>
</ul>
<br><br>
<hr>

<c:forEach var="movie" items="${movieList}" varStatus="status">
	${movie}
	<c:if test="${not status.last}">뿅</c:if>
	</c:forEach>
</body>
</html>
