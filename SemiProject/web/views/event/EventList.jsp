<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
    
<% 
	ArrayList<HashMap<String, Object>> list = (ArrayList<HashMap<String, Object>>)request.getAttribute("list"); 
	
%>  
<!DOCTYPE html>
<html>
<head> 
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="/semi/css/reset.css">
  <link rel="stylesheet" href="/semi/css/common.css">
<title>Insert title here</title>
<style>
	.ADmain{
		width:500px;
		height:400px;
		border: 2px solid lightgray;
		display:inline-block;
		margin-left:50px;
		margin-right:50px;
		margin-top:30px
		
	}
	
	.ADmain:hover{
		cursor:pointer;
		border:3px solid blue;
		
	}
	
	.ADimg{
	
		width:498px;
		height:248px;
	}	
	
	.ADexp{
		border: 1px dashed black;
		width:498px;
		height:148px;
		padding-left:20px;
	}
	
	.Hname2{
		font-size:22px;
	}
	.price2{
		font-size:25px;
		color:orange;
	}
	.date2{
		font-size:15px;
		color:gray;
	}
	
	.ADprice{
		padding-top:20px;
		
	}

	.ADposition{
		text-align:center;
		padding-top:65px;
	
	}
	.position2{
		font-size:17px;
	}
	.img2{
		width:495px;
		height:247px;
	}
	.submenu2{
		text-align:center;
	}
	.submenudiv2{
		padding-top:50px;
		height:80px;
		width:1200px;
		
	
	}
	.menulabel2{
		font-size:25px;
		color:gray;
		
	}
	.menulabel2:hover{
		font-weight:bold;
		color:black;
		cursor:pointer;
	}
	.submenu2{
		width:200px;
	}
	
</style>

</head>
<body>
	<%@ include file="../common/header.jsp"%>
		
  <div class="container">
  <h2>조치 이벤트</h2>  
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
        <img src="/semi/images/event/event11.jpg" alt="EAD1" style="width:100%;">
      </div>

      <div class="item">
         <img src="/semi/images/event/event07.jpg" alt="EAD2" style="width:100%;"> 
      </div>
    
      <div class="item">
        <img src="/semi/images/event/event03.jpg" alt="EAD3" style="width:100%;">
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
	
	<div class = "submenudiv2 w1200 middle">
	<ul>
		<li><div class = "submenu2 fl "><label class = "menulabel2">마감 임박순</label></div></li>
		<li><div class = "submenu2 fl "><label class = "menulabel2">조회순</label></div></li>
		<li><div class = "submenu2 fl "><label class = "menulabel2">최신순</label></div></li>
		<li><div class = "submenu2 fl "><label class = "menulabel2">낮은 가격순</label></div></li>
		<li><div class = "submenu2 fl "><label class = "menulabel2">높은 가격순</label></div></li>
	</ul>
	</div>
	
	<div>
		
		<% if(loginUser.getType().equals("C") && loginUser != null){ %>
				<button class = "ELinsertBtn" onclick = "ELinsertBtn();"> 이벤트 등록하기 </button>
		<% } %>
	</div>
	<script>
		function ELinsertBtn(){
			location.href = '<%= request.getContextPath() %>/views/event/EventForm.jsp'
	
		}
	</script>
	
	<br><br>
	
	
	<!-- 광고리스트 -->
	<div class="w1200 middle">
		
		<div class = "ADM " >
			<div class ="ADmain fl">
