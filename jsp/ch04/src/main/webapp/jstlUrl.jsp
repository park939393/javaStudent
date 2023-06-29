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
<c:import url="http://localhost:8080/ch04/el.jsp" var="data">
	
</c:import>
	${data}
	
	
<hr>

<c:url value="images/bg3.png" var="data"/>

&{data}
<br>
<img src="${data}" width='150' height='150'>
	



</body>
</html>