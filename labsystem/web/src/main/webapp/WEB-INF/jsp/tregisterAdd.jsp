<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册</title>
 <link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">注册</font></legend>
</fieldset>

<form class="layui-form" action="authority/add" style="margin-top:5%;margin-left:5%;" method="post" target="ifr">
<div class="layui-form-item" style="width:35%;">
    <label class="layui-form-label">权限</label>
    <div class="layui-input-block">
      <select name="authority" lay-verify="required">
        <option value="教师">教师</option>
        <option value="负责人">负责人</option>
        <option value="管理员">管理员</option>
      </select>
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">教工号</label>
    <div class="layui-input-inline">
      <input type="text" name="jobnumber" required  lay-verify="required|number|jy"" placeholder="请输入工号" autocomplete="off" class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color="red">*</font></div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">姓名</label>
    <div class="layui-input-inline">
      <input type="text" name=name required  lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color="red">*</font></div>
  </div>
  
  
  
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo">注册</button>
      <button id="target" type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
</form>
 
<script>
//Demo
layui.use('form', function(){
  var form = layui.form;
  
  //监听提交
  form.on('submit(formDemo)', function(data){
    layer.msg("注册成功!");
    return true;
  });
  
  form.verify({
	  jy: function(value, item){
		  var result=""
			  $.ajax({  
	              type : "get",  
	              url : "authority/jy",
	              data:"jobnumber="+value,
	              async : false,  
	              success :function(data){  
	                result=data; 
	              }  
	              });    
		    
	  	if(result=="1"){
	  		return '已注册的教工号!';
	  	}
	  }
	  
	  
	});      
});
</script>
<iframe style="display:none;" name="ifr" id="ifr"></iframe>
</body>
</html>