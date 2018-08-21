<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>人员信息录入</title>
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
	  laydate.render({
		    elem: '#test2'
		    	,type: 'month'
		  });  
	  laydate.render({
		    elem: '#test3'
		    	,type: 'month'
		  }); 
	  laydate.render({
		    elem: '#test4'
		    	,type: 'month'
		  });  
	  laydate.render({
		    elem: '#test5'
		    	,type: 'month'
		  });  
	  laydate.render({
		    elem: '#test6'
		    	,type: 'month'
		  });  
	  laydate.render({
		    elem: '#test7'
		    	,type: 'month'
		  });  
}); 

function abb(){

	
}
layui.use('form', function(){
	  var form = layui.form;
	  form.render();
	  
	 //二级联动
/* 	  form.on('select(zu)', function(data){	 
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
	});  */
	  document.forms[0].target="rfFrame"; 
	
	  form.on('submit(formDemo)', function(list){
			/* var zName=document.getElementById("zName").value.trim();
			alert(zName);
			$.post("ZPosition/getZu?zName="+zName,function(panduan){
				alert(panduan);
				
					  
						  if(panduan>0){
							  layer.msg("已有此组，不能重复填写！");
					return false; }
						  else  {layer.msg("提交成功!");
						    return true;}
				
					
			}); */
			 
					layer.msg("提交成功!");
					return true;
		
		  });
	  
	  
	  form.verify({
		  abb: function(value, item){ //value：表单的值、item：表单的DOM对象
			  var result=0;
			  var zName=document.getElementById("zName").value.trim();

			    $.ajax({  
		              type : "post",  
		              url : "ZPosition/getZu?zName="+zName,   
		              async : false,  
		              success : function(data){  
		                result=data; 
		              }  
		              });    
			    
			    if(result>0){
					return '已有的组!';
			 }
		  }
		});  
	  
});
  
</script>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">小组添加</font></legend>
</fieldset>
<form  class="layui-form" action="ZPosition/addZu1" method="post" >

<div class="layui-collapse"  lay-filter="test">
  <div class="layui-colla-item">
    <h2 class="layui-colla-title">新添小组</h2>
    <div class="layui-colla-content layui-show" style="margin-left: 30%" >
    
		   <div class="layui-form-item">
		  <div class="layui-form-item">
      <label class="layui-form-label" style="width: 15%;">已添加的小组</label>
      <div class="layui-input-inline" style="width: 30%;">
        <select lay-filter="zName" lay-verify="required" lay-search="">
          <c:forEach items="${list}" var="list" varStatus="i">
           <option value="${list.zName}">"${list.zName}"</option>
          </c:forEach>
        </select>
      </div>
           </div>
           <div class="layui-form-item">
		    <label class="layui-form-label"style="width: 15%;" >新添加的组</label>
		    <div class="layui-input-inline" style="width: 30%;">
		      <input name="zName" id="zName" lay-verify="required|abb" placeholder="请输入组名" autocomplete="off" class="layui-input" type="text" >
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