<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>新增会议</title>
  <link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>

</head>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font size="5" color="blue">新增会议</font></legend>
</fieldset>
<form class="layui-form" action="meeting/add" method="post">
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">年度</label>
      <div class="layui-input-inline">
        <input class="layui-input" id="date1" type="text" name="year" placeholder="yyyy">
      </div>
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">会议名称</label>
    <div class="layui-input-inline">
      <input type="text" name="meetingName" required lay-verify="required"  class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">继续教育项目编号</label>
    <div class="layui-input-inline">
      <input type="text" name="proNumber" required lay-verify="required"  class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">继教项目负责人</label>
    <div class="layui-input-inline">
      <input type="text" name="proleader" required lay-verify="required"  class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">学分类型</label>
    <div class="layui-input-inline">
      <input type="text" name="creditType" required lay-verify="required"  class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">学分/分</label>
    <div class="layui-input-inline">
      <input type="text" name="credit" required lay-verify="required"  class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">开始时间</label>
      <div class="layui-input-inline">
        <input name="startTime" class="layui-input" id="date2" type="text" placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
      </div>
      <div class="layui-form-mid">——</div>
      <label class="layui-form-label">结束时间</label>
      <div class="layui-input-inline">
        <input name="offTime" class="layui-input" id="date3" type="text" placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
      </div>
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">参会人数</label>
    <div class="layui-input-inline">
      <input type="text" name="partiNumber" required lay-verify="required"  class="layui-input">
    </div>
  </div>
  
   <div class="layui-form-item">
			<label class="layui-form-label">档案储存</label>
			<div class="layui-input-inline">
				<button type="button" class="layui-btn" id="test3">
					<i class="layui-icon"></i>上传文件
				</button>
			</div>
			<div class="layui-form-mid ">
				<font color="red" size="5">*</font>
			</div>
			<div class="layui-input-inline">
			<a  name="fileSave1"> </a>
				<input type="hidden"   name="fileSave" >
			</div>
		</div>
		
  
  <div class="layui-form-item">
    <label class="layui-form-label">存档人员</label>
    <div class="layui-input-inline">
      <input type="text" name="filePerson" required lay-verify="required"  class="layui-input">
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
	    elem: '#date1'
	    ,type:'year'
	  });
	  laydate.render({
		    elem: '#date2'
		  });
	  laydate.render({
		    elem: '#date3'
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
	  
	  //普通图片上传
	  var uploadInst = upload.render({
	    elem: '#test3'	   	   
	    ,url: 'meeting/upload/'
	    ,accept: 'file'
	    ,done: function(res){
	      //如果上传失败
	      if(res.code > 0){
	        return layer.msg('上传失败');
	      }
	      //上传成功  
	   
	     document.getElementsByName("fileSave")[0].value=res.data[0].src;
	     document.getElementsByName("fileSave1")[0].text=res.data[0].src;
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