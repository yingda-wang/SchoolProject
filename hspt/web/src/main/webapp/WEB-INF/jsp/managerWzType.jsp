<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>查看/新增物资类别</title>
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
	 	  
	 
});
  

</script>
<script >

</script>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">查看/新增物资类别</font></legend>
</fieldset>
<form  class="layui-form" action="wzInfo/addWzType" method="post" >
<div class="layui-collapse"  lay-filter="test">
  <div class="layui-colla-item">
    <h2 class="layui-colla-title">物资类别基本信息</h2>
    <div class="layui-colla-content layui-show" style="margin-left: 30%" >
    
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
		 <label class="layui-form-label"style="width: 15%;" >新增物资类别查看</label>
			    <div class="layui-input-inline" style="width: 30%;">
			      <input name="type" id="type" lay-verify="required" placeholder="请输入物资类别名称" autocomplete="off" class="layui-input" type="text" >
			    </div>
			     <div class="layui-form-mid "><font color="red" size="5">*</font></div>
	 </div>   
	       </div>
    
    	<div class="layui-form-item" style="margin-left: 35%">
		    <div class="layui-input-block">
		       <button   class="layui-btn" lay-submit lay-filter="formDemo" id = "tj">立即提交</button>
		      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
		    </div>
		  </div>		  	     
  </div>
  </div>
  </form>
</body>
 <iframe id="rfFrame" name="rfFrame" src="about:blank" style="display:none;"></iframe> 
</html>