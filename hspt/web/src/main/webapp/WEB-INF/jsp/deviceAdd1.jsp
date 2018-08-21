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
<%
//String name2=request.getParameter("name");
String number=request.getParameter("number");
String name1=request.getParameter("name");
String name=new String (name1.getBytes("ISO-8859-1"),"utf-8"); 
String type1=request.getParameter("type");
String type=new String (type1.getBytes("ISO-8859-1"),"utf-8"); 
%>


<body>

<script type="text/javascript">


</script>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font size="5" color="blue">新增设备</font></legend>
</fieldset>
<form class="layui-form" action="device/bd" method="post" style="margin-left:400px;">
  <div class="layui-form-item">
    <label class="layui-form-label">资产编号</label>
    <div class="layui-input-inline">
      <input type="text" name="sbid" required  lay-verify="required|sbjy" class="layui-input" >
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">设备名称</label>
    <div class="layui-input-inline">
      <input type="text" name="name" value="<%=name %>" required lay-verify="required"  class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
    <label class="layui-form-label">品牌</label>
    <div class="layui-input-inline">
      <input type="text" name="brand" required lay-verify="required"  class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">规格</label>
    <div class="layui-input-inline">
      <input type="text" name="model" required lay-verify="required"  class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
    <label class="layui-form-label">数量</label>
    <div class="layui-input-inline">
      <input type="text" name="number" value="<%=number %>" required lay-verify="required|number"  class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">位置</label>
    <div class="layui-input-inline">
      <input type="text" name="position" required lay-verify="required|sbjy"  class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
   
  </div>
  
  <div class="layui-form-item" >
    <label class="layui-form-label">状态</label>
    <div class="layui-input-block"style="width:10%;">
      <select name="state">      
        <option value="完好">完好</option>
        <option value="维修">维修</option>
        <option value="调拨">调拨</option>
        <option value="报废">报废</option>
      </select>
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">组别</label>
    <div class="layui-input-block"style="width:20%;">
      <select name="zname" lay-verify="required">      
        	
      </select>
    </div>
   
  </div>
  
  <div class="layui-form-item" >
    <label class="layui-form-label">设备类别</label>
    <div class="layui-input-block"style="width:20%;">
      <select name="cname">      
        
      </select>
    </div>
  </div>
  <div class="layui-upload" style="margin-left:10%;">
  <button type="button" class="layui-btn" id="test1" >上传图片</button>
  <div class="layui-upload-list">
    <img class="layui-upload-img" id="demo1"style="width:5%;height:5%;">
    <p id="demoText"></p>
  </div>
</div>   
  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">备注</label>
    <div class="layui-input-block">
      <textarea name="text"placeholder="请输入内容" class="layui-textarea"></textarea>
    </div>
  </div>
<input type="hidden" value="" name="cardname"/>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button  class="layui-btn" lay-submit lay-filter="formDemo" id="tj">立即提交</button>
    </div>
  </div>
</form>
</body>
<iframe id="rfFrame" name="rfFrame" src="about:blank" style="display:none;"></iframe> 
<script>
//Demo
document.forms[0].target="rfFrame";
layui.use('form', function(){
  var form = layui.form;
  
  $.post("deviceCat/cid", function(data) {
	  var cid=document.getElementsByName("cname")[0];
	for(var i=0;i<data.length;i++){	
		var option=document.createElement("option");
		option.value=data[i].type;
		option.text=data[i].type;	
		cid.appendChild(option);
	}
		var type='<%=type%>';
	
	document.getElementsByName('cname')[0].value=type;
	form.render('select');
	});
  $.post("device/zid", function(data) {
	  var zid=document.getElementsByName("zname")[0];
	for(var i=0;i<data.length;i++){	
		var option=document.createElement("option");
		option.value=data[i].zname;
		option.text=data[i].zname;	
		zid.appendChild(option);
	}
	form.render('select');
	});
  
  //监听提交
  form.on('submit(formDemo)', function(data){
	
   layer.msg("提交成功!");
    return true;
  });
  
  form.verify({
	  sbjy: function(value, item){ //value：表单的值、item：表单的DOM对象
		  var result="";
		    $.ajax({  
	              type : "get",  
	              url : "device/bhjy/"+value,   
	              async : false,  
	              success : function(data){  
	                result=data; 
	              }  
	              });    
		    
	  	if(result=="nak"){
	  		return '已有的设备编号!';
	  	}
	  }
	});            
  
});
layui.use('upload', function(){
	  var $ = layui.jquery
	  ,upload = layui.upload;
	  
	  //普通图片上传
	  var uploadInst = upload.render({
	    elem: '#test1'	   	   
	    ,url: 'device/upload/'
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
	    
	      document.getElementsByName("cardname")[0].value=res.data[0].src;
	      
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
</html>