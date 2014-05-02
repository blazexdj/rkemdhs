<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<% String cp=request.getContextPath(); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>무제 문서</title>
<link rel="stylesheet" href="<%=cp%>/style/basic.css" type="text/css" media="print, projection, screen" />
</head>

<body>

<div class="container">
  <div class="header"><strong>
    <!-- end .header -->
  Guard-ON</strong> 일반 사용자</div>
  <div class="sidebar1">
    <ul class="nav">
      <li><a href="userOtpDBSelect.do">일회용 비밀번호 발급</a></li>
      <li><a href="periodPwdServerSelect.do">주기적 비밀번호 발급</a></li>
      <li><a href="#">개인정보 수정</a></li>
    </ul>
    <p>&nbsp;</p>
  <!-- end .sidebar1 --></div>
  <div>
   	<br/>
	<br/>
	 <center>
	<form action="userOtp.do" method="post">
  
  	 <table>
     	<tr>
     		  <th> 선택 </th>
            <th>서버명</th>
        </tr>
         <c:forEach var="i" items="${DBList}">
         	<tr>
            	<td><input type="radio" name="temp" value="${i.ipAdress}" /></td>
                <td>${i.DBName}</td>
            </tr>
         </c:forEach>
     </table>
 	<br/>
	<br/>
    <input type="submit" class="content" value="OTP 얻기"/>
   </form>
   </center>
  
    <br/>
	<br/>

	
    <!-- end .content --></div>
  <div class="footer">
    <p>Trust. Technology. Service</p>
    <!-- end .footer --></div>
  <!-- end .container --></div>
</body>
</html>
