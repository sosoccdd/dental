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

<title>SB Admin 2 - Bootstrap Admin Theme</title>

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
  <div class="w3-bar w3-sand f20">
   	병원 회원가입 승인 요청
  </div>

  <table class="w3-table-all w3-hoverable">
    <thead>
      <tr class="w3-light-grey">
        <th>회원 ID</th>
        <th>병원 이름</th>
        <th>주소</th>
        <th>전화번호</th>
        <th>승인여부</th>
      </tr>
    </thead>
    <%for(Admin ad : list){ %>
    <tr>
      <td><%=ad.getmId() %></td>
      <td><%=ad.getmName() %></td>
      <td><%=ad.getAddress() %></td>
      <td><%=ad.getPhone() %></td>
      <td>
      <button onclick="updateCmember('<%=ad.getmId() %>','<%=ad.getmName() %>');" class="w3-white w3-border w3-border-blue w3-round">승인</button>
      </td>
    </tr>
   <%} %>

    
  </table>
<div class="w3-center">
<div class="w3-bar">
  <a onclick="location.href='<%=request.getContextPath()%>/Cmember.ad?currentPage=1'" class="w3-button">&laquo;</a>
  <% for(int p = startPage; p<= endPage; p++){ 
     if( p == currentPage){
  %>         
  	<a href="#" class="w3-button" disabled><%=p %></a>
  <%}else{ %>
  	<a onclick="location.href='<%= request.getContextPath()%>/Cmember.ad?currentPage=<%= p%>'" class="w3-button"><%=p %></a>
   <%} %>      
  <%} %>
  <a onclick="location.href='<%=request.getContextPath() %>/Cmember.ad?currentPage=<%= maxPage %>'" class="w3-button">&raquo;</a>

</div>
</div>
</div>
<script type="text/javascript">
function updateCmember(mId, mName){
	location.href='/semi/UpdateApproval.ad?mId='+mId+'&mName='+mName;
	 
}
</script>
</body>

</html>
