<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>兼职工作查看</title>
<meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="layui/css/layui.css"  media="all">
   <script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<script src="layui/layui.js" charset="utf-8"></script>
<!-- 修改表单 -->
<!-- 查询表单  --> 


<script>
layui.use('table', function(){
  var table = layui.table
  ,form = layui.form;
  //方法级渲染
  table.render({
    elem: '#LAY_table_card'
    ,url: 'parttime/Info' //controller
    ,cols: [[
      {field:'id', title: '工作ID', width:200, sort: true, fixed: true}
      ,{field:'meeting', title: '学会',  width:220}
      ,{field:'specializedMeet', title: '专科分会',  width:220, }
      ,{field:'duty', title: '职务',  width:200}
      ,{field:'time', title: '任期截止时间', width:220}
      //,{field:'photo', title: '证书图片', width:200}
    ]]
    ,id: 'idTest'
    ,page: true
    ,height: 515
  });
})
 


</script>  
  
<body>

<!-- 修改表单 -->

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">兼职工作</font></legend>
</fieldset>


<table class="layui-hide" id="LAY_table_card" lay-filter="card"></table> </body>

</html>