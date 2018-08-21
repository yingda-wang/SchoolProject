<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>奖励管理</title>
<meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="layui/css/layui.css"  media="all">
   <script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<script src="layui/layui.js" charset="utf-8"></script>
<!-- 修改表单 -->
<script>
//Demo
layui.use('form', function(){
  var form = layui.form;

  //监听提交
  form.on('submit(formDemo)', function(data){
	  //layer.msg(JSON.stringify(data.field));
    layer.msg('提交成功!');
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
<!-- 查询表单  --> 
<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-xs" lay-event="edit">查看详细编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>

<script>
layui.use('table', function(){
  var table = layui.table
  ,form = layui.form;
  //方法级渲染
  table.render({
    elem: '#LAY_table_card'
    ,url: 'award/InfoS' //controller
    ,cols: [[
      
      {field:'id', title: '工作ID', width:160, sort: true, fixed: true}
      ,{field:'type', title: '奖励类型',  width:200}
      ,{field:'name', title: '奖励名称',  width:200, }
      ,{field:'grade', title: '奖励等级',  width:180}
      ,{field:'rank', title: '奖励名次', width:200}
      ,{field:'time', title: '获奖时间', width:200}
      ,{fixed: 'right', width: 200, align:'center', toolbar: '#barDemo'}
    ]]
    ,id: 'idTest'
    ,page: true
    ,height: 515
  });
 

//监听工具条
  table.on('tool(card)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
	  var data = obj.data //获得当前行数据
    ,layEvent = obj.event; //获得 lay-event 对应的值
     if(layEvent === 'del'){
      layer.confirm('真的删除行么', function(index){
    	  $.get("award/del", { id: data.gId } );
          obj.del();
          layer.close(index);
          layer.msg("删除成功!");
          table.reload('idTest', {
          	  url: 'award/InfoS'
          	  ,where: {} //设定异步数据接口的额外参数
          	});
      });
    } else if(layEvent === 'edit'){

			document.getElementsByName("id")[0].value=data.id;    	
         	document.getElementsByName("type")[0].value=data.type; 
        	document.getElementsByName("name")[0].value=data.name; 
        	document.getElementsByName("grade")[0].value=data.grade;
        	document.getElementsByName("rank")[0].value=data.rank;	
        	document.getElementsByName("time")[0].value=data.time;	

        	
        	layer.open({
        		  type: 1, 
        		  area: '80%',
        		  content: $('#edit'),//这里content是一个普通的String
        		  cancel: function(index, layero){
      		    	layui.form.render('select');
        			  table.reload('idTest', {
        	        	  url: 'award/InfoS'
        	        	  ,where: {} 
        	        	});
        			}    		
        	});
        	
    }
    
  });
	  
  
  var $ = layui.$, active = {
		    reload: function(){	
  		      var demoReload=document.getElementById("demoReload").value.trim();  		   
 		    table.reload('idTest', {
 		    	 url: 'award/searchName'
 		    		,where: {
 			        	id:demoReload
 			        }
 		    	 ,method :'post'
		        ,page: {
		          curr: 1 //重新从第 1 页开始
		        }
		        
		      });
		    } 
			  ,newcard: function(){
				  layer.open({
					  type: 2,
					  title: '新增页',
					  shadeClose: true,
					  shade: 0.9,
					  area: ['1300px', '90%'],
					  content: 'awardAdd' //iframe的url
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
<iframe id="rfFrame" name="rfFrame"  style="display:none;"></iframe> 
<!-- 修改表单 -->

<form class="layui-form" action="award/update" method="post" style="display:none;" id="edit"  target="rfFrame">
<input type="hidden" name="id"/>
		<div class="layui-form-item">
			<label class="layui-form-label">奖励类型</label>
			<div class="layui-input-inline">
				<input type="text" name="type" lay-verify="required"
					autocomplete="off" class="layui-input">
			</div>
			<div class="layui-form-mid ">
				<font color="red" size="5">*</font>
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">奖励名称</label>
			<div class="layui-input-inline">
				<input type="text" name="name" lay-verify="year"
					autocomplete="off" class="layui-input">
			</div>
			<div class="layui-form-mid ">
				<font color="red" size="5">*</font>
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">奖励等级</label>
			<div class="layui-input-inline">
				<input type="text" name="grade" lay-verify="required"
					autocomplete="off" class="layui-input">
			</div>
			<div class="layui-form-mid ">
				<font color="red" size="5">*</font>
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">奖励名次</label>
			<div class="layui-input-inline">
				<input type="text" name="rank" lay-verify="required"
					autocomplete="off" class="layui-input">
			</div>
			<div class="layui-form-mid ">
				<font color="red" size="5">*</font>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">获奖时间</label>
			<div class="layui-input-inline">
				<input type="text" name="time" id="time" lay-verify="required"
					autocomplete="off" class="layui-input">
			</div>
			<div class="layui-form-mid ">
				<font color="red" size="5">*</font>
			</div>
		</div>
		 <div class="layui-form-item" style="margin-left: 35%">
		    <div class="layui-input-block">
		       <button  class="layui-btn" lay-submit lay-filter="formDemo" id = "tj">立即提交</button>
		      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
		    </div>
		  </div>
   
  </div>

  </form>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">奖励管理</font></legend>
</fieldset>

<!-- 查询表单 -->
<div class="layui-btn-group demoTable" >
  <button class="layui-btn" data-type="newcard">新增</button>
</div>
 <div class="demoTable" style="float:right;margin-right:5%;">
  搜索ID：
  <div class="layui-inline">
    <input class="layui-input" name="id" id="demoReload" autocomplete="off">
  </div>
  <button class="layui-btn" data-type="reload">搜索</button>
</div>
 
<table class="layui-hide" id="LAY_table_card" lay-filter="card"></table> </body>

</html>