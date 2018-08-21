<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>物资申请</title>
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
	  form.on('select(type)', function(data){	 
		  $.post("wzApply/getwz?tId="+data.value, function(Wz){			 
		    	 var name=document.getElementById("name");		
		    	 $("#name").empty();
		    		for(var i=0;i<Wz.length;i++){	
		    			var option=document.createElement("option");
		    			option.value=Wz[i].wzId;
		    			option.text=Wz[i].name;	    			
		    			name.appendChild(option);
		    		} 
		    		form.render('select');
	
		    });  
	});
	  
	  document.forms[0].target="rfFrame";  
	  form.on('submit(formDemo)', function(data){
		  layer.msg("提交成功!");
		    return true;
		  });
	 	  
	  form.verify({
		  add: function(value, item){ //value：表单的值、item：表单的DOM对象		
			  var name=document.getElementById("name").value.trim();			 			    
			    if(name==1){
					return '请选设备';
			 }
		  }
		});
	  form.verify({
		  adc: function(value, item){ //value：表单的值、item：表单的DOM对象
      	  var dId=document.getElementById("dId").value.trim();			    
			    if(dId==1){
					return '请选类别';
			 }
		  }
		});
	 
});
  

</script>
<script >

</script>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">物资申请信息录入</font></legend>
</fieldset>
<form  class="layui-form" action="wzInfo/applyAddInfo" method="post" >
<div class="layui-collapse"  lay-filter="test">
  <div class="layui-colla-item">
    <h2 class="layui-colla-title">物资申请基本信息</h2>
    <div class="layui-colla-content layui-show" style="margin-left: 30%" >
    
		   <div class="layui-form-item">
	      <label class="layui-form-label" style="width: 15%;">类别</label>
	      <div class="layui-input-inline" style="width: 30%;">
	        <select name="tId" id="dId" lay-filter="type" lay-verify="adc" lay-search="">
	          <option value=1>==>请选择<==</option>
	          <c:forEach items="${Type}" var="Type" varStatus="i">
	           <option value="${Type.id}">${Type.type}</option>
	          </c:forEach>          
	        </select>
	      </div>
	      	 <div class="layui-form-mid "><font color="red" size="5">*</font></div> 
		</div> 
		
	        <div class="layui-form-item">
	        <label class="layui-form-label"style="width: 15%;" >物资名称</label>
	         <div class="layui-input-inline" style="width: 30%;">
			 <select name="wzId" id="name" lay-filter="wzName" lay-verify="add" lay-search="" >     
        
      		</select>
      		  </div>
	        <div class="layui-form-mid "><font color="red" size="5">*</font></div>
            </div>

           <div class="layui-form-item">
	        <div class="layui-form-item">
	        <label class="layui-form-label"style="width: 15%;" >数量</label>
	         <div class="layui-input-inline" style="width: 30%;">
	        <input name="number" id = "number" lay-verify="required|number" min="10" max="100" step="1" value="10" placeholder="请输入数量" autocomplete="off" class="layui-input" type="number"> 
	         </div>
	        <div class="layui-form-mid "><font color="red" size="5">*</font></div>
            </div>
           </div>        
           
		       <div class="layui-form-item">
		    <label class="layui-form-label" style="width: 15%;">申请人</label>
		    <div class="layui-input-inline" style="width: 30%;">
		      <input type="text" name="person" required lay-verify="required"  autocomplete="off" class="layui-input">
		    </div>
		    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
		  </div>
       	
           
            <div class="layui-form-item">
		      <label class="layui-form-label" style="width: 15%;">申请日期 </label>
		      <div class="layui-input-inline" style="width: 30%;">
		        <input class="layui-input" name="applyTime" id="test1" placeholder="yyyy-MM-dd" type="text">
		      </div>
		     <div class="layui-form-mid "><font color="red" size="5">*</font></div>
		  </div>	           
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