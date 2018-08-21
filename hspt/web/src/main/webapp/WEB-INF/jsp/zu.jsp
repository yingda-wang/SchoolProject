<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>员工信息管理</title>
<meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="layui/css/layui.css"  media="all">
   <script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<script src="layui/layui.js" charset="utf-8"></script>
<!-- 修改表单 -->
<script>

layui.use(['element', 'layer'], function(){
  var element = layui.element;
  var layer = layui.layer;
 
});

layui.use('form', function(){
	  var form = layui.form;
	  form.render();
	  
	  form.on('submit(formDemo)', function(data){
		  layer.msg("提交成功!");
		    return true;
		  });
	
	}); 
	  document.forms[0].target="rfFrame";  
	 
</script>
<!-- 查询表单  --> 
<script>
layui.use('table', function(){
  var table = layui.table
  ,form = layui.form;

});

</script>  
  
<body>
<iframe id="rfFrame" name="rfFrame" src="about:blank" style="display:none;"></iframe> 

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">删除组</font></legend>
</fieldset>
<form  class="layui-form" action="ZPosition/del1" method="post" >

		  <div class="layui-form-item">
      <label class="layui-form-label" style="width: 15%;">选择删除的小组</label>
      <div class="layui-input-inline" style="width: 30%;">
        <select lay-filter="zName" name = "id" lay-verify="required" lay-search="">
          <c:forEach items="${list}" var="list" varStatus="i">
           <option value="${list.id}">"${list.zName}"</option>
          </c:forEach>
        </select>
      </div>
           </div>
    
		 <div class="layui-form-item" style="margin-left: 35%">
		    <div class="layui-input-block">
		       <button   class="layui-btn" lay-submit lay-filter="formDemo" id = "tj">删除</button>
		    </div>
		  </div>
   
  </div>
  </form>
 </body>

</html>