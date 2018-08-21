<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>著作管理</title>
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
    ,url: 'fwork/InfoS' //controller
    ,cols: [[
      {field:'id', title: '工作ID', width:160, sort: true, fixed: true}
      ,{field:'bookName', title: '著作名称',  width:200, }
      ,{field:'grade', title: '级别',  width:180}
      ,{field:'time', title: '出版日期', width:200}
      ,{field:'address', title: '出版社',  width:200}
      ,{field:'bz', title: '备注', width:200}
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
    	  $.get("fwork/del", { id: data.gId } );
          obj.del();
          layer.close(index);
          layer.msg("删除成功!");
          table.reload('idTest', {
          	  url: 'fwork/InfoS'
          	  ,where: {} //设定异步数据接口的额外参数
          	});
      });
    } else if(layEvent === 'edit'){

			document.getElementsByName("id")[0].value=data.id;    	

        	document.getElementsByName("bookName")[0].value=data.bookName; 
        	document.getElementsByName("grade")[0].value=data.grade;
        	document.getElementsByName("time")[0].value=data.time;	
         	document.getElementsByName("address")[0].value=data.address; 
        	document.getElementsByName("bz")[0].value=data.bz;	
        	layer.open({
        		  type: 1, 
        		  area: '80%',
        		  content: $('#edit'),//这里content是一个普通的String
        		  cancel: function(index, layero){
      		    	layui.form.render('select');
        			  table.reload('idTest', {
        	        	  url: 'fwork/InfoS'
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
 		    	 url: 'fwork/searchName'
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
					  content: 'fworkAdd' //iframe的url
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

<form class="layui-form" action="fwork/update" method="post" style="display:none;" id="edit"  target="rfFrame">
<input type="hidden" name="id"/>
		<div class="layui-form-item">
			<label class="layui-form-label">著作名称</label>
			<div class="layui-input-inline">
				<input type="text" name="bookName" lay-verify="required"
					autocomplete="off" class="layui-input">
			</div>
			<div class="layui-form-mid ">
				<font color="red" size="5">*</font>
			</div>
		</div>

    <div class="layui-form-item">
    <label class="layui-form-label">级别</label>
    <div class="layui-input-block">
        <div class="layui-input-inline">
      <select name="grade" lay-verify="required">
        <option value="">请选择</option>
        <option value="主编">主编</option>
        <option value="副主编">副主编</option>
        <option value="编委">编委</option>
      </select>
    </div> 
            <div class="layui-form-mid layui-word-aux"><font color=red size="5">*</font></div>
	</div>	</div>
		<div class="layui-form-item">
			<label class="layui-form-label">出版日期</label>
			<div class="layui-input-inline">
				<input type="text" name="time" id="time" lay-verify="required"
					autocomplete="off" class="layui-input">
			</div>
			<div class="layui-form-mid ">
				<font color="red" size="5">*</font>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">出版社</label>
			<div class="layui-input-inline">
				<input type="text" name="address" lay-verify="required"
					autocomplete="off" class="layui-input">
			</div>
			<div class="layui-form-mid ">
				<font color="red" size="5">*</font>
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">备注</label>
			<div class="layui-input-inline">
				<input type="text" name="bz"
					autocomplete="off" class="layui-input">
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
  <legend style="margin-left:40%;"><font color="blue" size="5">著作管理</font></legend>
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