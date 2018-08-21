<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>设备申请管理</title>
<link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>  
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font size="5" color="blue">设备申请查询</font></legend>
</fieldset>
 
<div class="layui-btn-group demoTable">
  
</div>
 
<table class="layui-table" lay-data="{ height:332, url:'device/apply/search', page:true, id:'idTest'}" lay-filter="demo">
  <thead>
    <tr>
    
      <th lay-data="{field:'id', width:80, sort: true, fixed: true}">序号</th>
      <th lay-data="{field:'name', width:100}">名称</th>
      <th lay-data="{field:'type', width:80}">类别</th>
      <th lay-data="{field:'arrivetime', width:120, sort: true}">申请日期</th>
      <th lay-data="{field:'applicant', width:100}">申请人</th>
      <th lay-data="{field:'number', width:80, sort: true}">数量</th>   
      <th lay-data="{field:'ifyes', width:120, sort: true}">是否审批</th>
      <th lay-data="{fixed: 'right', width:300, align:'center', toolbar: '#barDemo'}"></th>
    </tr>
  </thead>
</table>
 
<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">审批成功</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="edit">修改数量</a>
<a class="layui-btn layui-btn-xs layui-btn-xs" lay-event="update">申请新设备</a>
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
    	$.get("device/apply/sp", { id: data.id } );
    	layer.msg("审批成功!");
    	table.reload('idTest', {
      	  url: 'device/apply/search'
      	  ,where: {} //设定异步数据接口的额外参数
      	  //,height: 300
      	  ,page: {
  curr: 1 //重新从第 1 页开始
}
      	});
    } else if(obj.event === 'del'){
    	layer.confirm('真的删除行么', function(index){
        	$.get("device/apply/del", { id: data.id } );
            obj.del();
            layer.close(index);
            layer.msg("删除成功!");
            table.reload('idTest', {
            	  url: 'device/apply/search'
            	  ,where: {} //设定异步数据接口的额外参数
            	  //,height: 300
            	  ,page: {
        curr: 1 //重新从第 1 页开始
      }
            	});
          
          });
    }else if(obj.event === 'update'){
    	layer.open({
  		  type: 2,
  		  title: '新增设备页',
  		  shadeClose: true,
  		  shade: 0.9,
  		  area: ['1300px', '90%'],
  		  content: 'deviceAdd1?name='+data.name+'&type='+data.type+'&number='+data.number //iframe的url
  		 , cancel: function(index, layero){
        		    	
        		 
          			  table.reload('idTest', {
          	        	  url: 'device/apply/search'
          	        	  ,where: {} 
          			  ,page:{curr:1}
          	        	});
          			}
  	  }); 
    	
    }
    else if(obj.event === 'edit'){
    	
    	layer.open({
    		  type: 2,
    		  title: '编辑申请页',
    		  shadeClose: true,
    		  shade: 0.9,
    		  area: ['500px', '30%'],
    		  content: 'deviceApplyEdit?id='+data.id+'&number='+data.number //iframe的url
    		 , cancel: function(index, layero){
          		    	
          		 
            			  table.reload('idTest', {
            	        	  url: 'device/apply/search'
            	        	  ,where: {} 
            			  ,page:{curr:1}
            	        	});
            			}
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