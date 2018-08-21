<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="layui/css/layui.css"  media="all">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script src="layui/layui.js" charset="utf-8"></script>
</head>
<body style="background:url(image/bg.jpg) no-repeat;">
  <script type="text/javascript">
  layui.use('layer', function(){
      var layer = layui.layer;
      layer.open({
		  type: 1, 
		  area: ['500px', '300px'],
		  offset: '100px',
		  content: $('#edit'),//这里content是一个普通的String
		  cancel: function(index, layero){
		  
			 
			}    		
	});
    });                      
  </script>
  <div id="edit" style="display:none;">
  	<div style="width:100%;height:20%;background:yellow;">
  		我要以。。。身份登录
  	</div>
  	<c:forEach items="${qx}" var="s" >
  		
  		<a href="javascript:void(0);" onclick ="tz('${s}')" style="width:100%;background:orange;border: 1px solid green;">${s }</a>
  		
  	</c:forEach>
  </div>
</body>
<script type="text/javascript">
	function tz(qx){
		
		if(qx=="组员")
			window.location.href="index";
		else if(qx=="组长")
			window.location.href="indexZuZ";
		else if(qx=="质控员")
			window.location.href="indexZhiKY";
		else if(qx=="设备质控员")
			window.location.href="indexSheBZKY";
		else if(qx=="物资质控员")
			window.location.href="indexWuZZKY";
		else if(qx=="档案质控员")
			window.location.href="indexDangAZKY";
		else{
			window.location.href="indexAdmin";
		}
	}
</script>
</html>