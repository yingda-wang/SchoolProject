<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>新增手册</title>
<link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>

<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font size="5" color="blue">新增手册</font></legend>
</fieldset>
	<form class="layui-form" action="gfile/add" method="post" target="ifr" style="margin-left:400px;">

		<div class="layui-form-item">
			<label class="layui-form-label">手册名称</label>
			<div class="layui-input-inline" style="width: 15%;">
				<select name="oName" id="oName" lay-filter="nation"
					lay-verify="required" lay-search="">
					
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
			 <a  name="operation1"> </a> 
				 <input type="hidden"   name="operation" >
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


		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
			</div>
		</div>
	</form>
	<iframe name="ifr" style="display: none;"></iframe>

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
	     document.getElementsByName("operation1")[0].text=res.data[0].src;
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
</body>
</html>