<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>新增参会记录</title>
  <link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>

</head>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font size="5" color="blue">新增参会记录</font></legend>
</fieldset>
<form class="layui-form" action="attendancerecords/add" method="post">

  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">时间</label>
      <div class="layui-input-inline">
        <input class="layui-input" id="date" type="text" name="time" placeholder="yyyy-MM-dd">
      </div>
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">工作证号</label>
    <div class="layui-input-inline">
      <input type="text" name="id" required lay-verify="required"  class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">会议名称</label>
    <div class="layui-input-inline">
      <input type="text" name="meetingName" required lay-verify="required"  class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">地点</label>
    <div class="layui-input-inline">
      <input type="text" name="place" required lay-verify="required"  class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">日程</label>
    <div class="layui-input-inline">
      <input type="text" name="schedule" required lay-verify="required"  class="layui-input">
    </div>
  </div>
        <div class="layui-form-item">
			<label class="layui-form-label">纸质版资料</label>
			<div class="layui-input-inline">
				<button type="button" class="layui-btn" id="test1">
					<i class="layui-icon"></i>上传文件
				</button>
			</div>
			<div class="layui-form-mid ">
				<font color="red" size="5">*</font>
			</div>
			<div class="layui-input-inline">
				<a name="data1"></a>
				 <input type="hidden"  name="data" > 
			</div>
		</div>
		
  
  <div class="layui-form-item">
			<label class="layui-form-label">PPT</label>
			<div class="layui-input-inline">
				<button type="button" class="layui-btn" id="test2">
					<i class="layui-icon"></i>上传文件
				</button>
			</div>
			<div class="layui-form-mid ">
				<font color="red" size="5">*</font>
			</div>
			<div class="layui-input-inline">
			<a name="ppt1" > </a>
				 <input type="hidden"   name="ppt" > 
			</div>
		</div>
	
		
	
	
		
  
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button  class="layui-btn" lay-submit lay-filter="formDemo" id="tj">立即提交</button>
    </div>
  </div>
</form>
</body>
<iframe id="rfFrame" name="rfFrame" src="about:blank" style="display:none;"></iframe> 
<script>
layui.use('laydate', function(){
	  var laydate = layui.laydate;
	  
	  //常规用法
	  laydate.render({
	    elem: '#date'
	  });
	  
	  layui.use('upload', function(){
		  var $ = layui.jquery
		  ,upload = layui.upload;
		  
		  //普通图片上传
		  var uploadInst = upload.render({
		    elem: '#test1'	   	   
		    ,url: 'attendancerecords/upload/'
		    ,accept: 'file'
		    ,done: function(res){
		      //如果上传失败
		      if(res.code > 0){
		        return layer.msg('上传失败');
		      }
		      //上传成功  
		   
		     document.getElementsByName("data")[0].value=res.data[0].src;
		     document.getElementsByName("data1")[0].text=res.data[0].src;

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
		  //普通图片上传
		  var uploadInst = upload.render({
		    elem: '#test2'	   	   
		    ,url: 'attendancerecords/upload/'
		    ,accept: 'file'
		    ,done: function(res){
		      //如果上传失败
		      if(res.code > 0){
		        return layer.msg('上传失败');
		      }
		      //上传成功  
		   
		     document.getElementsByName("ppt")[0].value=res.data[0].src;
		     document.getElementsByName("ppt1")[0].text=res.data[0].src;
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
		  //普通图片上传
		  var uploadInst = upload.render({
		    elem: '#test3'	   	   
		    ,url: 'attendancerecords/upload/'
		    ,accept: 'file'
		    ,done: function(res){
		      //如果上传失败
		      if(res.code > 0){
		        return layer.msg('上传失败');
		      }
		      //上传成功  
		   
		     document.getElementsByName("vedio")[0].value=res.data[0].src;
		      
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
		  //普通图片上传
		  var uploadInst = upload.render({
		    elem: '#test4'	   	   
		    ,url: 'attendancerecords/upload/'
		    ,accept: 'file'
		    ,done: function(res){
		      //如果上传失败
		      if(res.code > 0){
		        return layer.msg('上传失败');
		      }
		      //上传成功  
		   
		     document.getElementsByName("recording")[0].value=res.data[0].src;
		      
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
layui.use('form',function(){
	  var form = layui.form;
	  form.render();
	  //监听提交
	  document.forms[0].target="rfFrame";  
	  form.on('submit(formDemo)', function(data){
		  layer.msg("提交成功!");
		    return true;
		  });

});
</script>
</html>