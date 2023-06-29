<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- useBean으로 빈을 쓴다. member라는 객체를 통해서 쓰겠다. id가 member. 클래스파일은 이거다. -->
<jsp:useBean id="member" class="com.lbi.javaBean.MemberBean"/>
<h2>자바 빈 객체 생성 후 저장된 정보 출력하기</h2>
<!-- member를 통해서 getName() -->
이름 : <%=member.getName() %><br>
아이디 : <%=member.getUserid() %>
<hr>
<h2>MemberBean 객체에 정보 셋팅 후 저장된 정보 출력하기</h2>
<%
// 값을 저장하는 건 이렇게. member를 통해서 setName()
member.setName("bts");
member.setUserid("bts1004");
%>
<hr>
<!-- member를 통해서 getName() -->
이름 : <%=member.getName() %><br>
아이디 : <%=member.getUserid() %>

</body>
</html>