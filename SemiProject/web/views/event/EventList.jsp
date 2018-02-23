<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
	.ADmain{
		width:200px;
		height:150px;
		border: 1px solid lightgray;
		
	}
	
	.ADimg{
		border: 1px dotted blackgray;
		
	}	
	
	.ADexp{
		border 1px:dashed blue;
	}
	
	.ADprice{
	
	}
	
	.ADposition{
	
	
	}

</style>

</head>
<body>
	<%@ include file="../common/header.jsp"%>
		
	<div class="container">
	  <h2>Carousel Example</h2>  
	  <div id="myCarousel" class="carousel slide" data-ride="carousel">
	    <!-- Indicators -->
	    <ol class="carousel-indicators">
	      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	      <li data-target="#myCarousel" data-slide-to="1"></li>
	      <li data-target="#myCarousel" data-slide-to="2"></li>
	    </ol>
	
	    <!-- Wrapper for slides -->
	    <div class="carousel-inner">
	      <div class="item active">
	        <img src="la.jpg" alt="Los Angeles" style="width:100%;">
	      </div>
	
	      <div class="item">
	        <img src="chicago.jpg" alt="Chicago" style="width:100%;">
	      </div>
	    
	      <div class="item">
	        <img src="ny.jpg" alt="New york" style="width:100%;">
	      </div>
	    </div>
	
	    <!-- Left and right controls -->
	    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
	      <span class="glyphicon glyphicon-chevron-left"></span>
	      <span class="sr-only">Previous</span>
	    </a>
	    <a class="right carousel-control" href="#myCarousel" data-slide="next">
	      <span class="glyphicon glyphicon-chevron-right"></span>
	      <span class="sr-only">Next</span>
	    </a>
	  </div>
	</div>
	
	<ul>
		<li>마감 임박순</li>
		<li>조회순</li>
		<li>최신순</li>
		<li>낮은 가격순</li>
		<li>높은 가격순</li>
	</ul>


	<!-- 광고리스트 -->
	<ul>
		<li>
			<div class =ADmain>
				<div class = ADimg>
				
				</div>
				
				<div class = ADexp>
					<div class = ADprice>
					
					</div>
					
					<div class = ADposition>
					
					</div>
				</div>
			</div>	
		</li>
		
		<li>
			<div class =ADmain>
				<div class = ADimg>
				
				</div>
				
				<div class = ADexp>
					<div class = ADprice>
					
					</div>
					
					<div class = ADposition>
					
					</div>
				</div>
			</div>	
		</li>
		
		<li>
			<div class =ADmain>
				<div class = ADimg>
				
				</div>
				
				<div class = ADexp>
					<div class = ADprice>
					
					</div>
					
					<div class = ADposition>
					
					</div>
				</div>
			</div>	
		</li>
		
		<li>
			<div class =ADmain>
				<div class = ADimg>
				
				</div>
				
				<div class = ADexp>
					<div class = ADprice>
					
					</div>
					
					<div class = ADposition>
					
					</div>
				</div>
			</div>	
		</li>
		
	</ul>
	
	
	
	<%@ include file="../common/footer.jsp" %>
</body>
</html>