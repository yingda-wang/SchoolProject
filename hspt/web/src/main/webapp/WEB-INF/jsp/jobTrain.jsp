<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>岗位培训信息录入</title>
 <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="layui/css/layui.css"  media="all">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  
</head>

<script src="layui/layui.js" charset="utf-8"></script>

<script>

layui.use(['element', 'layer'], function(){
  var element = layui.element;
  var layer = layui.layer;
 
});

layui.use('laydate', function(){
	  var laydate = layui.laydate;
	  laydate.render({
		    elem: '#test1'
		  });  
	    
}); 

layui.use('form', function(){
	  var form = layui.form;
	  form.render();
	 //二级联动
	  form.on('select(zu)', function(data){	 
		  $.post("user/getGw?zId="+data.value, function(position){			 
		    	 var gw=document.getElementById("gw");		
		    	 $("#gw").empty();
		    		for(var i=0;i<position.length;i++){	
		    			var option=document.createElement("option");
		    			option.value=position[i].id;
		    			option.text=position[i].position;	    			
		    			gw.appendChild(option);
		    		} 
		    		form.render('select');
		    });  
	}); 
	  document.forms[0].target="rfFrame";  
	  form.on('submit(formDemo)', function(data){
		  layer.msg("提交成功!");
		    return true;
		  });
	 
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
	   
	     document.getElementsByName("save")[0].value=res.data[0].src;
	      
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
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">岗位信息录入</font></legend>
</fieldset>
<form  class="layui-form" action="jobTrain/addInfo" method="post" >

<div class="layui-collapse"  lay-filter="test">
  <div class="layui-colla-item">
    <h2 class="layui-colla-title">岗位培训基本信息</h2>
    <div class="layui-colla-content layui-show" style="margin-left: 30%" >
    
		   <div class="layui-form-item">
	        <div class="layui-form-item">
	        <label class="layui-form-label"style="width: 15%;" >工作证号</label>
	         <div class="layui-input-inline" style="width: 30%;">
	        <input name="pId" lay-verify="required|number" placeholder="请输入工作证号" autocomplete="off" class="layui-input" type="text"> 
	         </div>
	        <div class="layui-form-mid "><font color="red" size="5">*</font></div>
            </div>
           </div>
           
           <div class="layui-form-item">
	        <div class="layui-form-item">
	        <label class="layui-form-label"style="width: 15%;" >培训人</label>
	         <div class="layui-input-inline" style="width: 30%;">
	        <input name="trainer" lay-verify="required" placeholder="请输入培训人" autocomplete="off" class="layui-input" type="text"> 
	         </div>
	        <div class="layui-form-mid "><font color="red" size="5">*</font></div>
            </div>
           </div>
           
            <div class="layui-form-item">
	      <label class="layui-form-label" style="width: 15%;">组</label>
	      <div class="layui-input-inline" style="width: 30%;">
	        <select name="zName" lay-filter="zu" lay-verify="required" lay-search="">
	          <option value="">==>请选择<==</option>
	          <c:forEach items="${zu}" var="zu" varStatus="i">
	           <option value="${zu.id}">${zu.zName}</option>
	          </c:forEach> 
	        </select>
	      </div>
	      	 <div class="layui-form-mid "><font color="red" size="5">*</font></div> 
		</div>
		 <div class="layui-form-item">
	      <label class="layui-form-label" style="width: 15%;">岗位</label>
	      <div class="layui-input-inline" style="width: 30%;">
	        <select name="gId" id="gw" lay-verify="required" lay-search="">
	          <option value="0">==>请选择<==</option>
	        
	        </select>
	      </div>
             <div class="layui-form-mid "><font color="red" size="3">(请先选择组再选岗位)</font></div> 	      
	       </div> 
           
            <div class="layui-form-item">
		      <label class="layui-form-label" style="width: 15%;">培训时间</label>
		      <div class="layui-input-inline" style="width: 30%;">
		        <input class="layui-input" name="time" id="test1" placeholder="yyyy-MM-dd" type="text">
		      </div>
		     <div class="layui-form-mid "><font color="red" size="5">*</font></div>
		  </div>
		  
		  <div class="layui-upload" >
		<label class="layui-form-label" style="width: 15%;">照片存档</label>
		
  				<button type="button" class="layui-btn" id="test3" >上传图片</button>
  				<div class="layui-upload-list">
   			 <img class="layui-upload-img" id="demo1"style="width:5%;height:5%;margin-left:40%;">
   				 <p id="demoText"></p>
  			</div>
		</div> 
		
		<input type="hidden" name="save" id="save"> 

		  
		          		           
		</div>  
    </div>
    
    	<div class="layui-form-item" style="margin-left: 35%">
		    <div class="layui-input-block">
		       <button   class="layui-btn" lay-submit lay-filter="formDemo" id = "tj">立即提交</button>
		      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
		    </div>
		  </div>
		  	     
  </div>
  </form>
</body>
 <iframe id="rfFrame" name="rfFrame" src="about:blank" style="display:none;"></iframe> 

</html>