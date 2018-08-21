<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>培养方案管理</title>
 <link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">培养方案管理</font></legend>
</fieldset>


<div class="layui-btn-group demoTable">
  <button class="layui-btn" data-type="getCheckData">新增</button>

</div>
 <a id="xz" style="display:none;" href="">下载</a>
<table class="layui-table" lay-data="{ url:'outline/search', page:true, id:'idTest'}" lay-filter="demo">
  <thead>
    <tr>  
      <th lay-data="{field:'version', width:120,sort:true}">版本</th>
      <th lay-data="{fixed: 'right', align:'center', toolbar: '#barDemo'}"></th>
    </tr>
  </thead>
</table>
 
<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-xs" lay-event="down">下载</a>
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
       	  $.get("outline/del", { id: data.id,version:data.version } );
             obj.del();
             layer.close(index);
             layer.msg("删除成功!");
             table.reload('idTest', {
             	  url: 'outline/search'
             	  ,where: {} //设定异步数据接口的额外参数
             	 ,page: {
						 curr: 1 //重新从第 1 页开始
						}
             	});
         });
    } else if(obj.event=="down"){
    	var xz=document.getElementById("xz");
    	xz.href=data.filename;
    	xz.click();
    }
  });
  
  var $ = layui.$, active = {
    getCheckData: function(){ //获取选中数据
    	layer.open({
  		  type: 2, 
  		area: ['1000px', '450px'],
  		  content: 'outlineAdd',//这里content是一个普通的String
  		  cancel: function(index, layero){ 
  			 
  			  table.reload('idTest', {
  	        	  url: 'outline/search'
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