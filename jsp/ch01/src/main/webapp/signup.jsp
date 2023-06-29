<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="signupReselt.jsp">
<table>
<tr>
	<td align = "center" colspan=2 height=40>
	<b>회 원 가 입</b>
	</td>
</tr>

<tr>
	<td align="left">이름 
	</td>
	<td>
		<input type= "text" name="name" placeholder="홍 길 동" required>
	</td>
</tr>

<tr>
	<td align= "left"> 주민등록번호  </td>
	<td>
		<input type="text" name="registration_number1" placeholder="앞 6자리 ex000000" required> -
		<input type="text" name="registration_number2" placeholder="뒷 7자리 ex0000000" required>
	</td>
</tr>

<tr>
	<td align= "left"> 아이디  </td>
	<td>
		<input type="text" name="ID" placeholder="영숫자조합" required>
	</td>
</tr>

<tr>
	<td align= "left"> 비밀번호  </td>
	<td>
		<input type="password" name="ps" placeholder="최소 10자" required>
	</td>
</tr>

<tr>
	<td align= "left"> 비밀번호 확인  </td>
	<td>
		<input type="password" name="psc" placeholder="최소 10자" required>
	</td>
</tr>

<tr>
	<td align= "left"> 이메일  </td>
	<td>
		<input type="text" name="email" placeholder="ABC123" required>
		@<input type="text" name="domain" placeholder="naver.com" required>
		<select name="domainselect" size="1" onchange="
 
 
  var domainInput = document.getElementsByName('domain')[0];
  if (this.value === '직접입력') {
    domainInput.value = '';
    domainInput.removeAttribute('disabled');
    domainInput.focus();
  } else {
    domainInput.value = this.value;
    domainInput.setAttribute('disabled', 'disabled');
  }
  
 
">
  <option value="nate.com">nate.com</option>
  <option value="naver.com">naver.com</option>
  <option value="hanmail.net">hanmail.net</option>
  <option value="gmail.com">gmail.com</option>
  <option value="직접입력">직접입력</option>
</select>
	</td>
</tr>

<tr>
	<td align= "left"> 우편번호  </td>
	<td>
		<input type="text" name="
Zip_code" placeholder="000000-0000000" required>
	</td>
</tr>
<tr>
	<td align= "left"> 주소  </td>
	<td>
		<input type="text" name="address1" placeholder="무인도 특별시" required>
		<input type="text" name="address2" placeholder="상세주소" required>
	</td>
</tr>

<tr>
	<td align= "left"> 핸드폰번호  </td>
	<td>
		<input type="text" name="phonenum" placeholder="010-0000-0000" required>
	</td>
</tr>

<tr>
	<td align= "left"> 직업  </td>
	<td>
		<select name = "job" size = "3" multiple = "multiple">
	<option value="">선택하세요 </option>
	<option value="학생">학생 </option>
	<option value="언론인">언론인 </option>
	<option value="직장인">직장인 </option>
	<option value="서비스업">서비스업 </option>
	<option value="군인">군인 </option>
</select>
	</td>
</tr>



<tr>
	<td align= "left"> 메일/SMS 정보 수신  </td>
	<td>
		<input type = radio name= "chk_mail" value = "수신" checked>수신	
			<input type = radio name= "chk_mail" value = "거부" checked>수신거부
	</td>
</tr>

<tr>
	<td align= "left"> 관심분야  </td>
	<td>
		<input type = "checkbox" name = "item" value = "신발">신발
<input type = "checkbox" name = "item" value = "가방">생두
<input type = "checkbox" name = "item" value = "벨트">원두
<input type = "checkbox" name = "item" value = "모자">로스팅
<input type = "checkbox" name = "item" value = "시계">핸드드립
<input type = "checkbox" name = "item" value = "보석">에스프레소
<input type = "checkbox" name = "item" value = "보석">창업
	</td>
</tr>

<tr>
	<td colspan="2" align ="center" height="50">
	<input type="submit" value = "회원가입">
	<input type="submit" value = "취소">
	</td>
	
</tr>

</table>


</form>




</body>
</html>