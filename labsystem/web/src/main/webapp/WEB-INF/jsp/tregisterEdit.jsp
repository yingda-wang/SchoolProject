<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%String id=request.getParameter("id").toString(); %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改</title>
 <link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">修改</font></legend>
</fieldset>

<form class="layui-form" action="authority/qxedit" style="margin-top:5%;margin-left:5%;" method="post" target="ifr">
<div class="layui-form-item" style="width:35%;">
    <label class="layui-form-label">权限</label>
    <div class="layui-input-block">
      <select name="authority" lay-verify="required">
        <option value="教师">教师</option>
        <option value="负责人">负责人</option>
        <option value="管理员">管理员</option>
      </select>
    </div>
  </div> 
<input type="hidden" name="id" value="<%=id %>">
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo">修改</button>
    </div>
  </div>
</form>
 
<script>
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
<iframe style="display:none;" name="ifr" id="ifr"></iframe>
</body>
</html>