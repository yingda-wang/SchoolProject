<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>上传学生</title>
 <link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">上传学生</font></legend>
</fieldset>

<form class="layui-form" action="stu/add" style="margin-top:5%;margin-left:5%;" method="post" target="ifr">

    <div class="layui-form-item" style="width:25%;">
    <label class="layui-form-label">培养方案</label>
    <div class="layui-input-block">
      <select name="pyfa" lay-verify="required" lay-filter="pyfa">
        
      </select>
    </div>
  </div>
  <div class="layui-form-item" style="width:25%;">
    <label class="layui-form-label">课程名</label>
    <div class="layui-input-block">
      <select name="kcm" lay-verify="required|jy">
        	
      </select>
    </div>

  </div>
 
  
  <div class="layui-form-item">
			<label class="layui-form-label">学生表</label>
			<div class="layui-input-inline">
				<button type="button" class="layui-btn" id="test3">
					<i class="layui-icon"></i>按模板上传
				</button>
			</div>
			<div class="layui-inline">
			 <a href="moban/student.xls" class="layui-btn layui-btn-sm layui-btn-danger" >模板下载</a>
 
			 </div>  
			 <div class="layui-inline">
			     <font color="red" size="5">*</font>
			      <div class="layui-input-inline">
			     <a  name="filename1"> </a> 
							 <input type="hidden"   name="filename" lay-verify="fk" >      </div>
			    </div>
			   
		</div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo">提交</button>
      <button id="target" type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
</form>

<script>
//Demo
$.get("get/pyfa",function(data){
	 var pyfa=document.getElementsByName("pyfa")[0];
	 var option= document.createElement("option");
	   option.value="";
	   option.text="请选择";
	   pyfa.appendChild(option);
	 for(var i=0;i<data.length;i++){
	   var option= document.createElement("option");
	   option.value=data[i].version;
	   option.text=data[i].version;
	   pyfa.appendChild(option);
	 }	 
});

layui.use('form', function(){
  var form = layui.form;
  
  //监听提交
  form.on('submit(formDemo)', function(data){
    layer.msg("提交成功!");  
    return true;
  });
  
  form.on('select(pyfa)', function(data){
   		$.post("get/kcm",{version:data.value},function(res){ 			
   			var kcm=document.getElementsByName("kcm")[0];
   			kcm.innerHTML="";
   			for(var i=0;i<res.length;i++){
   			var option=document.createElement("option");	   			
  	 	 	 option.value=res[i].kcbh+"--"+res[i].kcm;
  	  		 option.text=res[i].kcbh+" "+res[i].kcm;
  	  		 kcm.appendChild(option);
   			}
   			form.render('select');
   		});
   		
    }); 
  
          
  form.verify({
	  fk: function(){
		 if(document.getElementsByName("filename")[0].value==""){
			 return '请上传学生表!';
		 } 
	  },
	  jy: function(data){
		var pyfa=document.getElementsByName("pyfa")[0].value.trim();
		var kcm=document.getElementsByName("kcm")[0].value.trim(); 
		var result=""
			  $.ajax({  
	              type : "post",  
	              url : "stu/jy",
	              data:"pyfa="+pyfa+"&kcm="+kcm,
	              async : false,  
	              success :function(data){  
	                result=data; 
	              }  
	              });    
		    
	  	if(result=="1"){
	  		return '请勿重复添加学生!';
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