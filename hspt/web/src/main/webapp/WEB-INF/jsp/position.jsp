<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>岗位信息管理</title>
<meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="layui/css/layui.css"  media="all">
   <script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<script src="layui/layui.js" charset="utf-8"></script>
<!-- 修改表单 -->
<script>

layui.use(['element', 'layer'], function(){
  var element = layui.element;
  var layer = layui.layer;
 
});




layui.use('form', function(){
	  var form = layui.form;
	  form.render();
	  
	  form.on('submit(formDemo)', function(data){
		  layer.msg("提交成功!");
		    return true;
		  });
	
	}); 
	  document.forms[0].target="rfFrame";  
	 
	 


</script>
<!-- 查询表单  --> 

<script type="text/html" id="barDemo">
  
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>

<script>

layui.use('table', function(){
	
  var table = layui.table
  ,form = layui.form;
  //方法级渲染
  
  table.render({
    elem: '#LAY_table_user'
    	 ,url: 'ZPosition/getZPosition' //controller
    ,cols: [[
      
      {field: 'zId', title: '组id', width:250, sort: true, fixed: true}
      ,{field: 'zName', title: '组名',  width:250}
      ,{field: 'id', title: '岗位id',  width:250, }
      ,{field: 'position', title: '岗位',  width:270}
   
      ,{fixed: 'right', width: 270, align:'center', toolbar: '#barDemo'}
    ]]
    ,id:'testReload'
    ,page: true
    ,height: 515
  });
  
 
  
//监听工具条

  table.on('tool(ZPosition)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
	  
	  var data = obj.data //获得当前行数据
	  ,layEvent = obj.event; //获得 lay-event 对应的值
    
     if(layEvent === 'del'){
    	
      layer.confirm('真的删除行么', function(index){
    	  $.get("ZPosition/del", { id: data.id } );
          obj.del();
          layer.close(index);
          layer.msg("删除成功!");
          table.reload('testReload', {
          	  url: 'ZPosition/getZPosition'
          	  ,where: {} //设定异步数据接口的额外参数
          	  ,page:{
          		  curr:1
          	  }	
          });
      });
    }   

       
        	


    
  });
	  
  
  var $ = layui.$, active = {
		  reload: function(){		    	
  		      var demoReload=document.getElementById("demoReload").value.trim();
  		      //执行重载
 		    table.reload('testReload', {
 		    	 url: 'ZPosition/searchName'
 		    		,where: {
 			        	 searchName:demoReload 
 			        	
 			        }
 		    	 ,method :'post'
		        ,page: {
		          curr: 1 //重新从第 1 页开始
		        }
		        
		      });
		    } 

		     
    
			  ,newUser: function(){
				  layer.open({
					  type: 2,
					  title: '新增用户页页',
					  shadeClose: true,
					  shade: 0.9,
					  area: ['1300px', '90%'],
					  content: 'addPosition' //iframe的url
				      ,cancel: function(index, layero){
			    		    	layui.form.render('select');

			    			  table.reload('testReload', {
			    	        	  url: 'ZPosition/getZPosition'
			    	        	  ,where: {} //设定异步数据接口的额外参数
			    	        	  //,height: 300
			    	        	,page:{curr: 1 }
			    			  });
			    			}
					}); 
			  }
			 ,addZu:function(){
				 layer.open({
					  type: 2,
					  title: '新增小组页',
					  shadeClose: true,
					  shade: 0.9,
					  area: ['1300px', '90%'],
					  content: 'addZu' //iframe的url
					}); 
			 
			 
			 }
			 ,delzu:function(){
				 layer.open({
					  type: 2,
					  title: '删除小组页',
					  shadeClose: true,
					  shade: 0.9,
					  area: ['1300px', '90%'],
					  content: 'zu' //iframe的url
					}); 
			 
			 
			 }
			};
  
		  
		  $('.demoTable .layui-btn').on('click', function(){
		    var type = $(this).data('type');
		    active[type] ? active[type].call(this) : '';
		  });
				  
	  
		  
});

</script>  
  
<body>
<iframe id="rfFrame" name="rfFrame" src="about:blank" style="display:none;"></iframe> 
<!-- 修改表单 -->




<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">岗位信息管理</font></legend>
</fieldset>

<!-- 查询表单 -->
<div class="layui-btn-group demoTable" >
    <button class="layui-btn" data-type="newUser">新增岗位</button>
    <button class="layui-btn" data-type="addZu">新增小组</button>
    <button class="layui-btn" data-type="delzu">删除组</button>
</div>
 <div class="demoTable" style="float:right;margin-right:5%;">
  搜索岗位：
  <div class="layui-inline">
    <input class="layui-input" name="id" id="demoReload" autocomplete="off">
  </div>
  <button class="layui-btn" data-type="reload">搜索</button>
</div>
 
<table class="layui-hide" id="LAY_table_user" lay-filter="ZPosition"></table> </body>

</html>