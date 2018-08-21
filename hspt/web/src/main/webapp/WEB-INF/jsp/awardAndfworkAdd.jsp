<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>奖励/著作信息</title>
  <link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<body>
<legend style="margin-left:40%;"><font size="5" color="blue">奖励和著作</font></legend>
<table class="layui-table" id="table" lay-filter="test"></table>
<script src="/layui/layui.js"></script>

<script>
layui.use('table', function(){
  var table = layui.table;
  table.render({
    elem: '#table'
    ,url: 'award/Info' //数据接口
    ,page: true //开启分页
    ,cols: [[ //表头
              {field: 'type', title: '奖励类型', width:160}
              ,{field: 'name', title: '奖励名称', width:160,}
              ,{field: 'grade', title: '奖励等级', width:177}              
              ,{field: 'rank', title: '奖励名次', width: 177, sort: true}
              ,{field: 'time', title: '获奖日期', width: 177,}
    ]]
	,height: 260
  });  
});
</script>

<table class="layui-table" id="table1" lay-filter="test"></table>
<script>
layui.use('table', function(){
  var table = layui.table;
  table.render({
    elem: '#table1'
    ,url: 'fwork/Info' //数据接口
    ,page: true //开启分页
    ,cols: [[ //表头
              
              {field: 'bookName', title: '著作名称', width:160,}
              ,{field: 'grade', title: '级别', width:160} 
              ,{field: 'time', title: '出版日期', width: 177}
              ,{field: 'address', title: '出版社', width: 177}
              ,{field: 'bz', title: '备注', width: 177}
             
    ]]
	,height: 260
  });  
});
</script>


</body>
<script>


layui.use('form', function(){
  var form = layui.form;
  
  //监听提交
  form.on('submit(formDemo)', function(data){
	
   layer.msg("提交成功!");
    return true;
  });
  
});
layui.use('laydate', function(){
	  var laydate = layui.laydate;
	  
	  //执行一个laydate实例
	  laydate.render({
	    elem: '#time' //指定元素
	    ,type: 'year'
	  });
	});

	  
</script>
<script>
layui.use(['element', 'layer'], function(){
	  var element = layui.element;
	  var layer = layui.layer;
	 
	});

</script>
</head>


<iframe id="rfFrame" name="rfFrame" src="about:blank" style="display:none;"></iframe> 
<script>


layui.use('form', function(){
  var form = layui.form;
  
  //监听提交
  form.on('submit(formDemo)', function(data){
	
   layer.msg("提交成功!");
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