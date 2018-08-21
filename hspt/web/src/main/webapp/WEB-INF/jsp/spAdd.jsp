<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
<form class="layui-form" action="sp/add" target="rfc" method="post">
  
  <div class="layui-form-item">
    <label class="layui-form-label">名称</label>
    <div class="layui-input-inline">
      <input type="text" name="name" required lay-verify="required"  autocomplete="off" class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color="red">*</font></div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">价格</label>
    <div class="layui-input-inline">
      <input type="text" name="price" required lay-verify="required|number"  autocomplete="off" class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color="red">*</font></div>
  </div>
  <div class="layui-upload" style="margin-left:10%;">
  <button type="button" class="layui-btn" id="test1" >上传图片</button>
  <div class="layui-upload-list">
    <img class="layui-upload-img" id="demo1"style="width:5%;height:5%;">
    <p id="demoText"></p>
  </div>
</div>  
  
  <input type="hidden" value="" name="picname">
  <div class="layui-form-item layui-form-text" style="width:40%;">
    <label class="layui-form-label">备注</label>
    <div class="layui-input-block">
      <textarea name="text"  class="layui-textarea"></textarea>
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
    </div>
  </div>
</form>
 <iframe style="display:none;" name="rfc"></iframe>
<script>
//Demo
layui.use('form', function(){
  var form = layui.form;
  
  //监听提交
  form.on('submit(formDemo)', function(data){
    layer.msg("上传成功!");
    return true;
  });
});

layui.use('upload', function(){
	  var $ = layui.jquery
	  ,upload = layui.upload;
	  
	  //普通图片上传
	  var uploadInst = upload.render({
	    elem: '#test1'	   	   
	    ,url: 'sp/upload'
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
	   layer.msg(res.data[0].src);
	      document.getElementsByName("picname")[0].value=res.data[0].src;
	      
	    }
	    ,error: function(){
	      //演示失败状态，并实现重传
	      var demoText = $('#demoText');
	      demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-mini demo-reload">重试</a>');
	      demoText.find('.demo-reload').on('click', function(){
	        uploadInst.upload();
	      });
	    }
	  });});
</script>
</body>
</html>