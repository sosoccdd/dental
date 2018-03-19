<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, com.kh.dental.admin.model.vo.*"%>
		<%
   ArrayList<AdminEvent> list = (ArrayList<AdminEvent>)session.getAttribute("list");
   
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

<title>조치 관리자 - 이벤트 관리</title>

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
	  
	  <h1>병원회원 승인 리스트</h1>
	  <table class="w3-table-all w3-hoverable">
    <thead>
      <tr class="w3-light-grey">
        <th>회원 ID</th>
        <th>병원이름</th>
        <th>시작날짜</th>
        <th>종료날짜</th>
        <th>결제금액</th>
        <th>결제성공번호</th>
        <th>조회수</th>
        <th>승인</th>
      </tr>
    </thead>
    <%for(AdminEvent ad : list){%>
    <tr>
      <td><%=ad.getB_writer() %></td>
      <td><%=ad.getBuyer_name() %></td>
      <td><%=ad.getStart_date() %></td>
      <td><%=ad.getEnd_date() %></td>
      <td><%=ad.getPaid_amount() %></td>
      <td><%=ad.getB_p_no() %></td>
      <td><%=ad.getB_count() %></td>
      <%if(ad.getStatus().equals("Y")) {%>
      	<td>승인완료</td>
      <%}else{ %>
      <td>
      <button onclick="updateboev('<%=ad.getB_writer() %>',<%=ad.getB_p_no() %>);" class="w3-white w3-border w3-border-blue w3-round">승인</button>
      </td>
      <%} %>
    </tr>
    <%} %>
  

    
  </table>
  <div class="w3-center">
<div class="w3-bar">
<a onclick="pagetest01();" class="w3-button">&laquo;&laquo;</a>
<%if(currentPage <= 1) {%>
	<a disabled class="w3-button">&laquo;</a>
<%}else{%>
    <a onclick="pagetest2('<%=currentPage-1 %>');"  class="w3-button">&laquo;</a>
<%} %>

  <% for(int p = startPage; p<= endPage; p++){ 
     if( p == currentPage){
  %>         
  	<a href="#" class="w3-button" disabled><%=p %></a>
  <%}else{ %>
  	<a onclick="pagetest03('<%=p %>');" class="w3-button"><%=p %></a>
   <%} %>      
  <%} %>
  <%if(currentPage >= maxPage){ %>
  <a disabled class="w3-button">&raquo;</a>
  <%}else{ %>
  <a onclick="pagetest04('<%=currentPage+1 %>');" class="w3-button">&raquo;</a>
  <%} %>
    <a onclick="pagetest05('<%=maxPage %>');" class="w3-button">&raquo;&raquo;</a>
</div>
</div>
	  
	  </div>
	  <script type="text/javascript">
	  function updateboev(b_writer, b_p_no){
			location.href='/semi/Updateboev.ad?b_writer='+b_writer+'&b_p_no='+b_p_no;
		 
		}
	  function pagetest01(){
		  location.href='/semi/selectboev.ad?currentPage=1';
	  }
	  function pagetest02(currentPage){
		  location.href='/semi/selectboev.ad?currentPage='+currentPage;
	  }
	  function pagetest03(p){
		  location.href='/semi/selectboev.ad?currentPage='+p;
	  }
	  function pagetest04(currentPage){
		  location.href='/semi/selectboev.ad?currentPage='+currentPage;
	  }
	  function pagetest05(maxPage){
		  location.href='/semi/selectboev.ad?currentPage='+maxPage;
	  }
	  </script>
</body>

</html>
