<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
  <div class="w3-bar w3-sand">
    <a href="AdminMain.jsp" class="w3-bar-item w3-button">일반</a>
    <a href="AdminMain_D.jsp" class="w3-bar-item w3-button">의사</a>
    <a href="AdminMain_C.jsp" class="w3-bar-item w3-button test-a-tag">병원</a>
  </div>

  <table class="w3-table-all w3-hoverable">
    <thead>
      <tr class="w3-light-grey">
        <th>구분</th>
        <th>회원아이디</th>
        <th>회원이름</th>
        <th>가입일</th>
        <th>탈퇴여부</th>
      </tr>
    </thead>
    <%for(int i = 0; i<20; i++){ %>
    <tr>
      <td>1</td>
      <td>test01</td>
      <td>서은별</td>
      <td>2017-12-30</td>
      <td><button class="w3-white w3-border w3-border-blue w3-round">탈퇴</button></td>
    </tr>
   <%} %>

    
  </table>
<div class="w3-center">
<div class="w3-bar">
  <a href="#" class="w3-button">&laquo;</a>
  <a href="#" class="w3-button">1</a>
  <a href="#" class="w3-button">2</a>
  <a href="#" class="w3-button">3</a>
  <a href="#" class="w3-button">4</a>
  <a href="#" class="w3-button">&raquo;</a>
</div>
</div>
</div>
</body>

</html>
