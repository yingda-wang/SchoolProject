<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>头部</title>
<link rel="stylesheet" type="text/css" href="css/public.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/public.js"></script>
<link rel="stylesheet" href="layui/css/layui.css"  media="all">
 <script src="layui/layui.js" charset="utf-8"></script>
 
 
</head>
<body>
	<!-- 头部 -->
	<div class="head"  style="background:url(img/head1.jpg) top center no-repeat; background-size:cover;">
		<div class="headL">
			<img class="headLogo"  src="img/jd.jpg"/>
		</div>
	<div class="headT" >
		<marquee>	<span style="color:#FFF">${xn} ${xq}</span></marquee>
		</div>	<%-- <span style="color:#FFF"></span>  --%>
	
		<div class="headR" style="margin-top: 1%">
			<span style="color:#FFF">欢迎您:尊敬的${user.authority}${user.name}</span> <a href="javascript:void(0);"  onclick="tc()" rel="external">【退出】</a>
		</div> 
	</div>
<script type="text/javascript">
function tc(){
		 $.get("zhuxiao", function(result){
			 if(result=="finish")
				 window.top.location="login";
			 });
	}
</script>


	
	</body>
	
	
</html>