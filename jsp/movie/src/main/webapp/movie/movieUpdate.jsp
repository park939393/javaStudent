<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
</head>
<body>
<div id="wrap" align="center">
<h1> 정보 수정 </h1>
<form enctype="multipart/form-data" method="post" action=>
<input type="hidden" name ="code" value="${movie.code}">
<input type="hidden" name ="nonmakeImg" value="${movie.poster}">


 <table>
   
      <tr>
         <td align="center"><c:choose>
                  <c:when test="${empty movie.poster}">
                     <img src="/images/no.jpg">
                     </c:when>
                     <c:otherwise>
                        <img src="images/${movie.poster}">
                     </c:otherwise>
            </c:choose>
         </td>
         <td>
         <table>
           <tr>
		<th> 제 목 </th>
		<td> <input type ="text" name = "mtitle" value="${movie.title}" size ="60"></td>
	</tr>
	<tr>
		<th> 가 격 </th>
		<td> <input type ="text" name = "price" value= "${movie.price}" size ="20">원</td>
	</tr>
	<tr>
		<th> 감 독 </th>
		<td> <input type ="text" name = "director" value= "${movie.director}" size ="60"></td>
	</tr>
	<tr>
		<th> 배 우 </th>
		<td> <input type ="text" name = "actor" value= "${movie.actor}" size ="60"></td>
	</tr>
	<tr>
		<th> 시 놉 시 스 </th>
		<td> <textarea rows="10" cols="70"  name="synopsis" >${movie.synopsis}</textarea> </td>
	</tr>
	<tr>
		<th> 사 진 </th>
		<td> <input type ="file" value= "${movie.poster}" name = "poster" ><br>
		</td>
	</tr>
   
   </table>
   </table>
   <br>
   <input type="hidden" name="code" value="${movie.code}">
  

 <input type="submit" value="수정">
   <input type="button" value="목록" onclick="location.href='movieList.do'">
</form>




</body>
</html>