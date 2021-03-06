<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String msg = (String)request.getAttribute("msg"); %>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css">
<!-- header -->
<%@ include file="../common/header.jsp" %>


<div class="w1200 middle loginPage subPage">
	
	<!-- tab menu -->
	<div class="tab">
	  <button class="tablinks active" onclick="openTab(event, 'Nlogin')" id="defaultOpen">일반로그인</button>
	  <button class="tablinks" onclick="openTab(event, 'Dlogin')">의사로그인</button>
	  <button class="tablinks" onclick="openTab(event, 'Clogin')">치과로그인</button>
	</div>
	
	<!-- tabContent: 일반 로그인 -->
	<form id="gLoginForm" action="<%= request.getContextPath() %>/login.me" method="post">
	<input type="hidden" name="mType" value="G">
	<div id="Nlogin" class="tabcontent">
	  <h3>일반로그인</h3>
	  <p>회원가입 시 등록하신 아이디와 비밀번호를 입력해주세요.</p>
	  
	  <div class="login-bg welcom-txt c-308deb">
	  	<% if(msg == null) { %>
	  		조치에 방문해 주셔서 감사합니다.
	  	<% } else { %>
	  		<%= msg %>
	  	<% } %>
	  </div>
	  
	  <!-- 아이디입력  -->
	  <div class="login-bg">
	  	<label>아이디</label>
	  	<input type="text" name="mId" placeholder="아이디를 입력해주세요">
	  </div>
	  <!-- 비밀번호 입력  -->
	  <div class="login-bg">
	  	<label>비밀번호</label>
	  	<input type="password" name="mPwd" placeholder="비밀번호를 입력해주세요">
	  </div>
	  
	  <button type="submit" class="login-btn" id="gLoginBtn" onclick="gLogin()">LOGIN</button>
	  
	  <!-- 아이디/비밀번호 찾기 -->
	  <div class="srch-btn">
	  	<a href="#" class="c-308deb">아이디찾기</a> | 
	  	<a href="#" class="c-308deb">비밀번호찾기</a>
	  </div>
	</div>
	</form>
	<!-- 일반로그인 End -->
	
	<!-- tabContent: 의사로그인 -->
	<form id="dLoginForm" action="<%= request.getContextPath() %>/login.me" method="post">
	<input type="hidden" name="mType" value="D">
	<div id="Dlogin" class="tabcontent">
	  <h3>의사로그인</h3>
	  <p>회원가입 시 등록하신 의사 아이디와 비밀번호를 입력해주세요.</p>
	  
	  <div class="login-bg welcom-txt c-308deb">
	  	<% if(msg == null) { %>
	  		조치에 방문해 주셔서 감사합니다.
	  	<% } else { %>
	  		<%= msg %>
	  	<% } %>
	  </div>
	  
	  <!-- 아이디입력  -->
	  <div class="login-bg">
	  	<label>아이디</label>
	  	<input type="text" placeholder="아이디를 입력해주세요">
	  </div>
	  <!-- 비밀번호 입력  -->
	  <div class="login-bg">
	  	<label>비밀번호</label>
	  	<input type="password" placeholder="비밀번호를 입력해주세요">
	  </div>
	  
	  <button type="submit" id="dLoginBtn" onclick="dLogin()" class="login-btn" >LOGIN</button>
	  
	  <!-- 아이디/비밀번호 찾기 -->
	  <div class="srch-btn">
	  	<a href="#" class="c-308deb">아이디찾기</a> | 
	  	<a href="#" class="c-308deb">비밀번호찾기</a>
	  </div>
	</div>
	</form>
	<!-- 의사로그인 End -->
	
	<!-- tabContent: 병원 로그인 -->
	<form id="cLoginForm3" action="<%= request.getContextPath() %>/login.me" method="post">
	<input type="hidden" name="mType" value="C">
	<div id="Clogin" class="tabcontent">
	  <h3>치과로그인</h3>
	  <p>회원가입 시 등록하신 치과의 아이디와 비밀번호를 입력해주세요.</p>
	  
	  <div class="login-bg welcom-txt c-308deb">
	  	<% if(msg == null) { %>
	  		조치에 방문해 주셔서 감사합니다.
	  	<% } else { %>
	  		<%= msg %>
	  	<% } %>
	  </div>
	  
	  <!-- 아이디입력  -->
	  <div class="login-bg">
	  	<label>아이디</label>
	  	<input type="text" placeholder="아이디를 입력해주세요">
	  </div>
	  <!-- 비밀번호 입력  -->
	  <div class="login-bg">
	  	<label>비밀번호</label>
	  	<input type="password" placeholder="비밀번호를 입력해주세요">
	  </div>
	  
	  <button type="submit" id="cLoginBtn" onclick="cLogin()" class="login-btn">LOGIN</button>
	  
	  <!-- 아이디/비밀번호 찾기 -->
	  <div class="srch-btn">
	  	<a href="#" class="c-308deb">아이디찾기</a> | 
	  	<a href="#" class="c-308deb">비밀번호찾기</a>
	  </div>
	</div>
	</form>
	<!-- 치과로그인 End -->
</div>

<script type="text/javascript">
	function gLogin(){
		$("#gLoginBtn").submit();
	}
	
	function dLogin(){
		$("#dLoginBtn").submit();
	}
	
	function cLogin(){
		$("#cLoginBtn").submit();
	}
</script>
<script>
//Tab Menu
function openTab(evt, tabName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(tabName).style.display = "block";
    evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
<!-- footer -->
<%@ include file="../common/footer.jsp" %>