<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font size="5" color="blue">设备维保查询</font></legend>
</fieldset>
<div class="layui-btn-group demoTable">
  

</div>
  <img alt="" src="" id="showpng" style="display:none;">
 <div class="demoTable" style="float:right;margin-right:5%;margin-top:5px;">
  搜索编号：
  <div class="layui-inline">
    <input  class="layui-input" name="id1"  id="demoReload1" autocomplete="off">
  </div>
  <button class="layui-btn" data-type="reload1">搜索</button>
</div>
<table class="layui-table" lay-data="{height:475, url:'device/Wb/search', page:true, id:'idTest'}" lay-filter="demo">
  <thead>
    <tr>
     
      <th lay-data="{field:'id', width:80, sort: true, fixed: true}">序号</th>
      <th lay-data="{field:'mid', width:80}">编号</th>
      <th lay-data="{field:'model', width:80}">型号</th>
      <th lay-data="{field:'time1', width:120,sort: true}">入保时间</th>
      <th lay-data="{field:'time2', width:120,sort: true}">到期时间</th>
      <th lay-data="{field:'time3', width:120,sort: true}">入保年长</th>
      <th lay-data="{fixed: 'right', width:178, align:'center', toolbar: '#barDemo'}"></th>
    </tr>
  </thead>
</table>
 
<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
               
          
<script>
layui.use('table', function(){
  var table = layui.table;
  //监听表格复选框选择
  table.on('checkbox(demo)', function(obj){
    console.log(obj)
  });
  //监听工具条
  table.on('tool(demo)', function(obj){
    var data = obj.data;
     if(obj.event === 'del'){
      layer.confirm('真的删除行么', function(index){
    	  $.get("device/Wb/del", { id: data.id } );
          obj.del();
          layer.close(index);
          layer.msg("删除成功!");
          table.reload('idTest', {
          	  url: 'device/Wb/search'
          	  ,where: {} //设定异步数据接口的额外参数
          	  //,height: 300
          	  ,page: {
      curr: 1 //重新从第 1 页开始
    }
          	});
      });
    } 
  });
  
  var $ = layui.$, active = {
		  reload1: function(){
		    	
		       var bh=document.getElementById("demoReload1").value.trim();
		     
		     table.reload('idTest', {
	        	  url: 'device/Wb/search/js1'
	        	  ,where: {bh:bh} //设定异步数据接口的额外参数
	        	  //,height: 300
	        	  ,method:'post'  
	        	  ,page: {
   curr: 1 //重新从第 1 页开始
 }
	        	});
		    },
    getCheckData: function(){ //获取选中数据
      var checkStatus = table.checkStatus('idTest')
      ,data = checkStatus.data;
      layer.alert(JSON.stringify(data));
    }
    ,getCheckLength: function(){ //获取选中数目
      var checkStatus = table.checkStatus('idTest')
      ,data = checkStatus.data;
      layer.msg('选中了：'+ data.length + ' 个');
    }
    ,isAll: function(){ //验证是否全选
      var checkStatus = table.checkStatus('idTest');
      layer.msg(checkStatus.isAll ? '全选': '未全选')
    }
  };
  
  $('.demoTable .layui-btn').on('click', function(){
    var type = $(this).data('type');
    active[type] ? active[type].call(this) : '';
  });
});
</script>
</body>
</html>