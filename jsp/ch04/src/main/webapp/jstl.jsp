
<%@page import="com.lbi.javabean.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:out value="Hellow world"/>
<c:set var="msg" value="jsp"/>
<br>
\${msg} = ${msg} <br>

<c:set var="age">
	30
</c:set>
\${age} = ${age}

<br>

<c:set var="member" value="<%=new com.lbi.javabean.MemberBean() %>" />
<c:set target= "${member}" property="name" value="BTS" />
<c:set target= "${member}" property="userid">
비티에스
</c:set>
\${member} = ${member}


<br>

<c:set var="add" value="${10+5" />
\${add} = &{add}

<br>

<c:set var="flag" value="${10 >5}" />
\${flag} = ${flag} 

</body>
</html>