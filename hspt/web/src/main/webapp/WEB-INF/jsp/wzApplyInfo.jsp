<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>物资申请信息管理</title>
<meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="layui/css/layui.css"  media="all">
   <script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<script src="layui/layui.js" charset="utf-8"></script>
<!-- 修改表单 -->
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

//查询？
layui.use('form', function(){
	  var form = layui.form;
	  form.render();
	  $.post("wzInfo/updateSelect",function(data){
		  var type=document.getElementById("type");			 
  		for(var i=0;i<data[0].length;i++){	
  			var option=document.createElement("option");
  			option.value=data[0][i].id;
  			option.text=data[0][i].type;	    			
  			type.appendChild(option); 
  		}  			  
  		form.render('select');
  		
	  });	 
	 
	  document.forms[0].target="rfFrame";  
	  form.on('submit(formDemo)', function(data){
		  layer.msg("提交成功!");
		    return true;
		  });
	 
});

</script>
<!-- 查询表单  -->


<script type="text/html" id="barDemo">

  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>

<script>
layui.use('table', function(){
  var table = layui.table
  ,form = layui.form;
  //方法级渲染
  table.render({
    elem: '#LAY_table_user'
    ,url: 'wzInfo/info' //controller
    ,cols: [[
      {checkbox: true, fixed: true}
      ,{field:'wzId', title: 'id',  width:120, }
      ,{field:'name', title: '设备名',  width:120}
      ,{field:'number', title: '数量',  width:120, }
      ,{field:'applyTime', title: '申请日期',  width:120}
      ,{field:'type', title: '类别', width:120}
      ,{field:'ifYes', title:'是否批准',  width:120, templet: '#switchTpl', unresize: true}
      ,{fixed: 'right', width:300, align:'center', toolbar: '#barDemo'}
    ]]
    ,id: 'testReload'
    ,page: true
    ,height: 515
  });
 
 
  table.on('checkbox(user)', function(obj){
	    console.log(obj)
	  });
  form.on('switch(ifYesDemo)', function(obj){         
	     $.get("wzInfo/updateIfYes", { id: this.value,ifYes: obj.elem.checked } );  
	  });
//监听工具条
  table.on('tool(user)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
	  var data = obj.data //获得当前行数据
    ,layEvent = obj.event; //获得 lay-event 对应的值
     if(layEvent === 'del'){
      layer.confirm('真的删除行么', function(index){
    	  $.get("wzInfo/del", { id: data.wzId } );
          obj.del();
          layer.close(index);
          layer.msg("删除成功!");
          table.reload('testReload', {
          	  url: 'wzInfo/info'
          	  ,where: {} //设定异步数据接口的额外参数
          	  ,page:{curr:1}	
          });
      });
    } else if(layEvent === 'edit'){	
    	    var arriveTime = data.arriveTime.substr(0,7);

    	    document.getElementsByName("id")[0].value=data.wzId;
    	    document.getElementsByName("name")[0].value=data.name.trim();
    		document.getElementsByName("number")[0].value=data.number;
        	document.getElementsByName("arriveTime")[0].value=data.arriveTime; 
  	
        	
        	layui.form.render('select');
        	layer.open({
        		  type: 1, 
        		  area: '80%',
        		  content: $('#edit'),//这里content是一个普通的String
        		  cancel: function(index, layero){ 
        			  table.reload('testReload', {
        	        	  url: 'wzInfo/info'
        	        	  ,where: {} 
        	        	});
        			}    		
        	});
        	
    }
    else if(obj.event === 'ifYes'){
      
    	$.get("wzInfo/apply/sp?id="+data.wzId+"&name="+data.name+"&number="+data.number)
   	
    	
    	
    	layer.msg("审批成功!");
    	table.reload('testReload', {
      	  url: 'wzInfo/info'
      	  ,where: {} //设定异步数据接口的额外参数
      	  //,height: 300
      	  ,page: {
  curr: 1 //重新从第 1 页开始
}
      	});
    }
    
    
    
  });
	  
  
  var $ = layui.$, active = {
	
		  reload: function(){		    	
  		      var demoReload=document.getElementById("demoReload").value.trim();
  		      //执行重载
 		    table.reload('testReload', {
 		    	 url: 'wzInfo/searchName'
 		    		,where: {
 			        	 searchName:demoReload 
 			        	
 			        }
 		    	 ,method :'post'
		        ,page: {
		          curr: 1 //重新从第 1 页开始
		        }
		        
		      });
		    } 

		      //执行重载
		     
    
			  ,newUser: function(){
		
			  layer.open({
				  type: 2,
				  title: '岗位培训信息添加',
				  shadeClose: true,
				  shade: 0.8,
				  area: ['800px', '90%'],
				  content: 'wzApply' //iframe的url
				 , cancel: function(index, layero){ 
	        			  table.reload('testReload', {
	        	        	  url: 'wzInfo/info'
	        	        	  ,where: {} 
	        			  		,page:{
	        			  			curr:1
	        			  		}
	        	        	});
	        			} 	
			  }); 
			  }
			};
  
		  
		  $('.demoTable .layui-btn').on('click', function(){
		    var type = $(this).data('type');
		    active[type] ? active[type].call(this) : '';
		  });
				  
		 
		   
            
		  
		  
});
</script>  
  
