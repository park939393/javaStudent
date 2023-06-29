<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>세션에 설정된 모든 값 가져오기</h2>
<%
//자바 컬렉션 프레임워크에 속하는 Enumeration 객체로 세션에 저장된
// 모든 값들을 얻어오기 위한 방법
Enumeration names = session.getAttributeNames();
while(names.hasMoreElements()){
	String name = names.nextElement().toString();
	String value = session.getAttribute(name).toString();
	out.println(name+" : " + value + "<br>");
}

%>

</body>
</html>