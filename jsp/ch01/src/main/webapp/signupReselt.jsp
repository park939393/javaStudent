<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보보기</title>
</head>
<body>
<% 
request.setCharacterEncoding("utf-8");

String name = request.getParameter("name");
String registration_number1 = request.getParameter("registration_number1");
String registration_number2 = request.getParameter("registration_number2");
String ID = request.getParameter("ID");
String ps = request.getParameter("ps");
String email = request.getParameter("email");
String domain = request.getParameter("domainselect");

String Zip_code = request.getParameter("Zip_code");
String address1 = request.getParameter("address1");
String address2 = request.getParameter("address2");

String phonenum = request.getParameter("phonenum");
String job = request.getParameter("job");
String chk_mail = request.getParameter("chk_mail");
String item[] = request.getParameterValues("item");

out.print(" name : " + name + "<br>");
out.print(" registration_number : " + registration_number1 + " - " + registration_number2+ "<br>");
out.print(" ID : " + ID + "<br>");
out.print(" ps : " + ps + "<br>");
out.print(" email : " + email + domain+ "<br>");
out.print(" Zip_code : " + Zip_code + "<br>");
out.print(" address : " + address1 + address2 + "<br>");
out.print(" phonenum : " + phonenum + "<br>");
out.print(" job : " + job + "<br>");
out.print(" chk_mail : " + chk_mail + "<br>");



if(item == null){
	out.print("선택한 항목이 없습니다.");
	
}else{
	for(String a : item){
		out.print(" 관심분야 : " + a);
	}
}

%>
<br>
<a href= 'javascript:history.go(-1)'>다시</a>
</body>
</html>