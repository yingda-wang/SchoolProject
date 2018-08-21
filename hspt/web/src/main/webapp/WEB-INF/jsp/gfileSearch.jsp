<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>手册管理</title>
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
		option.text=data[i].zname;
		
		gId.appendChild(option);
	}
    form.render('select');
});
  
  //监听提交
  form.on('submit(formDemo)', function(data){
    layer.msg('提交成功!');
    return true;
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
  <a class="layui-btn layui-btn-xs" lay-event="edit">查看详细编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
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
      {checkbox: true, fixed: true}
      ,{field:'id', title: '手册ID', width:120, sort: true}
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
  form.on('switch(qxDemo)', function(obj){         
	     $.get("gfile/updateQx", { id: this.value,qx: obj.elem.checked } );  
	  });
//监听工具条
  table.on('tool(gfile)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
	  var data = obj.data //获得当前行数据
    ,layEvent = obj.event; //获得 lay-event 对应的值
     if(layEvent === 'del'){
      layer.confirm('真的删除行么', function(index){
    	  $.get("gfile/del", { id: data.id } );
          obj.del();
          layer.close(index);
          layer.msg("删除成功!");
          table.reload('idTest', {
          	  url: 'gfile/Info'
          	  ,where: {} //设定异步数据接口的额外参数
          	});
      });
    } else if(layEvent === 'edit'){
    	
            document.getElementById("nn").value=data.id;
            
         	document.getElementsByName("operation")[0].value=data.operation; 
        	document.getElementsByName("oVersion")[0].value=data.oVersion;
        	document.getElementsByName("time")[0].value=data.time;	
        	document.getElementsByName("person")[0].value=data.person;	
        	document.getElementsByName("text")[0].value=data.text;	
        	$('#oName').val(data.oName);
        	layui.form.render('select'); 	
        	layer.open({
        		  type: 1, 
        		  area: '80%',
        		  content: $('#edit'),//这里content是一个普通的String
        		  cancel: function(index, layero){
      		    	layui.form.render('select');
      		 
        			  table.reload('idTest', {
        	        	  url: 'gfile/Info'
        	        	  ,where: {} 
        	        	});
        			}    		
        	});
        	//, { operation: data.operation 
    }else if(layEvent === 'down'){
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
			  ,newgfile: function(){
				  layer.open({
					  type: 2,
					  title: '新增手册页',
					  shadeClose: true,
					  shade: 0.9,
					  area: ['1300px', '90%'],
					  content: 'gfileADD' //iframe的url
					 , cancel: function(index, layero){
			      		    	layui.form.render('select');
			      		 
			        			  table.reload('idTest', {
			        	        	  url: 'gfile/Info'
			        	        	  ,where: {} 
			        			  ,page:{curr:1}
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
  
<body>
<iframe id="rfFrame" name="rfFrame"  style="display:none;"></iframe> 
<!-- 修改表单 -->

<form class="layui-form" action="gfile/update" method="post" style="display:none;" id="edit"  target="rfFrame">

<div class="layui-form-item">
			<label class="layui-form-label">手册名称</label>
			<div class="layui-input-inline" style="width: 15%;">
				<select name="oName" id="oName" lay-filter="nation"
					lay-verify="required" >
					<%-- <c:forEach items="${data[0]}" var="data[0]" varStatus="i">
           <option value="${data[0].name}">"${data[0].name}"</option>
          </c:forEach> --%>
				</select>
			</div>
		    <div class="layui-form-mid ">
				<font color="red" size="5">*</font>
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">手册</label>
			<div class="layui-input-inline">
				<button type="button" class="layui-btn" id="test3">
					<i class="layui-icon"></i>上传文件
				</button>
			</div>
			<div class="layui-form-mid ">
				<font color="red" size="5">*</font>
			</div>
			<div class="layui-input-inline">
				<input type="text"  size="40" name="operation" id="scdz" autocomplete="off"  readonly="readonly">
			</div>
		</div>
	

		<div class="layui-form-item">
			<label class="layui-form-label">手册版本号</label>
			<div class="layui-input-inline">
				<input type="text" name="oVersion" lay-verify="required"
					autocomplete="off" class="layui-input">
			</div>
			<div class="layui-form-mid ">
				<font color="red" size="5">*</font>
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">组</label>
			<div class="layui-input-inline" style="width: 15%;">
				<select name="gId" id="gId" lay-filter="nation"
					lay-verify="required" lay-search="">
					<%-- <c:forEach items="${data[0]}" var="data[0]" varStatus="i">
           <option value="${data[0].name}">"${data[0].name}"</option>
          </c:forEach> --%>
				</select>
			</div>
			<div class="layui-form-mid ">
				<font color="red" size="5">*</font>
			</div>
		</div>
		<input  type="hidden" name="id" id="nn">
		<div class="layui-form-item">
			<label class="layui-form-label">修改人</label>
			<div class="layui-input-inline">
				<input type="text" name="person" lay-verify="required"
					class="layui-input">
			</div>
			<div class="layui-form-mid ">
				<font color="red" size="5">*</font>
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">验证日期</label>
			<div class="layui-input-inline">
				<input type="text" name="time" id="date" lay-verify="date"
					autocomplete="off" class="layui-input">
			</div>
			<div class="layui-form-mid ">
				<font color="red" size="5">*</font>
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">更新描述</label>
			<div class="layui-input-inline">
				<input type="text" name="text" lay-verify="required"
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
   
  

  </form>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">手册管理</font></legend>
</fieldset>

<!-- 查询表单 -->
<div class="layui-btn-group demoTable" >
  <button class="layui-btn" data-type="newgfile">新增</button>
  <!-- <button class="layui-btn" data-type="getCheckData">获取选中行数据</button> -->
</div>
 
 
<table class="layui-hide" id="LAY_table_gfile" lay-filter="gfile"></table> </body>

</html>