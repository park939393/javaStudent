<%@page import="java.sql.*"%>
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
Connection conn=null;
Statement stmt =null;
ResultSet rs = null;

String url = "jdbc:oracle:thin:@localhost:1521:XE";
String uid = "scott";
String pass = "tiger";
String sql = "select * from item";

%>

<table border="1" width='800'>

<tr>
	<th>이름</th><th>가격</th><th>설명</th>
</tr>

<%
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	conn = DriverManager.getConnection(url,uid,pass);
	//out.println("접속성공");
	stmt =conn.createStatement();
	rs = stmt.executeQuery(sql);
	
	while(rs.next()){
		out.println("<tr>");
		out.println("<td>"+rs.getString("name") + "</td>");
		out.println("<td>"+rs.getString("price") + "</td>");
		out.println("<td>"+rs.getString("description") + "</td>");
		out.println("</tr>");
	}
	
}catch(Exception e){
	
}finally{
	try{
		if(rs !=null)
			rs.close();
		if(stmt !=null)
			stmt.close();
		if(conn !=null)
			conn.close();
	}catch(Exception e){
		
	}
	
}

%>

</table>

</body>
</html>