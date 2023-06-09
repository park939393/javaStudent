<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>      
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="now" value="<%=new java.util.Date() %>"/>

<pre>
톰캣 서버의 기본 로케일 : <%=response.getLocale() %>

<fmt:setLocale value="ko_KR"/>
로케일을 한국어로 설정한 후 로케일 확인 : <%=response.getLocale() %>
통화(currency): <fmt:formatNumber value="1000" type="currency"/>
날짜 : <fmt:formatDate value="&{now}"/>

<fmt:setLocale value="jp_JP"/>
로케일을 일본어로 설정한 후 로케일 확인 : <%=response.getLocale() %>
통화(currency): <fmt:formatNumber value="1000" type="currency"/>
날짜 : <fmt:formatDate value="&{now}"/>

<fmt:setLocale value="en_EN"/>
로케일을 영어로 설정한 후 로케일 확인 : <%=response.getLocale() %>
통화(currency): <fmt:formatNumber value="1000" type="currency"/>
날짜 : <fmt:formatDate value="&{now}"/>

</pre>


</body>
</html>