<body>
<iframe id="rfFrame" name="rfFrame" src="about:blank" style="display:none;"></iframe> 
<!-- 修改表单 -->

<form  class="layui-form" action="wzInfo/updateDate" style="display:none"  method="post" id="edit">

<div class="layui-collapse"  lay-filter="test">
  <div class="layui-colla-item">
    <h2 class="layui-colla-title">物资申请基本信息</h2>
    <div class="layui-colla-content layui-show" style="margin-left: 30%" >
    
    
    		
		   <div class="layui-form-item">
	        <div class="layui-form-item">
	        <label class="layui-form-label"style="width: 15%;" >设备名</label>
	         <div class="layui-input-inline" style="width: 30%;">
	        <input name="name" lay-verify="required" placeholder="请输入设备名" autocomplete="off" class="layui-input" type="text"> 
	         </div>
	        <div class="layui-form-mid "><font color="red" size="5">*</font></div>
            </div>
           </div>
           
            <div class="layui-form-item">
		    <label class="layui-form-label" style="width: 15%;">数量</label>
		    <div class="layui-input-inline" style="width: 30%;">
             <input name="number" lay-verify="required|number" placeholder="请输入数量" autocomplete="off" class="layui-input" type="text">		
            </div>
             </div>
          
        
	          
	        <div class="layui-form-item">
	      <label class="layui-form-label" style="width: 15%;">类别</label>
	      <div class="layui-input-inline" style="width: 30%;">
	        <select name="type" id="type" lay-filter="type" lay-verify="required" lay-search="">
	          <option value="">==>请选择<==</option>
	          <c:forEach items="${wzcat}" var="wzcat" varStatus="i">
	           <option value="${wzcat.id}">${wzcat.type}</option>
	          </c:forEach> 
	        </select>
	      </div>
	      	 <div class="layui-form-mid "><font color="red" size="5">*</font></div> 
		</div>
		
		<div class="layui-form-item">
		      <label class="layui-form-label" style="width: 15%;">申请时间</label>
		      <div class="layui-input-inline" style="width: 30%;">
		        <input class="layui-input" name="arriveTime" id="test1" placeholder="yyyy-MM-dd" type="text">
		      </div>
		     <div class="layui-form-mid "><font color="red" size="5">*</font></div>
		  </div>
		
		
   </div>
    </div>
    
		 <div class="layui-form-item" style="margin-left: 35%">
		    <div class="layui-input-block">
		       <button type="submit"  class="layui-btn" lay-submit lay-filter="formDemo" id = "tj">立即提交</button>
		      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
		    </div>
		  </div>
   
  </div>
  <input type="hidden" name="id" />
  </form>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">物资申请管理</font></legend>
</fieldset>

<!-- 查询表单 -->
<div class="layui-btn-group demoTable" >
  <button class="layui-btn" data-type="newUser">新增</button>
</div>
 <div class="demoTable" style="float:right;margin-right:5%;">
  搜索物资名称：
  <div class="layui-inline">
    <input class="layui-input" name="searchName" id="demoReload" autocomplete="off">
  </div>
  <button class="layui-btn" data-type="reload">搜索</button>
</div>
 
<table class="layui-hide" id="LAY_table_user" lay-filter="user"></table> </body>

</html>