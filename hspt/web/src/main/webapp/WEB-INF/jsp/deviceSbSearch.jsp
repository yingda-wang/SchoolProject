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
  <legend style="margin-left:40%;"><font size="5" color="blue">设备申请查询</font></legend>
</fieldset>
<div class="layui-btn-group demoTable">
  <button class="layui-btn" data-type="getCheckData">获取选中行数据</button>
  <button class="layui-btn" data-type="getCheckLength">获取选中数目</button>
  <button class="layui-btn" data-type="isAll">验证是否全选</button>
</div>
 
<table class="layui-table" lay-data="{width: 100%, height:332, url:'device/sb/search', page:true, id:'idTest'}" lay-filter="demo">
  <thead>
    <tr>
      <th lay-data="{type:'checkbox', fixed: 'left'}"></th>
      <th lay-data="{field:'id', width:80, sort: true, fixed: true}">序号</th>
      <th lay-data="{field:'devicecoding', width:120}">编号</th>
      <th lay-data="{field:'devicename', width:80}">名称</th>
      <th lay-data="{field:'specification', width:80}">型号</th>
      <th lay-data="{field:'number', width:80}">数量</th>
      <th lay-data="{field:'applytime', width:120, sort: true}">申请时间</th>    
      <th lay-data="{field:'zname', width:80}">组别</th>
      <th lay-data="{field:'usedpostion', width:135,}">曾用位置</th>
      <th lay-data="{field:'scrapapplicants', width:80}">声请人</th>
      <th lay-data="{field:'manager', width:80}">经手人</th>
      <th lay-data="{fixed: 'right', width:178, align:'center', toolbar: '#barDemo'}"></th>
    </tr>
  </thead>
</table>
 
<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">确认报废</a>
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
    if(obj.event === 'detail'){
    	$.get("device/sb/qr", { bh: data.devicecoding } );
    	layer.msg("确认成功!");
    } else if(obj.event === 'del'){
      layer.confirm('真的删除行么', function(index){

      	$.get("device/sb/del", { id: data.id } );
          obj.del();
          layer.close(index);
          layer.msg("删除成功!");
          table.reload('idTest', {
          	  url: 'device/sb/search'
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