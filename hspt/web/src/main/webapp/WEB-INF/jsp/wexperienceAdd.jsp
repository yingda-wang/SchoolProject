<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>工作经历</title>
  <link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>

</head>
<body>
    
<form class="layui-form" action="wexperience/add" method="post" target="rfFrame">
<div class="layui-form-item">
	        <div class="layui-form-item">
	        <label class="layui-form-label"style="width: 15%;" >工作证号</label>
	         <div class="layui-input-inline" style="width: 30%;">
	        <input name="id" lay-verify="required|number" placeholder="请输入工作证号" autocomplete="off" class="layui-input" type="text"> 
	         </div>
	        <div class="layui-form-mid "><font color="red" size="5">*</font></div>
            </div>
           </div>


<div class="layui-tab-item layui-show">
    <div class="layui-form-item">
    <label class="layui-form-label">工作单位</label>
    <div class="layui-input-inline">
      <input type="text" name="workAddress"  class="layui-input" >
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">科室</label>
    <div class="layui-input-inline">
      <input type="text" name="classes"  class="layui-input">
    </div>
   </div>
  <div class="layui-form-item">
    <label class="layui-form-label">技术职称</label>
    <div class="layui-input-inline">
      <input type="text" name="technicalPosition"   class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">开始时间</label>
    <div class="layui-input-inline">
      <input type="text" name="startTime" placeholder="yyyy-MM-dd" class="layui-input" id="startTime">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">结束时间</label>
    <div class="layui-input-inline">
      <input type="text" name="stopTime" placeholder="yyyy-MM-dd"  class="layui-input" id="stopTime">
    </div>
  </div> 
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button  class="layui-btn" lay-submit lay-filter="formDemo" id="tj">保存进入下一项</button>
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
	
   layer.msg("保存成功!");
   window.open("http://localhost:8080/web/parttimeAdd");
    return true;
  });
  
});
layui.use(['form', 'layedit', 'laydate'], function(){
	  var form = layui.form
	  ,layer = layui.layer
	  ,layedit = layui.layedit
	  ,laydate = layui.laydate;
	   //日期
	  laydate.render({
	    elem: '#startTime'
	  });
	  laydate.render({
		elem: '#stopTime'
		  });
});
</script>
</html>