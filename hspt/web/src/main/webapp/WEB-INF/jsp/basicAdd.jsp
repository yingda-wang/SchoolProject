<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>基层进修人员信息录入</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="layui/css/layui.css"  media="all">
  <script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<script src="layui/layui.js" charset="utf-8"></script>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">基层进修人员信息录入</font></legend>
</fieldset>
<form class="layui-form" action="basic/add" method="post">
  <div class="layui-form-item">
    <label class="layui-form-label">进修来源</label>
    <div class="layui-input-block"style="width:20%;">
      <select name="studyFrom" lay-verify="required">      
        <option value="医务部进修">医务部进修</option>
        <option value="产前筛查培训班">产前筛查培训班</option>
        <option value="集团医院">集团医院</option>
      </select>
    </div>   
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">姓名</label>
    <div class="layui-input-inline">
      <input type="text" name="name" required lay-verify="required"  class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">单位</label>
    <div class="layui-input-inline">
      <input type="text" name="company" required lay-verify="required"  class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">科室</label>
    <div class="layui-input-inline">
      <input type="text" name="department" required lay-verify="required"  class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">职务</label>
    <div class="layui-input-inline">
      <input type="text" name="post" required lay-verify="required"  class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">电话</label>
    <div class="layui-input-inline">
      <input type="text" name="phone" required lay-verify="required"  class="layui-input">
    </div>
  </div>
  
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">进修开始时间</label>
      <div class="layui-input-inline">
        <input class="layui-input" id="date" type="text" name="studyTime" placeholder="yyyy-MM-dd">
      </div>
    </div>
  </div>
    	<div class="layui-form-item" style="margin-left: 35%">
		    <div class="layui-input-block">
		       <button   class="layui-btn" lay-submit lay-filter="formDemo" id = "tj">立即提交</button>
		      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
		    </div>
		  </div>   
</form>
</body>
<iframe id="rfFrame" name="rfFrame" src="about:blank" style="display:none;"></iframe> 
<script>
layui.use('laydate', function(){
	  var laydate = layui.laydate;
	  
	  //常规用法
	  laydate.render({
	    elem: '#date'
	  });
});
layui.use('form',function(){
  var form = layui.form;
  form.render();
  //监听提交
  document.forms[0].target="rfFrame";  
  form.on('submit(formDemo)', function(data){
	  layer.msg("提交成功!");
	    return true;
	  });
});
</script>
</html>