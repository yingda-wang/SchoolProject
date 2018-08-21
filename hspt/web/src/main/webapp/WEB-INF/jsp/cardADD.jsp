<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>新增证书</title>
<link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>

<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font size="5" color="blue">新增证书</font></legend>
</fieldset>
	<form class="layui-form" action="card/add" method="post" target="ifr" style="margin-left:400px;">

		<div class="layui-form-item">
			<label class="layui-form-label">工作证号</label>
			<div class="layui-input-inline">
				<input type="text" name="id" lay-verify="required"
					autocomplete="off" class="layui-input">
			</div>
			<div class="layui-form-mid ">
				<font color="red" size="5">*</font>
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">证书名称</label>
			<div class="layui-input-inline" style="width: 15%;">
				<select name="cardName" lay-filter="nation" lay-verify="required"
					lay-search="">
				
				</select>
			</div>
			<div class="layui-form-mid ">
				<font color="red" size="5">*</font>
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">专业</label>
			<div class="layui-input-inline">
				<input type="text" name="major" lay-verify="required"
					autocomplete="off" class="layui-input">
			</div>
			<div class="layui-form-mid ">
				<font color="red" size="5">*</font>
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">证书编号</label>
			<div class="layui-input-inline">
				<input type="text" name="number" lay-verify="required|number"
					autocomplete="off" class="layui-input">
			</div>
			<div class="layui-form-mid ">
				<font color="red" size="5">*</font>
			</div>
		</div>

	
	<div class="layui-upload" >
		<label class="layui-form-label">扫描存档</label>
		
  <button type="button" class="layui-btn" id="test3" >上传图片</button>
  <div class="layui-upload-list">
    <img class="layui-upload-img" id="demo1"style="width:5%;height:5%;margin-left:40%;margin-top:-10%;">
    <p id="demoText"></p>
  </div>
</div>  
<input type="hidden" name="photo">


		<div class="layui-form-item">
			<label class="layui-form-label">获得日期</label>
			<div class="layui-input-inline">
				<input type="text" name="startTime" id="time" lay-verify="date"
					autocomplete="off" class="layui-input">
			</div>
			<div class="layui-form-mid ">
				<font color="red" size="5">*</font>
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">执业范围</label>
			<div class="layui-input-inline">
				<input type="text" name="ranges" lay-verify="required"
					autocomplete="off" class="layui-input">
			</div>
			<div class="layui-form-mid ">
				<font color="red" size="5">*</font>
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">有效截止日期</label>
			<div class="layui-input-inline">
				<input type="text" name="stopTime" id="stopTime" lay-verify="date"
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
  $.post("cardname/sel", function(data) {
	  var cid=document.getElementsByName("cardName")[0];
	for(var i=0;i<data.length;i++){	
		var option=document.createElement("option");
		option.value=data[i].id;
		option.text=data[i].name;	
		cid.appendChild(option);
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
	    elem: '#time'
	  });
	  laydate.render({
		elem: '#stopTime'
		  });

	  layui.use('upload', function(){
		  var $ = layui.jquery
		  ,upload = layui.upload;
		  
		  //普通图片上传
		  var uploadInst = upload.render({
		    elem: '#test3'	   	   
		    ,url: 'card/upload/'
		    ,accept: 'file'
		    	,before: function(obj){
		  	      //预读本地文件示例，不支持ie8
		  	      obj.preview(function(index, file, result){
		  	        $('#demo1').attr('src', result); //图片链接（base64）
		  	      	
		  	      });
		  	    }
		    ,done: function(res){
		      //如果上传失败
		      if(res.code > 0){
		        return layer.msg('上传失败');
		      }
		      //上传成功  
		   
		     document.getElementsByName("photo")[0].value=res.data[0].src;
		      
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