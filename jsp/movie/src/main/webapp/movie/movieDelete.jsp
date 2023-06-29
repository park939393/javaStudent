<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화 관리</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
</head>
<body>
   <div id="wrap" align="center">
   <h1>정보 삭제</h1>
   
   <form method="post">
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
                  <th style="width: 80px">제 목</th>
                  <td>${movie.title}</td>
            </tr>
            <tr>
               <th>가 격</th>
                  <td>${movie.price}원</td>
            </tr>
            <tr>
               <th>감 독</th>
                  <td>${movie.director}</td>
            </tr>
            <tr>
               <th>배 우</th>
                  <td>${movie.actor}</td>
            </tr>
            <tr>
                  <th>시 놉 시 스</th>
                  <td><div style="height: 220px; width: 100%">
                     ${movie.synopsis}</div></td>
            </tr>
             <tr>
               <th>사 진</th>
                  <td>${movie.poster}</td>
            </tr>
            
         
         </table>
         
         </td>   
      </tr>
   
   </table>
   
   <br>
   <input type="hidden" name="code" value="${movie.code}">
   <input type="submit" value="삭제">
   <input type="button" value="목록" onclick="location.href='movieList.do'">
   
   
   </form>
   
   
   </div>
</body>
</html>
