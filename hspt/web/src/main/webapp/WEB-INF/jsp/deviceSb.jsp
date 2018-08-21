<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font size="5" color="blue">设备申请</font></legend>
</fieldset>
<form class="layui-form" action="device/sb/add" target="ifr" method="post" style="margin-left:400px;">
	<div class="layui-form-item">
    <label class="layui-form-label">设备编号</label>
    <div class="layui-input-block" style="width:10%;">
      <select name="devicecoding" lay-verify="required|cfjy" lay-filter="bh">
        
      </select>
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">设备名称</label>
    <div class="layui-input-inline">
      <input type="text" name="devicename" value="无" required lay-verify="required" readonly="readonly" autocomplete="off" class="layui-input">
    </div>
    
  </div>
  
  <div class="layui-form-item">
    <label class="layui-form-label">规格型号</label>
    <div class="layui-input-inline">
      <input type="text" name="specification" value="无" required lay-verify="required" readonly="readonly" autocomplete="off" class="layui-input">
    </div>
    
  </div>
  
  <div class="layui-form-item">
    <label class="layui-form-label">组别</label>
    <div class="layui-input-inline">
      <input type="text" name="zname" value="无" required lay-verify="required" readonly="readonly" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">数量</label>
    <div class="layui-input-inline">
      <input type="text" name="number"  required lay-verify="required|number"  autocomplete="off" class="layui-input">
    </div>
     <div class="layui-form-mid layui-word-aux"><font color="red">*</font></div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">曾用位置</label>
    <div class="layui-input-inline">
      <input type="text" name="usedpostion"    autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
  <div class="layui-inline">
      <label class="layui-form-label">存入时间</label>
      <div class="layui-input-inline">
        <input class="layui-input" name="applytime" id="sqsj" required lay-verify="required" placeholder="yyyy-MM-dd" type="text">
      </div>
    </div>
    </div>
  <div class="layui-form-item">
    <label class="layui-form-label">申请人</label>
    <div class="layui-input-inline">
      <input type="text" name="scrapapplicants"  required lay-verify="required"  autocomplete="off" class="layui-input">
    </div>
     <div class="layui-form-mid layui-word-aux"><font color="red">*</font></div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">经手人</label>
    <div class="layui-input-inline">
      <input type="text" name="manager"  required lay-verify="required"  autocomplete="off" class="layui-input">
    </div>
     <div class="layui-form-mid layui-word-aux"><font color="red">*</font></div>
  </div>
  
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
    </div>
  </div>
</form>
 
 <iframe name="ifr" style="display:none;"></iframe>
<script>
//Demo
layui.use('form', function(){
  var form = layui.form;
  
  
  $.post("device/bh/search", function(data) {
	  var devicecoding=document.getElementsByName("devicecoding")[0];
	  var option=document.createElement("option");
		option.value="-1";
		option.text="请选择";	
		devicecoding.appendChild(option);
	for(var i=0;i<data.length;i++){	
		var option=document.createElement("option");
		option.value=data[i].sbid;
		option.text=data[i].sbid;	
		devicecoding.appendChild(option);
	}
	form.render('select');
	});
  //监听提交
  form.on('submit(formDemo)', function(data){
	 
		  
		  layer.msg("申请成功!");
		  return true;
	  });
   // layer.msg(data.field.devicecoding);
   //return true;
 
  
  
  form.on('select(bh)', function(data){
	  $.post("device/cs/search",{bh:data.value}, function(data1) {
		 document.getElementsByName("specification")[0].value=data1[0].model;
		 document.getElementsByName("zname")[0].value=data1[0].zname;
		 document.getElementsByName("devicename")[0].value=data1[0].name;	 
		});
	});      
  
  
  form.verify({
	  cfjy: function(value, item){ //value：表单的值、item：表单的DOM对象
		  var result="";
		  if(value=="-1"){
			  return '请选择编号!';
		  }else{
			  $.ajax({  
	              type : "get",  
	              url : "device/cfjy/"+value,   
	              async : false,  
	              success : function(data){  
	                result=data; 
	              }  
	              });
		  }
		 
		        
		    
	  	if(result=="nak"){
	  		return '已申报，请勿重复申报!';
	  	}
	  }
	});   
  
});
layui.use('laydate', function(){
	  var laydate = layui.laydate;
	  
	  //执行一个laydate实例
	  laydate.render({
	    elem: '#sqsj' //指定元素
	    ,value: new Date()
	  });
	 
	});
</script>
</body>
</html>