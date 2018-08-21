<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>举办会议</title>
<meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="layui/css/layui.css"  media="all">
   <script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<script src="layui/layui.js" charset="utf-8"></script>
<body>
<iframe id="rfFrame" name="rfFrame" src="about:blank" style="display:none;"></iframe> 
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">举办会议</font></legend>
</fieldset>

<!-- 查询表单 -->
<div class="layui-btn-group demoTable" >
  <button class="layui-btn" data-type="newUser">新增</button>
</div>
 <div class="demoTable" style="float:right;margin-right:5%;">
  搜索年度：
  <div class="layui-inline">
    <input class="layui-input" name="id" id="demoReload" autocomplete="off">
  </div>
  <button class="layui-btn" data-type="reload">搜索</button>
</div>
 
<table class="layui-hide" id="LAY_table_user" lay-filter="user"></table>
<script src="/layui/layui.js"></script>
<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="down" >下载手册</a>
</script>

<script>
layui.use(['element', 'layer'], function(){
	  var element = layui.element;
	  var layer = layui.layer;
	 
	});
layui.use('laydate', function(){
	  var laydate = layui.laydate;
	  laydate.render({
		    elem: '#test1'
		  });  
	    
});
layui.use('table', function(){
	var table = layui.table
	  ,form = layui.form;
	  table.render({
	    elem: '#LAY_table_user'
	    ,url: 'meeting/search' //数据接口
	    ,cols: [[ //表头
	  {field:'id', title: 'ID', width:200, sort: true, fixed: true} 
      ,{field: 'year', title: '年度', width:80, fixed: 'left'}
      ,{field: 'meetingName', title: '会议名称', width:80}
      ,{field: 'proNumber', title: '继续教育项目编号', width:120}
      ,{field: 'proleader', title: '继教项目负责人', width:120} 
      ,{field: 'creditType', title: '学分类型', width: 80}
      ,{field: 'credit', title: '学分/分', width:80}
      ,{field: 'startTime', title: '开始时间', width:100}
      ,{field: 'offTime', title: '结束时间', width:100}
      ,{field: 'partiNumber', title: '参会人数', width:100}
      ,{field: 'filePerson', title: '存档人员', width:120}
      ,{fixed: 'right', width: 300, align:'center', toolbar: '#barDemo'}
      ]]
  	  ,id: 'testReload'
  		    ,page: true
  		    ,height: 515
  	  });
  	  table.on('tool(user)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
  		  var data = obj.data //获得当前行数据
  	    ,layEvent = obj.event; //获得 lay-event 对应的值
  	     if(layEvent === 'del'){
  	      layer.confirm('真的删除行么', function(index){
  	    	  $.get("meeting/del", { id: data.id } );
  	          obj.del();
  	          layer.close(index);
  	          layer.msg("删除成功!");
  	          table.reload('testReload', {
  	          	  url: 'meeting/search'
  	          	  ,where: {} //设定异步数据接口的额外参数
  	          	  ,page:{
  	          		  curr:1
  	          	  }	
  	          });
  	      });
  	    }else if(layEvent === 'down'){
  	    	var operation=data.fileSave;
  	    	
  	    	operation = encodeURI(encodeURI(operation));   
  	    	window.open("gfile/down?operation="+operation);
  	    	
  	    	var $form = $('<form method="post"></form>');
  	        $form.attr('action', 'gfile/down?operation='+operation);
  	        $form.appendTo($('body'));
  	        $form.submit(); 
  	    	
  	    }
  	  });
  	  var $ = layui.$, active = {
  			  reload: function(){		    	
  	  		      var demoReload=document.getElementById("demoReload").value.trim();
  	  		      
  	  		      //执行重载
  	 		    table.reload('testReload', {
  	 		    	 url: 'meeting/searchName'
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
  						  title: '新增会议',
  						  shadeClose: true,
  						  shade: 0.8,
  						  area: ['800px', '90%'],
  						  content: 'meetingAdd' //iframe的url
  						  ,cancel: function(index, layero){ 
  							  table.reload('testReload', {
  					        	  url: 'meeting/search'
  					        	  ,where: {}
  							  	  ,page:{
  							  		  curr:1
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
  	  form.on('submit(formDemo)', function(data){
  		    layer.msg('提交成功!');
  		    return true;
  		  });
  	});
  	</script>
  	</body>
  	</html>