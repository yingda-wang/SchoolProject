<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>实验室课程分配管理</title>

<link rel="stylesheet" href="layui/css/layui.css"  media="all">
<script src="layui/layui.js" charset="utf-8"></script>
</head>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">实验室课程分配管理</font></legend>
</fieldset>

<div class="layui-btn-group demoTable">
  <button class="layui-btn" data-type="newLab">新增</button>
</div>
<div class="demoTable" style="float:right;margin-right:5%;">
  搜索课程名：
  <div class="layui-inline">
    <input class="layui-input" name="roomcode" id="demoReload" autocomplete="off">
  </div>
 <button class="layui-btn" data-type="reload">搜索</button>
</div>

<table  class="layui-table" lay-data="{url:'lab/selectLabCourse', height:500, page:true, id:'test3'}" lay-filter="test3">
  <thead>
    <tr>
      <th lay-data="{field:'coursename', width:240, }">课程名</th>
      <th lay-data="{field:'roomcode', width:240, }">实验室号</th>      
      <th lay-data="{fixed: 'right', align:'center', toolbar: '#barDemo'}">操作</th>
    </tr>
  </thead>
</table>
<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>

<script>
layui.use('table', function(){
  var table = layui.table;
  
  //监听工具条
  table.on('tool(test3)', function(obj){
    var data = obj.data;
    if(obj.event === 'del'){
      layer.confirm('真的删除行么', function(index){
    	  $.get("lab/delLabCourse", { id: data.id } );
        obj.del();
        layer.close(index);
        table.reload('test3', {
        	  url: 'lab/selectLabCourse'
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
	    reload: function(){
	    	  var demoReload=document.getElementById("demoReload").value.trim();  		   
	 		    table.reload('test3', {
	 		    	 url: 'lab/searchLabCourse'
	 		    		,where: {
	 			        	searchName:demoReload
	 			        }
	 		    	 ,method :'post'
			        ,page: {
			          curr: 1 //重新从第 1 页开始
			        }
			        
			      }); 
			    } 			    
	
	    ,newLab: function(){
	     layer.open({
		  type: 2,
		  title: '课程分配',
		  shadeClose: true,
		  shade: 0.9,
		  area: ['800px', '80%'],
		  content: 'addLabCourse' //iframe的url
		  ,cancel: function(index, layero){ 
  			 
			  table.reload('test3', {
	        	  url: 'lab/selectLabCourse'
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