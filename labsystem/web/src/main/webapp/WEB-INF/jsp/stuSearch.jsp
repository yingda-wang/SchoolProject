<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>学生管理</title>
<link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">学生管理</font></legend>
</fieldset>

	<div class="layui-btn-group demoTable">
  <button class="layui-btn" data-type="getCheckData">新增</button>

</div>
<div class="demoTable" style="float:right;margin-right:5%;margin-top:5px;">
  课程编号：
  <div class="layui-inline">
    <input  class="layui-input" name="js"  id="demoReload" autocomplete="off">
  </div>
  <button class="layui-btn" data-type="reload">搜索</button>
</div>

<table class="layui-table" lay-data="{ url:'stu/search', page:true, id:'idTest'}" lay-filter="demo">
  <thead>
    <tr>  
      <th lay-data="{field:'kcbh', width:200,sort:true}">课程编号</th>
      <th lay-data="{field:'kcm', width:200}">课程名</th>
      <th lay-data="{field:'xuehao', width:200}">学号</th>
      <th lay-data="{field:'student',edit:'text', width:200}">姓名</th>
      <th lay-data="{fixed: 'right', align:'center', toolbar: '#barDemo'}"></th>
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
  table.on('edit(demo)', function(obj){
	    var value = obj.value //得到修改后的值
	    ,data = obj.data //得到所在行所有键值
	    ,field = obj.field; //得到字段
	    $.post("stu/edit/name", { id: data.id,name: value } );
	    layer.msg("修改成功!");
	    table.reload('idTest', {
       	  url: 'stu/search'
       	  ,where: {} //设定异步数据接口的额外参数
       	 ,page: {
					 curr: 1 //重新从第 1 页开始
					}
       	});
	  });

  //监听工具条
  table.on('tool(demo)', function(obj){
    var data = obj.data;
     if(obj.event === 'del'){
         layer.confirm('真的删除么', function(index){
       	  $.get("stu/del", { id: data.id } );
             obj.del();
             layer.close(index);
             layer.msg("删除成功!");
             table.reload('idTest', {
             	  url: 'stu/search'
             	  ,where: {} //设定异步数据接口的额外参数
             	 ,page: {
						 curr: 1 //重新从第 1 页开始
						}
             	});
         });
    } 
  });
  
  var $ = layui.$, active = {
		  reload: function(){
		      var bh=document.getElementById("demoReload").value.trim();
		     
		     table.reload('idTest', {
	        	  url: 'stu/search/js'
	        	  ,where: {bh:bh} //设定异步数据接口的额外参数
	        	  //,height: 300
	        	  ,method:'post'  
	        	  ,page: {
    curr: 1 //重新从第 1 页开始
  }
	        	});
		    },
    getCheckData: function(){ //获取选中数据
    	layer.open({
  		  type: 2, 
  		area: ['1000px', '450px'],
  		  content: 'stuAdd',//这里content是一个普通的String
  		  cancel: function(index, layero){ 
  			 
  			  table.reload('idTest', {
  	        	  url: 'stu/search'
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