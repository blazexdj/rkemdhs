<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<% String cp=request.getContextPath(); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>무제 문서</title>
<link rel="stylesheet" href="<%=cp%>/style/basic.css" type="text/css" media="print, projection, screen" />
<link rel="stylesheet" href="<%=cp%>/style/plugin/asyncPaging.css" type="text/css" media="print, projection, screen" />
<script type="text/javascript" src="<%=cp%>/js/plugin/jquery-2.1.0.min.js"></script>
<script type="text/javascript" src="<%=cp%>/js/plugin/asyncPaging.js"></script>

<body>
<div class="container">
  <div class="header"><strong>
    <!-- end .header -->
  Guard-ON</strong>WorkFlow 서버선택</div>
    <div class="header"></div>
  <div class="sidebar1">
    <ul class="nav">
      <li><a href="approvalUserList.do">비밀번호 발급 요청 리스트</a></li>
      <li><a href="changeAllList.do">사용자 일괄-선택 비밀번호 발급</a></li>
      <li><a href="updateUser.do">개인정보 수정</a></li>
      <li><a href="option.do">관리자 설정</a></li>
      <li><a href="userLogout.do">로그아웃</a></li>
    </ul>
    <p>&nbsp;</p>


  <!-- end .sidebar1 --></div>
  <div class="content">
    <h1>&nbsp;</h1>
    
     <div>
		 <center>
		 <form action="workFlowServerList.do" method="post">
		  	<table>
		     	<tr>
		        	<th><input type="checkbox" id="checkboxAll" onchange="javascript:checkAll(this.checked);" /></th>
		            <th>서버명</th>
		            <th>IP주소</th>
		            <th>서버설명</th>
		            <th>Health Check</th>
		        </tr>
		         <c:forEach var="i" items="${serverList}">
		         	<tr>
		              <td><input type="checkbox" name="temp" value="${i.serverName}" /></td>
		              <td>${i.serverName}</td>
		              <td class="server-ip">${i.ipAddress}</td>
		              <td>${i.serverDesc}</td>
		              <td class="tcp-check"></td>
		           </tr>   
		         </c:forEach>
		     </table>
		     <div id="paging" style="height:100px;"></div>
		     <input id="currentPage" type="hidden" value="${page}" />
		     <input id="serverListCount" type="hidden" value="${serverListCnt}" />
		   <input type="submit" value="다음단계" />
			<br/>
			<br/>
			</form>
		</center>
	</div>
  
 <audio src="<%=cp%>/media/output.wav" id="beep" autostart="false"></audio>
  
    <!-- end .content --></div>
  <div class="footer">
    <p>Trust. Technology. Service</p>
    <!-- end .footer --></div>
  <!-- end .container --></div>
  
\
</body>
</html>