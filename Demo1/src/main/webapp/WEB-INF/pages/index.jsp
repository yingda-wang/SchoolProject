<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>登录</title>	
</head>
<style>
.bg_box{
	width:100%;
	height: 100%;
	z-index: -1;
	position:absolute;
	top: 0;
	left: 0;
    filter: blur(3px);
}
.bg{
	width:100%;
	height: 100%;
}
.login_box{
	width: 450px;
	height: 330px;
	background: white;
	opacity: 0.9;
	margin: auto;
	border-radius: 10px;
	position:absolute;
	top: 0;
	left: 240px;
	bottom: 0;
}
.logo{
	margin: auto 10px;
	position:absolute;
	top: 0;
	bottom: 0;
}
.login_text{
	position:absolute;
	top: 80px;
	left:250px;
}
</style>
<body>
	<div class="bg_box">
		<img class="bg" src="123.png">
	</div>
	<div class="login_box">
		<div>
			<img class="logo" src="/logo.jpg">
			<div class="login_text">
			<form action="userInfo" method = "post" enctype = "application/x-www-form-urlencoded" accept-charset="utf-8" id = "form" >
			<p>用户名：<input type="text" name = "username" id = "username"></p>
			<p>密&nbsp;&nbsp;&nbsp;码：<input type="password" name="password" id = "password"></p>
			<input value="登录" type="submit"></form>			
			</div>
		</div>
	</div>
</body>
</html>