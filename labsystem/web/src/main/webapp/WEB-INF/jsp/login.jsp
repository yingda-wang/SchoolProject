<%@ page language="java" contentType="text/html;charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录</title>
<link rel="stylesheet" type="text/css" href="css/public.css" />
<link rel="stylesheet" type="text/css" href="css/page.css" />
<link rel="stylesheet" href="layui/css/layui.css">
<script src="layui/layui.js" charset="utf-8"></script>
</head>
<script>
layui.use(['form'], function(){
  var form = layui.form;
  form.render();

  form.on('submit(demo1)', function(data){
	  layer.msg("登录成功!");
	  
	    return true;
	  });	  
	});
	</script>
<script type="text/javascript">
    	window.onload=function(){
    		 if('${info}'=='400'){
    			 alert('账号或密码错误');
    		 }
    		 
    	};
</script>   	
<body>

	<!-- 登录body -->
	<div class="logDiv">
		<img class="logBanner" src="img/logBanner.png" />
		<div class="logGet">
			<!-- 头部提示信息 -->
			<div class="logD logDtip">
				<p class="p1">登录</p>
			</div>			
     <form class="layui-form" enctype="application/x-www-form-urlencoded" action="dl" method="post" >				
			<!-- 输入框 -->
			<div class="lgD">
				<img class="img1" src="img/logName.png" />
          <input name="jobnumber" style="background-color:rgba(255,255,255,0.8)"  placeholder="请输入工号"  lay-verify="required" autocomplete="off"  class="layui-input" type="text">
			</div>
			<div class="lgD">
				<img class="img1" src="img/logPwd.png" />
     <input name="password"  style="background-color:rgba(255,255,255,0.8)" lay-verify="required"  placeholder="请输入密码" autocomplete="off"  class="layui-input" type="password">
			</div>
			<div class="logC">
			    <a href="addUserInfo" ><button class="layui-btn" type="button">注册</button></a>
				<button class="layui-btn" lay-submit="" lay-filter="demo1">登 录</button>
			</div>
			</form>
		</div>
	</div>
</body>
</html>