<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>세션 정보를 얻어오는 메소드를 사용하기</h3>

<%
	String id_str = session.getId();
	long lasttime = session.getLastAccessedTime();
	long createtime = session.getCreationTime();
	long time_used = (lasttime = createtime);
	
	int inactive = session.getMaxInactiveInterval() / 60;
	
	boolean b_new =session.isNew();


%>

[1] 세션 ID 값은 [<%=session.getId() %>] 입니다<br><hr>

[2] 당신이 웹 사이트에 머문 시간은 [<%=time_used %>분 입니다.]<br><hr>

[3] 세션의 유효 시간은 [<%=inactive %> 분 입니다.] <br><hr>

[4] 세션이 만들어 졌나요? <br>

<%
	if(b_new){
		out.println("예! 세션이 만들어졌습니다.");
	}else{
		out.println("아니요, 새로운 세션은 만들어 지지 않았습니다.");
	}
%>



</body>
</html>