<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="layui/layui.js" charset="utf-8"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="layui/css/layui.css">
<title>课程分配</title>
</head>
<body>

<script>
layui.use(['form'], function(){
  var form = layui.form;
  form.render();
  document.forms[0].target="rfFrame";  
  form.on('submit(demo1)', function(data){
	  layer.msg("添加成功!");
	    return true;
	  });
	  
	  
	});
	</script>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">课程分配</font></legend>
</fieldset>

<form class="layui-form" action="lab/addLabCourse" method="post" >
<div class="layui-form-item">
    <label class="layui-form-label" style="margin-left: 30%">课程名</label>
     <div class="layui-input-inline" >
      <select name="coursename" style="width: 15%;" lay-filter="authority" lay-verify="required" lay-search="" >
	          <c:forEach items="${course}" var="course" varStatus="i">
	           <option value="${course.kcm}">${course.kcm}</option>
	          </c:forEach> 
	        </select>  
	   </div>
  </div>
<div class="layui-form-item">
    <label class="layui-form-label" style="margin-left: 30%">实验室房间号</label>
     <div class="layui-input-inline" >
      <select name="roomcode" style="width: 15%;" lay-filter="authority" lay-verify="required" lay-search="" >
	          <c:forEach items="${room}" var="room" varStatus="i">
	           <option value="${room.roomcode}">${room.roomcode}</option>
	          </c:forEach> 
	        </select>  
	   </div>
  </div>
 

  <div class="layui-form-item">
    <div class="layui-input-block" style="margin-left: 40%">
      <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
  
  </form>
  
</body>
<iframe id="rfFrame" name="rfFrame" src="about:blank" style="display:none;"></iframe> 

</html>