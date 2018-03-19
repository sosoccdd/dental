<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, com.kh.dental.admin.model.vo.*"%>
<%
   ArrayList<Admin> list = (ArrayList<Admin>)session.getAttribute("list");
   
   PageInfo pi = (PageInfo)session.getAttribute("pi");
   int listCount = pi.getListCount();
   int currentPage = pi.getCurrentPage();
   int maxPage = pi.getMaxPage();
   int startPage = pi.getStartPage();
   int endPage = pi.getEndPage();
%> 
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>조치 관리자</title>

<!-- Bootstrap Core CSS -->
<link href="../../css/admin/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="../../css/admin/metisMenu.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="../../css/admin/sb-admin-2.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="../../css/admin/morris.css" rel="stylesheet">
<link href="../../css/admin/adminmain.css" rel="stylesheet">
<link rel="stylesheet" href="/semi/css/reset.css">
<link rel="stylesheet" href="/semi/css/common.css">
<link rel="stylesheet" href="../../css/admin/w3.css">


</head>

<body>

	<%@include file="common/header.jsp"%>
	<%@include file="common/leftnav.jsp"%>

	<div class="div-tag-good">
  <div class="w3-bar w3-sand">
    <a onclick="goNmember();" class="w3-bar-item w3-button test-a-tag">일반</a>
    <a onclick="goDmember();" class="w3-bar-item w3-button ">의사</a>
    <a onclick="goCmember();" class="w3-bar-item w3-button">병원</a>
  </div>

  <table class="w3-table-all w3-hoverable">
    <thead>
      <tr class="w3-light-grey">
        <th>회원번호</th>
        <th>회원아이디</th>
        <th>회원이름</th>
        <th>가입일</th>
        <th>탈퇴여부</th>
      </tr>
    </thead>
    <%for(Admin ad : list){ %>
    <tr>
      <td><%=ad.getmNo() %></td>
      <td><%=ad.getmId() %></td>
      <td><%=ad.getmName() %></td>
      <td><%=ad.getJoinDate() %></td>
      <td>
      <button onclick="updateNmember('<%=ad.getmId() %>','<%=ad.getmName() %>');" class="w3-white w3-border w3-border-blue w3-round">탈퇴</button>
      </td>
    </tr>

   <%} %>

    
  </table>

<div class="w3-center">
<div class="w3-bar">
  <a onclick="location.href='<%=request.getContextPath()%>/Nmember.ad?currentPage=1'" class="w3-button">&laquo;</a>
  <% for(int p = startPage; p<= endPage; p++){ 
     if( p == currentPage){
  %>         
  	<a href="#" class="w3-button" disabled><%=p %></a>
  <%}else{ %>
  	<a onclick="location.href='<%= request.getContextPath()%>/Nmember.ad?currentPage=<%= p%>'" class="w3-button"><%=p %></a>
   <%} %>      
  <%} %>
  <a onclick="location.href='<%=request.getContextPath() %>/Nmember.ad?currentPage=<%= maxPage %>'" class="w3-button">&raquo;</a>
</div>
</div>
</div>
<script type="text/javascript">
	function updateNmember(mId, mName){
		location.href='/semi/UpdateNmember.ad?mId='+mId+'&mName='+mName;
		 
	}
	function goNmember(){
		location.href='/semi/Nmember.ad';
	}
	function goDmember(){
		location.href='/semi/Dmember.ad';
	}
	function goCmember(){
		location.href='/semi/Cmember.ad';
	}
</script>
</body>

</html>
