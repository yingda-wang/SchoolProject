<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<title>吉大一院生殖科管理系统</title>
 <!-- BOOTSTRAP CORE STYLE  -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME STYLE  -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLE  -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

</head>

  <style type="text/css">
*{margin:0;padding:0;list-style-type:none;}
a,img{border:0;text-decoration:none;}

.clearfix:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0}
*html .clearfix{height:1%}

.solution-list{position:relative;height:412px;z-index:9;width:1200px;margin:0 auto;}
.short-bar{position:absolute;top:187px;left:50%;margin-left:-15px;width:30px;height:3px;background-color:#fff}
.active .short-bar{top:201px;background-color:#009dff}
.solution-list ul li{float:left;width:240px;position:relative;height:412px;transition:all .5s;-moz-transition:all .5s;-webkit-transition:all .5s;-o-transition:all .5s}
.solution-item-wrapper{width:240px;height:412px;background:url(image/i1.jpg) center no-repeat}
.solution-item-02{background-image:url(image/i2.jpg)}
.solution-item-03{background-image:url(image/i3.jpg)}
.solution-item-04{background-image:url(image/i4.jpg)}
.solution-item-05{background-image:url(image/i5.jpg)}
.active .solution-item-wrapper{position:absolute;z-index:9;top:-62px;left:-51px;width:340px;height:526px;background:url(image/i1_1.jpg) no-repeat;-webkit-box-shadow:0 5px 40px rgba(0,0,0,.5);-moz-box-shadow:0 5px 40px rgba(0,0,0,.5);box-shadow:0 5px 40px rgba(0,0,0,.5)}

@media only screen and (max-width:1400px){
	.product-special-li-5.active .solution-item-wrapper{left:-102px}
}
.active .solution-item-02{background-image:url(image/i2_1.jpg)}
.active .solution-item-03{background-image:url(image/i3_1.jpg)}
.active .solution-item-04{background-image:url(image/i4_1.jpg)}
.active .solution-item-05{background-image:url(image/i5_1.jpg)}
.solution-list ul li p.solution-title{position:absolute;top:211px;width:100%;text-align:center;color:#FFFFFF;font-size:20px;font-weight:600; z-index:2}
.solution-list ul li p.solution-intro{position:absolute;top:282px;left:50%;margin-left:-121px;width:242px;overflow:hidden;color:#ffffff;line-height:2;z-index:2;font-weight:600;opacity:0;filter:alpha(opacity=0);font-size:16px; text-align:justify}
.solution-list ul li a{display:none;position:absolute;top:452px;left:50%;margin-left:-87px;width:174px;height:40px;line-height:40px;text-align:center;font-size:16px;color:#fff;z-index:2;background-color:#0af}
.solution-list ul li a:hover{background-color:#0099e5;transition:all .6s;-moz-transition:all .6s;-webkit-transition:all .6s;-o-transition:all .6s}
.solution-list ul li.active p.solution-title{top:158px;font-size:22px}
.solution-list ul li.active p.solution-intro{top:230px;opacity:1;filter:alpha(opacity=100)}
.solution-list ul li.active a{top:388px;display:block}
</style>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	var b = $("#solutionList li");
	b.mouseover(function() {
		var e = $(this);
		b.removeClass("active");
		e.addClass("active")
	});

});
</script>        
<body background="image/b5.jpg">
 
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index">
                    <img src="assets/img/logo.png" />
                </a>
                  <img width="400px" src="image/1.png" />
                </div>
             
             <div align="right" style="margin-top: 20px" ><font  >欢迎您，尊敬的 ${user.name}</font></div>
             <div align="right"> <a href="javascript:void(0);" onclick="zhuxiao()"> <font color="red">退出登录</font></a></div>
            </div>

        
   
    
<div style="height:60px;"></div>

<div class="solution-list">
	<ul id="solutionList" class="clearfix">
		<li>
			<div class="solution-item-wrapper solution-item-01">
				<p class="solution-title">组文件查看</p>
				<div class="short-bar"></div>
				<a href="/web/gfileSee">查看详情</a>
			</div>
		</li>
		<li>
			<div class="solution-item-wrapper solution-item-02">
				<p class="solution-title">个人基本信息查询</p>
				<div class="short-bar"></div>
				<a href="presentPerson">查看详情</a>
			</div>
		</li>
		<li  class="active">
			<div class="solution-item-wrapper solution-item-03">
				<p class="solution-title">证书信息查看</p>
				<div class="short-bar"></div>
				<a href="/web/cardSearch">查看详情</a>
			</div>
		</li>
		<li>
			<div class="solution-item-wrapper solution-item-04">
				<p class="solution-title">个人经历查询</p>
				<div class="short-bar"></div>
				<a  href="/web/parttimeInfo" class="common" style="position:relative;top:223px;left:162px; text-decoration:none; color:white; font-size:16px; cursor:pointer;">兼职信息查看</a>
				<a href="/web/exeperienceAll" class="common" style="position:relative;top:223px;left:162px; text-decoration:none; color:white; font-size:16px; cursor:pointer;">工作|进修|教学经历</a>
			</div>
		</li>
		<li class="product-special-li-5">
			<div class="solution-item-wrapper solution-item-05">
				<p class="solution-title">其他查询</p>
				<div class="short-bar"></div>
				<p class="solution-intro"><font >个人奖励，著作信息</font></p>
				<a href="/web/awardAndfworkAdd">查看详情</a>
			</div>
		</li>
	</ul>
</div>
<div style="height:100px;"></div>
 
        <div class="container">
            <div class="row">
                <div class="col-md-12" align="right">
                                         吉大一院生殖科管理系统

            </div>
        </div>
 </div>
              
</body>
<script type="text/javascript">
	function zhuxiao(){
		 $.get("zhuxiao", function(result){
			 if(result=="finish")
			 window.location.href="login";
			 });
	}
</script>
</html>