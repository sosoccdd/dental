<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <title>조은치과 - 관리자</title>
    <link href="../../css/admin/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/admin/metisMenu.min.css" rel="stylesheet">
    <link href="../../css/admin/sb-admin-2.css" rel="stylesheet">
</head>
<body>

	 <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">관리자 로그인</h3>
                    </div>
                    <div class="panel-body">
                        <form id="loginForm" action="<%= request.getContextPath() %>/Adminligin.me" method="post">
                                <div class="form-group">
                                    <input class="form-control" placeholder="아이디" name="userId" type="text" autofocus>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="패스워드" name="userPwd" type="password" >
                                </div>
                                <div class="btn btn-lg btn-success btn-block" onclick="login()">로그인</div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
    
    	function login(){
    		$('#loginForm').submit();
    	}
    </script>





</body>
</html>