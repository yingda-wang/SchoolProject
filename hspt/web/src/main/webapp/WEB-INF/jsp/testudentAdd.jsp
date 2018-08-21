<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>教学经历</title>
  <link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>

</head>
<body>
    
<form class="layui-form" action="testudent/add" method="post" target="rfFrame">
<div class="layui-tab-item layui-show">
    <div class="layui-form-item">
    <label class="layui-form-label">带教</label>
    <div class="layui-input-inline">
      <input type="text" name="teaching" required lay-verify="required" class="layui-input" >
    </div>
        <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">从事年度</label>
    <div class="layui-input-inline">
      <input type="text" name="cyear" placeholder="yyyy" required lay-verify="required" class="layui-input" id="time">
    </div>
        <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">姓名</label>
    <div class="layui-input-inline">
      <input type="text" name="tname" required lay-verify="required"  class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">类型</label>
    <div class="layui-input-inline">
      <input type="text" name="type" required lay-verify="required" class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">专业</label>
    <div class="layui-input-inline">
      <input type="text" name="major"required lay-verify="required" class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button  class="layui-btn" lay-submit lay-filter="formDemo" id="tj">立即提交</button>
    </div>
  </div>
  </div>
</form>

</body>

<iframe id="rfFrame" name="rfFrame" src="about:blank" style="display:none;"></iframe> 
<script>


layui.use('form', function(){
  var form = layui.form;
  
  //监听提交
  form.on('submit(formDemo)', function(data){
	
   layer.msg("提交成功!");
    return true;
  });
  
});
layui.use('laydate', function(){
	  var laydate = layui.laydate;
	  
	  //执行一个laydate实例
	  laydate.render({
	    elem: '#time' //指定元素
	    ,type: 'year'
	  });
	});

	  
</script>
</html>