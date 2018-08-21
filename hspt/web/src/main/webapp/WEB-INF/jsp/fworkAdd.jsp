<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>著作</title>
  <link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>

</head>
<body>
    
<form class="layui-form" action="fwork/add" method="post" target="rfFrame">

<div class="layui-tab-item layui-show">
  <div class="layui-form-item">
	        <label class="layui-form-label"style="width: 15%;" >工作证号</label>
	         <div class="layui-input-inline" style="width: 30%;">
	        <input name="id" lay-verify="required|number" placeholder="请输入工作证号" autocomplete="off" class="layui-input" type="text"> 
	         </div>
	        <div class="layui-form-mid "><font color="red" size="5">*</font></div>
            </div>

    <div class="layui-form-item">
    <label class="layui-form-label">著作名称</label>
    <div class="layui-input-inline">
      <input type="text" name="bookName"  class="layui-input" >
    </div>
  </div>
    <div class="layui-form-item">
    <label class="layui-form-label">级别</label>
    <div class="layui-input-block">
        <div class="layui-input-inline">
      <select name="grade" >
        <option value="">请选择</option>
        <option value="主编">主编</option>
        <option value="副主编">副主编</option>
        <option value="编委">编委</option>
      </select>
    </div> 
	</div>	</div>
	  <div class="layui-form-item">
    <label class="layui-form-label">出版日期</label>
    <div class="layui-input-inline">
      <input type="text" name="time" placeholder="yyyy-MM-dd"  class="layui-input" id="time">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">出版社</label>
    <div class="layui-input-inline">
      <input type="text" name="address"  class="layui-input">
    </div>
  </div>
    <div class="layui-form-item">
    <label class="layui-form-label">备注</label>
    <div class="layui-input-inline">
      <input type="text" name="bz" class="layui-input">
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
   window.open("http://localhost:8080/web/awardAdd");
    return true;
  });
  
});
layui.use('laydate', function(){
	  var laydate = layui.laydate;
	  
	  //执行一个laydate实例
	  laydate.render({
	    elem: '#time' //指定元素
	  });
	});

	  
</script>
</html>