<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>组手册</title>
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
  $.post("oname/sel", function(data) {
	  var cid=document.getElementsByName("oName")[0];
	for(var i=0;i<data.length;i++){	
		var option=document.createElement("option");
		option.value=data[i].name;
		option.text=data[i].name;	
		cid.appendChild(option);
	}
    form.render('select');
});
  
  
  $.post("gId/sel", function(data) {
	  var gId=document.getElementsByName("gId")[0];
	for(var i=0;i<data.length;i++){	
		var option=document.createElement("option");
		option.value=data[i].id;
		option.text=data[i].name;	
		gId.appendChild(option);
	}
    form.render('select');
});
  

});

layui.use(['form', 'layedit', 'laydate'], function(){
	  var form = layui.form
	  ,layer = layui.layer
	  ,layedit = layui.layedit
	  ,laydate = layui.laydate;
	  
	  //日期
	  laydate.render({
	    elem: '#date'
	  });

layui.use('upload', function(){
	  var $ = layui.jquery
	  ,upload = layui.upload;
	  
	  //普通图片上传
	  var uploadInst = upload.render({
	    elem: '#test3'	   	   
	    ,url: 'gfile/upload/'
	    ,accept: 'file'
	    ,done: function(res){
	      //如果上传失败
	      if(res.code > 0){
	        return layer.msg('上传失败');
	      }
	      //上传成功  
	   
	     document.getElementsByName("operation")[0].value=res.data[0].src;
	      
	    }
	    ,error: function(){
	      //演示失败状态，并实现重传
	      var demoText = $('#demoText');
	      demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-mini demo-reload">重试</a>');
	      demoText.find('.demo-reload').on('click', function(){
	        uploadInst.upload();
	      });
	    }
	  });
	  
	});
});
	  

	  
</script>
<!-- 查询表单  --> 
<script type="text/html" id="switchTpl">
  <input type="checkbox" name="qx" value="{{d.id}}" lay-skin="switch" lay-text="关闭|开启" lay-filter="qxDemo" {{ d.qx == '开启' ? 'checked' : '关闭' }}>
</script>
<script type="text/html" id="barDemo">
<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="down" >下载手册</a>
</script>

<script>
layui.use('table', function(){
  var table = layui.table
  ,form = layui.form;
  //方法级渲染
  table.render({
    elem: '#LAY_table_gfile'
    ,url: 'gfile/Info' //controller
    ,cols: [[
      {field:'id', title: '手册ID', width:120, sort: true}
      ,{field:'oName', title: '手册名称',  width:100}
      ,{field:'oVersion', title: '手册版本号',  width:120 ,sort: true}
      ,{field:'zName', title: '组', width:140 }
     ,{field:'person', title: '修改人', width:80}
      ,{field:'time', title: '修改时间',  width:150 ,sort: true}
      ,{field:'text', title: '更新描述',  width:150}
      ,{fixed: 'right', width: 300, align:'center', toolbar: '#barDemo'}
    ]]
    ,id: 'idTest'
    ,page: true
    ,height: 515
  });
 
 
  table.on('checkbox(gfile)', function(obj){
	    console.log(obj)
	  });
  
//监听工具条
  table.on('tool(gfile)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
	  var data = obj.data //获得当前行数据
    ,layEvent = obj.event; //获得 lay-event 对应的值
      if(layEvent === 'down'){
    	//layer.msg(data.operation);
    	var operation=data.operation;
    	
    	operation = encodeURI(encodeURI(operation));   
    	//window.open("gfile/down?operation="+operation);
    	
    	var $form = $('<form method="post"></form>');
        $form.attr('action', 'gfile/down?operation='+operation);
        $form.appendTo($('body'));
        $form.submit();
    	
    }
    
  });
	  
  
  var $ = layui.$, active = {
		    reload: function(){		    	
  		      var demoReload=document.getElementById("demoReload").value.trim();  		   
 		    table.reload('testReload', {
 		    	 url: 'gfile/searchName'
 		    		,where: {
 			        	searchName:demoReload
 			        }
 		    	 ,method :'post'
		        ,page: {
		          curr: 1 //重新从第 1 页开始
		        }
		        
		      });
		    } 				  		  						
			  }

		  
		  $('.demoTable .layui-btn').on('click', function(){
		    var type = $(this).data('type');
		    active[type] ? active[type].call(this) : '';
		  });	  
		  
});
</script>  
  
<body>
<iframe id="rfFrame" name="rfFrame"  style="display:none;"></iframe> 

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">组手册</font></legend>
</fieldset>

<!-- 查询表单 -->

 
<table class="layui-hide" id="LAY_table_gfile" lay-filter="gfile"></table> </body>

</html>