<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h2>회원 관리</h2>
   <form action="delete.do" method="post" name="frm">
      <table>
         <tr>
            <th>이름</th>
            <th>아이디</th>
            <th>이메일</th>
            <th>전화번호</th>
            <th>관리자 여부</th>
         </tr>
         <c:forEach var="member" items="${mlist}">
            <tr>
               <td>${member.getName()}</td>
               <td>${member.getUserid()}</td>
               <td>${member.getEmail()}</td>
               <td>${member.getPhone()}</td>
               <td>${member.getAdmin()}</td>
            </tr>
         </c:forEach>
         <tr>
            <td><select name="userid">
                  <c:forEach var="mid" items="${mlist }">
                     <option value="${mid.getUserid() }">${mid.getUserid() }</option>
                  </c:forEach>
            </select><input type="submit" value="삭제"></td>
         </tr>
      </table>

   </form>

</body>
</html>