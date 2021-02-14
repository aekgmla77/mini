<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="KO">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Title -->
<title>로그인</title>

<!-- CSS 라이브러리 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- CSS 스타일 -->
<link href="css/style(login&createUser).css" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="navbar navbar-expand-lg bg-light navbar-light">
	<div class="container-fluid">
		<a href="main.do" class="navbar-brand">YD <span>Dosirak</span></a>
		<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
		<span class="navbar-toggler-icon"></span>
		</button>
	</div>
</div>
<div class="login-form">
    <form action="login.do" method="post">
        <h2 class="text-center">로그인</h2>   
        <div class="form-group">
        	<div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text">
                        <span class="fa fa-user"></span>
                    </span>                    
                </div>
                <input id="mId" name="mId" type="text" class="form-control" placeholder="ID" required="required">
            </div>
        </div>
		<div class="form-group">
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text">
                        <i class="fa fa-lock"></i>
                    </span>                    
                </div>
                <input id="mPassword" name="mPassword" type="password" class="form-control" placeholder="Password" required="required">
            </div>
        </div>        
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">로그인</button>
        </div>
    </form>
    <p class="text-center">회원이 아니신가요? <a href="createUser.do">회원가입</a></p>
</div>
</body>
</html>