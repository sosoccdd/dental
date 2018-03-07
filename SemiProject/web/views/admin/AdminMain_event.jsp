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
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['월', '수익'],
          ['1월',  230000],
          ['2월',  50000],
          ['3월',  100000],
          ['5월',  12000],
          ['6월',  230000],
          ['7월',  100000]
          
        ]);

        var options = {
          title: 'Company Performance',
          hAxis: {title: '수익관리',  titleTextStyle: {color: '#333'}},
          vAxis: {minValue: 0}
        };

        var chart = new google.visualization.AreaChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>


</head>

<body>

	<%@include file="common/header.jsp"%>
	<%@include file="common/leftnav.jsp"%>
	<div class="div-tag-good">
	  <div id="chart_div" style="height: 500px"></div>
	  <h1>회원결제 리스트</h1>
	  <table class="w3-table-all w3-hoverable">
    <thead>
      <tr class="w3-light-grey">
        <th>상품코드</th>
        <th>시작날짜</th>
        <th>종료날짜</th>
        <th>회원 ID</th>
        <th>병원이름</th>
        <th>결제금액</th>
        <th>게시판코드</th>
        <th>조회수</th>
      </tr>
    </thead>
    <%for(int i = 0; i<10; i++ ){%>
    <tr>
      <td>1</td>
      <td>2017-12-30</td>
      <td>2018-03-03</td>
      <td>test01</td>
      <td>치아미백치과</td>
      <td>10000</td>
      <td>code_23</td>
      <td>130</td>
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
