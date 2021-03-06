<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户管理</title>
<link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
 <fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">用户管理</font></legend>
</fieldset>
 
<div class="layui-btn-group demoTable">
  <button class="layui-btn" data-type="getCheckData">注册</button>

</div>
 
<table class="layui-table" lay-data="{ url:'authority/search', page:true, id:'idTest'}" lay-filter="demo">
  <thead>
    <tr>  
      <th lay-data="{field:'jobnumber', width:80}">教工号</th>
      <th lay-data="{field:'name', width:80}">姓名</th>
      <th lay-data="{field:'authority', width:80}">权限</th>
      <th lay-data="{field:'sex', width:80}">性别</th>
      <th lay-data="{field:'phone', width:200}">电话</th>    
      <th lay-data="{field:'email', width:200}">邮箱</th>
      <th lay-data="{fixed: 'right', align:'center', toolbar: '#barDemo'}"></th>
    </tr>
  </thead>
</table>
 
<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-xs" lay-event="edit">修改权限</a>
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
         layer.confirm('真的删除么', function(index){
       	  $.get("authority/del", { id: data.id } );
             obj.del();
             layer.close(index);
             layer.msg("删除成功!");
             table.reload('idTest', {
             	  url: 'authority/search'
             	  ,where: {} //设定异步数据接口的额外参数
             	 ,page: {
						 curr: 1 //重新从第 1 页开始
						}
             	});
         });
    } else if(obj.event === 'edit'){
    	layer.open({
    		  type: 2, 
    		area: ['600px', '300px'],
    		  content: 'tregisterEdit?id='+data.id,//这里content是一个普通的String
    		  cancel: function(index, layero){ 
    			 
    			  table.reload('idTest', {
    	        	  url: 'authority/search'
    	        	  ,where: {} //设定异步数据接口的额外参数
    	        	  //,height: 300
    	        	    
    	        	});
    			  
    			}    		
    	});
    }
  });
  
  var $ = layui.$, active = {
    getCheckData: function(){ //获取选中数据
    	layer.open({
  		  type: 2, 
  		area: ['600px', '300px'],
  		  content: 'tregisterAdd',//这里content是一个普通的String
  		  cancel: function(index, layero){ 
  			 
  			  table.reload('idTest', {
  	        	  url: 'authority/search'
  	        	  ,where: {} //设定异步数据接口的额外参数
  	        	  //,height: 300
  	        	    ,page: {
   						 curr: 1 //重新从第 1 页开始
  						}
  	        	});
  			  
  			}    		
  	});
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