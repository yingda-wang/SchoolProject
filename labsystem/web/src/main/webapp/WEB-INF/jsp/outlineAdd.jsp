<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加培养方案</title>
<link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">添加培养方案</font></legend>
</fieldset>


<form class="layui-form" action="outline/add" style="margin-top:5%;margin-left:5%;" method="post" target="ifr">

  <!-- <div class="layui-form-item">
    <label class="layui-form-label">版本</label>
    <div class="layui-input-inline">
      <input type="text" name="version" required  lay-verify="required|jy" placeholder="请输入年份" autocomplete="off" class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color="red">*(例:2013)</font></div>
  </div> -->
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">版本</label>
      <div class="layui-input-inline">
        <input class="layui-input" id="test2" placeholder="yyyy" type="text" name="version" lay-verify="required|jy">
      </div>
    </div>
    </div>
 
  <div class="layui-form-item">
			<label class="layui-form-label">培养方案</label>
			<div class="layui-input-inline">
				<button type="button" class="layui-btn" id="test3">
					<i class="layui-icon"></i>按模板上传
				</button>
			</div>
			<div class="layui-form-mid ">	
				<font color="red" size="5">*</font>
			</div>
			<div class="layui-input-inline">
			 <a  name="filename1"> </a> 
				 <input type="hidden"   name="filename" lay-verify="cy">
			</div>
			
		</div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo">提交</button>
      <button id="target" type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
</form>
<a href="moban/pyfa.xls" class="layui-btn layui-btn-sm layui-btn-danger" style="float:right;margin-right:49%;margin-top:-13%;">模板下载</a>

<script>
//Demo
layui.use('form', function(){
  var form = layui.form;
  
  //监听提交
  form.on('submit(formDemo)', function(data){
    layer.msg("提交成功!");  
    return true;
  });
  
  form.verify({
	  jy: function(data){
		var version=document.getElementsByName("version")[0].value.trim();
		var result=""
			  $.ajax({  
	              type : "get",  
	              url : "outline/jy",
	              data:"version="+version,
	              async : false,  
	              success :function(data){  
	                result=data; 
	              }  
	              });    
		    
	  	if(result=="1"){
	  		return '已有的培养方案!';
	  	}
	  },
	  cy:function(data){
		  if(data==""){
			  return "请上传培养方案!";
		  }
	  }
	  
	  
	});      
});
layui.use('upload', function(){
	  var $ = layui.jquery
	  ,upload = layui.upload;
	  
	  //普通图片上传
	  var uploadInst = upload.render({
	    elem: '#test3'	   	   
	    ,url: 'gfile/upload/'
	    ,accept: 'file'
	    ,exts:'xls'
	    ,done: function(res){
	      //如果上传失败
	      if(res.code > 0){
	        return layer.msg('上传失败');
	      }
	      //上传成功  
	   
	     document.getElementsByName("filename")[0].value=res.data[0].src;
	     document.getElementsByName("filename1")[0].text=res.data[0].src;
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
layui.use('laydate', function(){
	  var laydate = layui.laydate;
	  
	  
	  
	  //年选择器
	  laydate.render({
	    elem: '#test2'
	    ,type: 'year'
	    ,value: new Date()
	  });
	  
	 
	});
</script>
<iframe style="display:none;" name="ifr" id="ifr"></iframe>
</body>
</html>