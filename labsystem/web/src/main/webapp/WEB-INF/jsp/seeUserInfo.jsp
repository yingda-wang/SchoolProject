<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="layui/layui.js" charset="utf-8"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="layui/css/layui.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
<title>修改个人信息</title>
</head>
<body>

<script>

layui.use(['form'], function(){
  var form = layui.form;
 
  form.render();
  document.forms[0].target="rfFrame";  
  form.on('submit(demo1)', function(data){
	  layer.msg("修改成功!");
	    return true;
	  });
	  
	  
	});

$.post("seeUser", function(data) {	  
	document.getElementsByName("jobnumber")[0].value=data[0].jobnumber.trim();
	document.getElementsByName("password")[0].value=data[0].password.trim();
	document.getElementsByName("name")[0].value=data[0].name.trim();
	document.getElementsByName("phone")[0].value=data[0].phone.trim(); 
	document.getElementsByName("email")[0].value=data[0].email.trim(); 
	document.getElementsByName("authority")[0].value=data[0].authority.trim();
	document.getElementsByName("id")[0].value=data[0].id;
	if(data[0].sex.trim()=="男"){
		$("input[type=radio][name=sex][value=男]").attr("checked",'checked')
	}else{
		$("input[type=radio][name=sex][value=女]").attr("checked",'checked')
	} 
	form.render();
});	
	
	</script>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">查看人员信息</font></legend>
</fieldset>

<form class="layui-form" action="Authority/update" method="post">
  <div class="layui-form-item">
    <label class="layui-form-label" style="margin-left: 30%" >工号</label>
    <div class="layui-input-block">
      <input name="jobnumber" style="width: 15%;" placeholder="请输入工号" readonly="readonly"  lay-verify="required" autocomplete="off"  class="layui-input" type="text">
    </div>
  </div>

  <div class="layui-form-item">
    <label class="layui-form-label" style="margin-left: 30%">姓名</label>
    <div class="layui-input-block">
      <input name="name"   style="width: 15%;"  lay-verify="required"  placeholder="请输入姓名" autocomplete="off"  class="layui-input" type="text">
    </div>
  </div>
  
   <div class="layui-form-item">
    <label class="layui-form-label" style="margin-left: 30%">密码</label>
		    <div class="layui-input-inline" style="width: 15%;">
             <input name="password" lay-verify="pass" placeholder="请输入密码" autocomplete="off" class="layui-input" type="password">		    </div>
		     <div class="layui-form-mid layui-word-aux ">请填写6到12位密码</div>
 
  </div>
  
  <div class="layui-form-item">
    <label class="layui-form-label" style="margin-left: 30%">性别</label>
    <div class="layui-input-block" >
      <input name="sex" value="男" title="男"  type="radio">
      <input name="sex" value="女" title="女" type="radio">
    </div>
  </div>
  
  <div class="layui-form-item">
    <label class="layui-form-label" style="margin-left: 30%">联系方式</label>
    <div class="layui-input-block">
      <input name="phone"  style="width: 15%;" lay-verify="required"  placeholder="请输入电话号"  autocomplete="off" class="layui-input" type="text">
    </div>
  </div>
  
  <div class="layui-form-item">
      <label class="layui-form-label" style="margin-left: 30%">验证邮箱</label>
      <div class="layui-input-inline">
        <input name="email"  lay-verify="email" autocomplete="off" placeholder="请输入邮箱" class="layui-input" type="text">
      </div>
  </div>
  
  <div class="layui-form-item">
    <label class="layui-form-label" style="margin-left: 30%">权限</label>
     <div class="layui-input-inline" >
      <input name="authority" style="width: 50%;" type="text"  lay-verify="required" readonly="readonly"   autocomplete="off"  class="layui-input" >
 </div>
  </div>
  
  <div class="layui-form-item">
    <div class="layui-input-block" style="margin-left: 40%">
      <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
  <input type="hidden" name="id"/>
  </form>
  
</body>
<iframe id="rfFrame" name="rfFrame" src="about:blank" style="display:none;"></iframe> 

</html>