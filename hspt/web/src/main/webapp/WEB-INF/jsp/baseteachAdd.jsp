<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>新增基层巡讲</title>
  <link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>

</head>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font size="5" color="blue">新增基层巡讲</font></legend>
</fieldset>
<form class="layui-form" action="baseteach/add" method="post" >
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">年度</label>
      <div class="layui-input-inline">
        <input class="layui-input" id="date1" type="text" name="year" placeholder="yyyy">
      </div>
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">巡讲类型</label>
    <div class="layui-input-block"style="width:20%;">
      <select name="tourType" lay-verify="required">      
        <option value="继教项目">继教项目</option>
        <option value="集团医院">集团医院</option>
        <option value="公司合作">公司合作</option>
      </select>
    </div>   
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">地区</label>
    <div class="layui-input-inline">
      <input type="text" name="region" required lay-verify="required"  class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">时间</label>
      <div class="layui-input-inline">
        <input class="layui-input" id="date2" type="text" name="time" placeholder="yyyy-MM-dd">
      </div>
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">地点</label>
    <div class="layui-input-inline">
      <input type="text" name="place" required lay-verify="required"  class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">工作证号</label>
    <div class="layui-input-inline">
      <input type="text" name="id" required lay-verify="required"  class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">参会人数</label>
    <div class="layui-input-inline">
      <input type="text" name="partiNumber" required lay-verify="required"  class="layui-input">
    </div>
  </div>
  
  <div class="layui-form-item">
			<label class="layui-form-label">课件存档</label>
			<div class="layui-input-inline">
				<button type="button" class="layui-btn" id="test1">
					<i class="layui-icon"></i>上传文件
				</button>
			</div>
			<div class="layui-form-mid ">
				<font color="red" size="5">*</font>
			</div>
			
			<div class="layui-input-inline">
			<a name="courseSave1"> </a>
			<input type="hidden" name="courseSave">	
			</div>
		</div>
		<div class="layui-upload" >
		<label class="layui-form-label">照片存档</label>
		
  <button type="button" class="layui-btn" id="test3" >上传图片</button>
  <div class="layui-upload-list">
    <img class="layui-upload-img" id="demo1"style="width:5%;height:5%;margin-left:30%;margin-top:-10%;">
    <p id="demoText"></p>
  </div>
</div>  
	<!-- <div class="layui-form-item">
			<label class="layui-form-label">照片存档</label>
			<div class="layui-input-inline">
				<button type="button" class="layui-btn" id="test3">
					<i class="layui-icon"></i>上传图片
				</button>
			</div>
			<div class="layui-form-mid ">
				<font color="red" size="5">*</font>
			</div>
		</div> -->
		<input type="hidden" name="photoSave" id="save">		
  
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
	    elem: '#date1'
	    ,type:'year'
	  });
	  laydate.render({
		    elem: '#date2'
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

layui.use('upload', function(){
	  var $ = layui.jquery
	  ,upload = layui.upload;
	  var uploadInst = upload.render({
		    elem: '#test1'	   	   
		    ,url: 'baseteach/upload/'
		    ,accept: 'file'
		    ,done: function(res){
		      //如果上传失败
		      if(res.code > 0){
		        return layer.msg('上传失败');
		      }
		      //上传成功  
		   
		     document.getElementsByName("courseSave")[0].value=res.data[0].src;
		     document.getElementsByName("courseSave1")[0].text=res.data[0].src;

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
	 /*  var uploadInst = upload.render({
	    elem: '#test3'	   	   
	    ,url: 'baseteach/upload/'
	    ,accept: 'file'
	    ,done: function(res){
	      //如果上传失败
	      if(res.code > 0){
	        return layer.msg('上传失败');
	      }
	      //上传成功  
	   
	     document.getElementsByName("photoSave")[0].value=res.data[0].src;
	      
	    }
	    ,error: function(){
	      //演示失败状态，并实现重传
	      var demoText = $('#demoText');
	      demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-mini demo-reload">重试</a>');
	      demoText.find('.demo-reload').on('click', function(){
	        uploadInst.upload();
	      });
	    }
	  }); */
	  //普通图片上传
	  var uploadInst = upload.render({
	    elem: '#test3'	   	   
	    ,url: 'baseteach/upload/'
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
	    
	      document.getElementsByName("photoSave")[0].value=res.data[0].src;
	      
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
</html>