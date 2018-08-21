<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head >
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font size="5" color="blue">申请增加设备</font></legend>
</fieldset>
<form class="layui-form" action="device/apply" target="ifr" method="post" style="margin-left:400px;">
  <div class="layui-form-item">
    <label class="layui-form-label">名称</label>
    <div class="layui-input-inline">
      <input type="text" name="name" required  lay-verify="required|sbjy" class="layui-input" >
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  <div class="layui-form-item" >
    <label class="layui-form-label">设备类别</label>
    <div class="layui-input-block"style="width:16%;">
      <select name="did">      
        
      </select>
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">数量</label>
    <div class="layui-input-inline">
      <input type="text" name="number" required lay-verify="required|number"  autocomplete="off" class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">申请人</label>
    <div class="layui-input-inline">
      <input type="text" name="applicant" required lay-verify="required"  autocomplete="off" class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  <div class="layui-inline">
      <label class="layui-form-label">申请时间</label>
      <div class="layui-input-inline">
        <input class="layui-input" name="arrivetime" id="sqsj" type="text">
      </div>
    </div>
 
  
  
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo" style="margin-top:10px;">立即提交</button>
    </div>
  </div>
</form>
 <iframe name="ifr" style="display:none;"> </iframe>
<script>
//Demo
layui.use('form', function(){
  var form = layui.form;
  $.post("deviceCat/cid", function(data) {
	  var cid=document.getElementsByName("did")[0];
	for(var i=0;i<data.length;i++){	
		var option=document.createElement("option");
		option.value=data[i].id;
		option.text=data[i].type;	
		cid.appendChild(option);
		
	}
	form.render('select');
	});
  //监听提交
  form.on('submit(formDemo)', function(data){
    layer.msg("申请成功!");
    return true;
  });
});

layui.use('laydate', function(){
	  var laydate = layui.laydate;
	  
	  //执行一个laydate实例
	  laydate.render({
	    elem: '#sqsj' //指定元素
	    ,value:new Date()
	  });
	});
</script>
</body>
</html>