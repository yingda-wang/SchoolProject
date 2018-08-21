<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>进修经历</title>
  <link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<%-- <script type="text/javascript">
<% 
String id = request.getParameter("id")+"";
%>
document.getElementsByName("id")[0].value = <%=id%>+"";
</script> --%>
</head>
<body>
    
<form class="layui-form" action="eexperience/add" method="post" target="rfFrame">
 <div class="layui-form-item">
	        <div class="layui-form-item">
	        <label class="layui-form-label"style="width: 15%;" >工作证号</label>
	         <div class="layui-input-inline" style="width: 30%;">
	        <input name="id" lay-verify="required|number" placeholder="请输入工作证号" autocomplete="off" class="layui-input" type="text"> 
	         </div>
	        <div class="layui-form-mid "><font color="red" size="5">*</font></div>
            </div>
           </div>

<div class="layui-tab-item layui-show">
    <div class="layui-form-item">
    <label class="layui-form-label">进修单位</label>
    <div class="layui-input-inline">
      <input type="text" name="workAddress"  class="layui-input" >
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">进修科室</label>
    <div class="layui-input-inline">
      <input type="text" name="classes"  class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">进修内容</label>
    <div class="layui-input-inline">
      <input type="text" name="technicalText"   class="layui-input">
    </div>
  </div>
  <div class="layui-upload">
  <label class="layui-form-label">进修证</label>
  <button type="button" class="layui-btn" id="ts" >上传图片</button>
  <div class="layui-upload-list" >
    <img class="layui-upload-img" id="demo1"style="width:5%;height:5%;margin-left:8%;">
    <p id="demoText1"></p>
  </div>
</div> 
<input type="hidden" value="" name="photo"/>  
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button  class="layui-btn" lay-submit lay-filter="formDemo" id="tj">保存进入下一项</button>
    </div>
  </div>
  </div>
</form>

</body>

<iframe id="rfFrame" name="rfFrame" src="about:blank" style="display:none;"></iframe> 
<script>


layui.use('form', function(){
  var form = layui.form;
  
  //监听提交
  form.on('submit(formDemo)', function(data){
	
   layer.msg("保存成功!");
   window.open("http://localhost:8080/web/fworkAdd");
    return true;
  });
  
});
layui.use('upload', function(){
	
	  var $ = layui.jquery
	  ,upload = layui.upload;
	  
	  //普通图片上传
	  var uploadInst = upload.render({
	    elem: '#ts'	   	   
	    
	    ,url: 'eexperience/upload/'
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
	  
</script>
</html>