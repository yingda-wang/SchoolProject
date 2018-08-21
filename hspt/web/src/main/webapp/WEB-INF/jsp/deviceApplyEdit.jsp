<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
<%
String id=request.getParameter("id");

String number=request.getParameter("number");

%>
	
	
</body>
<script type="text/javascript">

	window.onload=function(){
		var id=<%=id%>
		var number=<%=number%>
		document.getElementsByName("number")[0].value=number;
		document.getElementsByName("id")[0].value=id;
		
	};
</script>

<form class="layui-form" action="deviceApply/edit" >
  <div class="layui-form-item" >
    <label class="layui-form-label">数量</label>
    <div class="layui-input-inline">
      <input type="text" name="number" required lay-verify="required"  class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button  class="layui-btn" lay-submit lay-filter="formDemo" id="tj">立即提交</button>
    </div>
  </div>
  <input type="hidden" name="id">
</form>
 <iframe id="rfFrame" name="rfFrame" src="about:blank" style="display:none;"></iframe> 
 
<script>
document.forms[0].target="rfFrame";

//Demo
layui.use('form', function(){
  var form = layui.form;
  
  //监听提交
  form.on('submit(formDemo)', function(data){
	  layer.msg("修改成功!");
    return true;
  });
});
</script>
</html>