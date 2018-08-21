<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="layui/css/layui.css">
<title>添加实验室</title>
</head>
<body>

<script>
layui.use(['form'], function(){
  var form = layui.form;
  form.render();
  document.forms[0].target="rfFrame";  
  form.on('submit(demo1)', function(data){
	  layer.msg("注册成功!");
	    return true;
	  });	  
	
	
form.verify({
	  jy: function(data){
		var roomcode=document.getElementsByName("roomcode")[0].value.trim();

		var result=""
			  $.ajax({  
	              type : "get",  
	              url : "lab/jy",
	              data:"roomcode="+roomcode,
	              async : false,  
	              success :function(data){  
	                result=data; 
	              }  
	              });    
	  	if(result=="1"){
	  		return '已有此实验室!';
	  	}
	  }  
	});    
});
	</script>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">添加实验室</font></legend>
</fieldset>

<form class="layui-form" action="lab/addLab" method="post" >
  <div class="layui-form-item">
    <label class="layui-form-label" style="margin-left: 30%" >房间号</label>
    <div class="layui-input-block">
      <input name="roomcode" style="width: 20%;" placeholder="请输入实验室房间号"  lay-verify="required|jy" autocomplete="off"  class="layui-input" type="text">
    </div>
  </div>

  <div class="layui-form-item">
    <label class="layui-form-label" style="margin-left: 30%">姓名</label>
    <div class="layui-input-block">
      <input name="name"   style="width: 20%;"  lay-verify="required"  placeholder="请输入负责人姓名" autocomplete="off"  class="layui-input" type="text">
    </div>
  </div>
  
  <div class="layui-form-item">
    <label class="layui-form-label" style="margin-left: 30%">学生人数</label>
    <div class="layui-input-block">
      <input name="rs"  style="width: 20%;" lay-verify="required"  placeholder="请输入学生人数"  autocomplete="off" class="layui-input" type="text">
    </div>
  </div>

  <div class="layui-form-item">
    <div class="layui-input-block" style="margin-left: 40%">
      <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
  
  </form>
  
</body>
<iframe id="rfFrame" name="rfFrame" src="about:blank" style="display:none;"></iframe> 

</html>