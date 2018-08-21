
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>课程/进修/工作信息</title>
<link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font size="5" color="blue">课程/进修/工作信息</font></legend>
</fieldset>
<iframe id="rfFrame" name="rfFrame" src="about:blank" style="display:none;"></iframe> 
<div class="layui-btn-group demoTable">

</div> 
<table class="layui-table" id="table" lay-filter="test"></table>
<script src="/layui/layui.js"></script>
<script>
layui.use('table', function(){
  var table = layui.table;
  table.render({
    elem: '#table'
    ,url: 'user/selectTecourse' //数据接口
    ,page: true //开启分页
    ,cols: [[ //表头
              {field: 'course', title: '承担课程', width:160}
              ,{field: 'cname', title: '课程名称', width:100, sort: true}
              ,{field: 'cyear', title: '从事年度', width:160}              
              ,{field: 'time', title: '学时', width: 100, sort: true}
    ]]
  });  
});
</script>
<table class="layui-table" id="table1" lay-filter="test"></table>
<script>
layui.use('table', function(){
  var table = layui.table;
  table.render({
    elem: '#table1'
    ,url: 'user/selectEexperience' //数据接口
    ,page: true //开启分页
    ,cols: [[ //表头
              
              {field: 'workAddress', title: '进修单位', width:160, sort: true}
              ,{field: 'classes', title: '进修科室', width:160} 
              ,{field: 'technicalText', title: '进修内容', width: 177}
             
    ]]
  });  
});
</script>
<table class="layui-table" id="table2" lay-filter="test"></table>
<script>

layui.use('table', function(){
  var table = layui.table;
  table.render({
    elem: '#table2'
    ,url: 'user/selectWexperience' //数据接口
    ,page: true //开启分页
    ,cols: [[ //表头
              
              {field: 'workAddress', title: '工作单位', width:160, sort: true}
              ,{field: 'classes', title: '科室', width:160} 
              ,{field: 'technicalPosition', title: '技术职称', width: 177}
              ,{field: 'statTime', title: '开始时间', width: 177}
              ,{field: 'stopTime', title: '结束时间', width: 177}
             
    ]]
  });  
});
</script>
</body>
</html>