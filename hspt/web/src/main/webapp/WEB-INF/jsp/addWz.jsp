<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>物资录入</title>
 <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="layui/css/layui.css"  media="all">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  
</head>

<script src="layui/layui.js" charset="utf-8"></script>

<script>


layui.use(['element', 'layer'], function(){
  var element = layui.element;
  var layer = layui.layer;
 
});
  

layui.use('form', function(){
	  var form = layui.form;
	  form.render();	

	  document.forms[0].target="rfFrame";  
	  form.on('submit(formDemo)', function(data){
		  layer.msg("提交成功!");
		    return true;
		  });
	  form.verify({
		  adc: function(value, item){ //value：表单的值、item：表单的DOM对象
      	  var type=document.getElementById("type").value.trim();			    
			    if(type==1){
					return '请选类别';
			 }
		  }
		});	  
	 
});
  

</script>
<script >

</script>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">添加物资</font></legend>
</fieldset>
<form  class="layui-form" action="wzInfo/addWz" method="post" >

   
       <div class="layui-form-item">
	      <label class="layui-form-label" style="width: 15%;">物资类别</label>
	      <div class="layui-input-inline" style="width: 30%;">
	        <select name="tId" id="dId" lay-filter="type" lay-verify="adc" lay-search="">
	          <option value=1>==>请选择<==</option>
	          <c:forEach items="${Type}" var="Type" varStatus="i">
	           <option value="${Type.id}">${Type.type}</option>
	          </c:forEach>          
	        </select>
	      </div>
	      	 <div class="layui-form-mid "><font color="red" size="5">*</font></div> 
		</div> 
    
       <div class="layui-form-item">
      <label class="layui-form-label" style="width: 15%;">物资ID</label>
       <div class="layui-input-inline" style="width: 30%;">
		  <input name="wzId" id="id" lay-verify="required" placeholder="请输入物资ID" autocomplete="off" class="layui-input" type="text" >
		</div>
		<div class="layui-form-mid "><font color="red" size="5">*</font></div>
   </div>
   
   <div class="layui-form-item">
		    <label class="layui-form-label"style="width: 15%;" >物资名称</label>
		    <div class="layui-input-inline" style="width: 30%;">
		      <input name="name" id="name" lay-verify="required" placeholder="请输入物资名称" autocomplete="off" class="layui-input" type="text" >
		    </div>
		     <div class="layui-form-mid "><font color="red" size="5">*</font></div>
   </div>
    
		  
	 <div class="layui-form-item">
			    <label class="layui-form-label"style="width: 15%;" >物资价格</label>
			    <div class="layui-input-inline" style="width: 30%;">
			      <input name="price" id="price" lay-verify="required" placeholder="请输入物资价格" autocomplete="off" class="layui-input" type="text" >
			    </div>
			     <div class="layui-form-mid "><font color="red" size="5">*</font></div>
	 </div> 	
    
     <div class="layui-form-item" style="margin-left: 35%">
		    <div class="layui-input-block">
		       <button   class="layui-btn" lay-submit lay-filter="formDemo" id = "tj">提交成功</button>
		      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
		    </div>
		  </div>	  	     
  
  </form>
</body>
 <iframe id="rfFrame" name="rfFrame" src="about:blank" style="display:none;"></iframe> 
</html>