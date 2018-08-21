<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加教学日历</title>
 <link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">添加教学日历</font></legend>
</fieldset>


<form class="layui-form" action="rl/add" style="margin-top:5%;margin-left:5%;" method="post" target="ifr">

  <div class="layui-form-item">
    <label class="layui-form-label">学年</label>
    <div class="layui-input-inline">
      <input type="text" name="xn" required  lay-verify="required" placeholder="请输入学年" autocomplete="off" class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color="red">*(例:2016-2017)</font></div>
  </div>
  <!-- <div class="layui-form-item">
    <label class="layui-form-label">学期</label>
    <div class="layui-input-inline">
      <input type="text" name=xq required  lay-verify="required|number|jy" placeholder="请输入学期" autocomplete="off" class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color="red">*(例:1)</font></div>
  </div>  -->
  <div class="layui-form-item" style="width:25%;float:left;">
    <label class="layui-form-label">学期</label>
    <div class="layui-input-block">
      <select name="xq" lay-filter="xq" lay-verify="required|number|jy">
        <option value="1">1</option>
        <option value="2">2</option>
      </select>
    </div>
  </div>
  <div class="layui-form-item">
			<label class="layui-form-label">教学日历</label>
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
				 <input type="hidden"   name="filename" lay-verify="cy" >
			</div>
			
		</div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo">提交</button>
      <button id="target" type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
</form>
<a href="moban/jxrl.xls" class="layui-btn layui-btn-sm layui-btn-danger" style="float:right;margin-right:49%;margin-top:-13%;">模板下载</a>

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
		var xn=document.getElementsByName("xn")[0].value.trim();
		var xq=document.getElementsByName("xq")[0].value.trim(); 
		var result=""
			  $.ajax({  
	              type : "get",  
	              url : "rl/jy",
	              data:"xn="+xn+"&xq="+xq,
	              async : false,  
	              success :function(data){  
	                result=data; 
	              }  
	              });    
		    
	  	if(result=="1"){
	  		return '已添加的教学日历!';
	  	}
	  },
	  cy:function(data){
		  if(data==""){
			  return "请上传日历文件!";
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
</script>
<iframe style="display:none;" name="ifr" id="ifr"></iframe>
</body>
</html>