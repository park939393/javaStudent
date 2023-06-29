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

<c:forEach var= "city" items="서울.수원, 천안.대전, 광주">
${city}<br>

</c:forEach>


<hr>


<c:forTokens var= "city" items="서울.수원, 천안.대전, 광주" delims=",.">
	${city}<br>

</c:forTokens>

</body>
</html>