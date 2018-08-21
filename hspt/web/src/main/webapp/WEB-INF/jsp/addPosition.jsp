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

layui.use('form', function(){
	  var form = layui.form;
	  form.render();
	 //二级联动

	  document.forms[0].target="rfFrame";  
	  form.on('submit(formDemo)', function(data){
		  layer.msg("提交成功!");
		    return true;
		  });
	  form.verify({
		  abb: function(value, item){ //value：表单的值、item：表单的DOM对象
			  var result=0;
		 
			  var zId=document.getElementById("zId").value.trim();
			  var position = document.getElementById("position").value.trim();

			    $.ajax({  
		              type : "post",  
		              url : "ZPosition/getPosition1",
		              data:"zId="+zId+"&position="+position,
		              async : false,  
		              success : function(data){  
		                result=data; 
		              }  
		              });    
			    
			    if(result>0){
					return '此组已有此岗位!';
			 }
		  }
		});
	  form.verify({
		  abc: function(value, item){ //value：表单的值、item：表单的DOM对象
			 
		 
			  var zId=document.getElementById("zId").value.trim();			 
			      
			    
			    if(zId==1){
					return '请选组';
			 }
		  }
		});
});
  
</script>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">岗位添加</font></legend>
</fieldset>
<form  class="layui-form" action="ZPosition/addPosition1" method="post" >

<div class="layui-collapse"  lay-filter="test">
  <div class="layui-colla-item">
    <h2 class="layui-colla-title">新添岗位</h2>
    <div class="layui-colla-content layui-show" style="margin-left: 30%" >
    
		   <div class="layui-form-item">
 <div class="layui-form-item">
	        <label class="layui-form-label"style="width: 15%;" >新增岗位</label>
	         <div class="layui-input-inline" style="width: 30%;">
	        <input name="position" id="position" lay-verify="required|abb" placeholder="请输入新添岗位" autocomplete="off" class="layui-input" type="text"> 
	         </div>
	        <div class="layui-form-mid "><font color="red" size="5">*</font></div>
            </div>
           <div class="layui-form-item">
	      <label class="layui-form-label" style="width: 15%;">组</label>
	      <div class="layui-input-inline" style="width: 30%;">
	        <select name="zId" id="zId" lay-filter="zId" lay-verify="required|abc" lay-search="" >
	         <option value=1>==>请选择<==</option>
	        <c:forEach items="${list}" var="list" varStatus="i">
           <option value="${list.id}">"${list.zName}"</option>
          </c:forEach>
	        </select>
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