<%-- 				<% System.out.println("list.size() : " + list.size());
				
				for(int i = 0; i< list.size(); i++){
					HashMap<String, Object> hmap = list.get(i);
				%>
					<div class = "ADimg">
						<input type = "hidden" value="<%= hmap.get("eid") %>"/>
						<!-- <img src = "/dental/"> -->
					</div>
					
					<div class = "ADexp">
					<div class = "ADprice fl">
						<label class = "Hname2"><%= hmap.get("ewriter") %></label><br>
						<label class = "price2"><%= hmap.get("eprice") %></label><br>
						<label class = "date2">이벤트 기간: <%= hmap.get("esdate") %> ~ <%= hmap.get("eedate") %> </label>
						<label class = "date2">조회수 <%= hmap.get("ecount") %> w</label>
					</div>
			
					<div class = "ADposition">
						<label class = "position2"> 인천광역시 송도 </label>
					</div>
				</div> 
				<% } %>
				 --%>
				<div class = "ADimg">
					<img src = "/semi/images/event/event01.jpg" class = "img2"/>
				</div>
				
				<div class = "ADexp">
					<div class = "ADprice fl">
						<label class = "Hname2">강남 365 치과의원(송도점)</label><br>
						<label class = "price2">월 19만원 ~</label><br>
						<label class = "date2">이벤트 기간: 2018.01.31 ~ 2018.02.28 </label>
					</div>
					
					<div class = "ADposition">
						<label class = "position2"> 인천광역시 송도 </label>
					</div>
				</div> 
				
				
			</div>	
		</div>
			<script>
			$(function(){
				$(".ADimg").click(function(){
					var num = $(this).children().children().eq(0).val();
					console.log(num);
					
					location.href="<%= request.getContextPath() %>/selectOne.ev?num=" + num;
				});
			});
			</script>
		
		
	
		<!-- <li >
		<div class = "ADM">
			<div class ="ADmain">
				<div class = "ADimg  fl">
					<img src = "../../images/event/event02.jpg" class = "img2"/>
				</div>
				
				<div class = "ADexp fl">
					<div class = "ADprice fl">
						<label class = Hname2>유앤아이치과의원</label><br>
						<label class = price2>319 만원</label><br>
						<label class = date2>이벤트 기간: 2017.12.11 ~ 2018.02.28 </label>
					</div>
					
					<div class = "ADposition">
						<label class = "position2"> 서울특별시 강남구 </label>
					</div>
				</div>
			</div>
		</div>	
		</li>
		<br><br>
		<li>
		<div class = "ADM">
			<div class ="ADmain fl">
				<div class = "ADimg">
					<img src = "../../images/event/event03.jpg" class = "img2"/>
				</div>
				
				<div class = "ADexp">
					<div class = "ADprice fl">
						<label class = Hname2>푸른나무치과의원</label><br>
						<label class = price2>299 만원~</label><br>
						<label class = date2>이벤트 기간: 2018.01.08 ~ 2018.02.28 </label>
					</div>
					
					<div class = "ADposition">
						<label class = "position2"> 서울특별시 강남구 </label>
					</div>
				</div>
			</div>
		</div>	
		</li>
		
		<li>
		<div class = "ADM">
			<div class ="ADmain">
				<div class = "ADimg">
					<img src = "../../images/event/event04.jpg" class = "img2"/>
				</div>
				
				<div class = "ADexp">
					<div class = "ADprice fl">
						<label class = Hname2>강남 365 치과의원(송도점)</label><br>
						<label class = price2>299 만원 ~</label><br>
						<label class = date2>이벤트 기간: 2018.01.31 ~ 2018.02.28 </label>
					</div>
					
					<div class = "ADposition">
						<label class = "position2"> 인천광역시 연수구 </label>
					</div>
				</div>
			</div>	
		</div>
		</li>
		
		<br><br>
		<li>
		<div class = "ADM">
			<div class ="ADmain fl">
				<div class = "ADimg">
					<img src = "../../images/event/event05.jpg" class = "img2"/>
				</div>
				
				<div class = "ADexp">
					<div class = "ADprice fl">
						<label class = Hname2>강남 365 치과의원(송도점)</label><br>
						<label class = price2>월 17만원 ~</label><br>
						<label class = date2>이벤트 기간: 2018.01.01 ~ 2018.02.28 </label>
					</div>
					
					<div class = "ADposition">
						<label class = "position2"> 인천광역시 연수구 </label>
					</div>
				</div>
			</div>
		</div>	
		</li>
		
		<li>
		<div class = "ADM">
			<div class ="ADmain">
				<div class = "ADimg">
					<img src = "../../images/event/event06.jpg" class = "img2"/>
				</div>
				
				<div class = "ADexp">
					<div class = "ADprice fl">
						<label class = Hname2>강남 365 치과의원(송도점)</label><br>
						<label class = price2>48 만원 ~</label><br>
						<label class = date2>이벤트 기간: 2018.02.19 ~ 2018.02.28 </label>
					</div>
					
					<div class = "ADposition">
						<label class = "position2"> 인천광역시 연수구 </label>
					</div>
				</div>
			</div>	
		</div>
		</li>
		
		<br><br>
		<li>
		<div class = "ADM">
			<div class ="ADmain fl">
				<div class = "ADimg">
					<img src = "../../images/event/event07.jpg" class = "img2"/>
				</div>
				
				<div class = "ADexp">
					<div class = "ADprice fl">
						<label class = Hname2>강남 365 치과의원(송도점)</label><br>
						<label class = price2>48 만원 ~</label><br>
						<label class = date2>이벤트 기간: 2018.02.19 ~ 2018.02.28 </label>
					</div>
					
					<div class = "ADposition">
						<label class = "position2"> 인천광역시 송도 </label>
					</div>
				</div>
			</div>
		</div>	
		</li>
		
		<li>
		<div class = "ADM">
			<div class ="ADmain">
				<div class = "ADimg">
					<img src = "../../images/event/event08.jpg" class = "img2"/>
				</div>
				
				<div class = "ADexp">
					<div class = "ADprice fl">
						<label class = Hname2>강남 그랜드 치과 의원</label><br>
						<label class = price2>월 10만원 </label><br>
						<label class = date2>이벤트 기간: 2018.02.18 ~ 2018.02.28 </label>
					</div>
					
					<div class = "ADposition">
						<label class = "position2"> 서울특별시 서초구 </label>
					</div>
				</div>
			</div>	
		</div>
		</li>
		
		<br><br>
		<li>
		<div class = "ADM">
			<div class ="ADmain fl">
				<div class = "ADimg">
					<img src = "../../images/event/event09.jpg" class = "img2"/>
				</div>
				
				<div class = "ADexp">
					<div class = "ADprice fl">
						<label class = Hname2>유앤아이치과의원</label><br>
						<label class = price2>월 5 만원 ~</label><br>
						<label class = date2>이벤트 기간: 2018.01.25 ~ 2018.02.28 </label>
					</div>
					
					<div class = "ADposition">
						<label class = "position2"> 서울특별시 강남구 </label>
					</div>
				</div>
			</div>
		</div>	
		</li>
		
		<li>
		<div class = "ADM">
			<div class ="ADmain">
				<div class = "ADimg">
					<img src = "../../images/event/event10.jpg" class = "img2"/>
				</div>
				
				<div class = "ADexp">
					<div class = "ADprice fl">
						<label class = Hname2>강남 365 치과 의원(송도점)</label><br>
						<label class = price2>월 15만원 ~</label><br>
						<label class = date2>이벤트 기간: 2018.01.23 ~ 2018.02.28 </label>
					</div>
					
					<div class = "ADposition">
						<label class = "position2"> 인천광역시 연수구 </label>
					</div>
				</div>
			</div>	
		</div>
		</li> -->
	</div>
	
	
	
	<%@ include file="../common/footer.jsp" %>
</body>
</html>