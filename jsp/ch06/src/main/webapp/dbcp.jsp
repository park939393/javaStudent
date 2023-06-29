<%@page import="javax.sql.DataSource"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>DB연동</h2>
<%

	Context ct = new InitialContext();
	Context envCt = (Context)ct.lookup("java:/comp/env");

	DataSource ds = (DataSource)envCt.lookup("jdbc/myoracle");
	Connection conn = ds.getConnection();
	out.println("DBCP 연동 성공");
%>

</body>
</html>