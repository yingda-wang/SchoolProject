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
<form id="zj" class="layui-form" action="deviceCat/bd" method="post" style="display:none;">
  
  <div class="layui-form-item" >
    <label class="layui-form-label">类别名称</label>
    <div class="layui-input-inline">
      <input type="text" name="type" required lay-verify="required|lbjy"  class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button  class="layui-btn" lay-submit lay-filter="formDemo" id="tj">立即提交</button>
    </div>
  </div>
</form>

<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font size="5" color="blue">设备类别查询</font></legend>
</fieldset>
<div class="layui-btn-group demoTable">
  <button class="layui-btn" data-type="zj">新增类目</button>
  
</div>
 <div class="demoTable" style="float:right;margin-right:2%;margin-top:5px;">
  搜索类名：
  <div class="layui-inline">
    <input  class="layui-input" name="id1"  id="demoReload" autocomplete="off">
  </div>
  <button class="layui-btn" data-type="reload">搜索</button>
</div>
<table class="layui-table" lay-data="{width: 1350, height:332, url:'deviceCat/search', page:true, id:'idTest'}" lay-filter="demo">
  <thead>
    <tr>
      <th lay-data="{type:'checkbox', fixed: 'left'}"></th>
      <th lay-data="{field:'id', width:100, sort: true, fixed: true}">序号</th>
      <th lay-data="{field:'type', width:200}">类名</th>
      <th lay-data="{fixed: 'right', width:178, align:'center', toolbar: '#barDemo'}"></th>
    </tr>
  </thead>
</table>
 <iframe id="rfFrame" name="rfFrame" src="about:blank" style="display:none;"></iframe> 
 
<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
               
          
<script>
layui.use('table', function(){
  var table = layui.table;
  //监听表格复选框选择
  table.on('checkbox(demo)', function(obj){
    console.log(obj)
  });
  //监听工具条
  table.on('tool(demo)', function(obj){
    var data = obj.data;
    if(obj.event === 'del'){
    	
      layer.confirm('真的删除行么', function(index){
		
      	$.get("deviceCat/del", { id: data.id } );
          obj.del();
          layer.close(index);
          layer.msg("删除成功!");
          table.reload('idTest', {
          	  url: 'deviceCat/search'
          	  ,where: {} //设定异步数据接口的额外参数
          	  //,height: 300
          	  ,page: {
    curr: 1 //重新从第 1 页开始
  }
          	});
      });
    } 
  });
  
  var $ = layui.$, active = {
    getCheckData: function(){ //获取选中数据
      var checkStatus = table.checkStatus('idTest')
      ,data = checkStatus.data;
      layer.alert(JSON.stringify(data));
    }
    ,getCheckLength: function(){ //获取选中数目
      var checkStatus = table.checkStatus('idTest')
      ,data = checkStatus.data;
      layer.msg('选中了：'+ data.length + ' 个');
    }
    ,isAll: function(){ //验证是否全选
      var checkStatus = table.checkStatus('idTest');
      layer.msg(checkStatus.isAll ? '全选': '未全选')
    }
    ,zj: function(){
    	layer.open({
  		  type: 1, 
  		  content: $('#zj'),//这里content是一个普通的String
  		  cancel: function(index, layero){ 
  			   table.reload('idTest', {
  	        	  url: 'deviceCat/search'
  	        	  ,where: {} //设定异步数据接口的额外参数
  	        	  ,page: {
  	        	    curr: 1 //重新从第 1 页开始
  	        	  }
  	        	  //,height: 300
  	        	}); 
  			}    		
  	});
    }
    ,
    reload: function(){
	      var type=document.getElementById("demoReload").value.trim();
	     
	     table.reload('idTest', {
      	  url: 'deviceCat/search/js'
      	  ,where: {type:type} //设定异步数据接口的额外参数
      	  //,height: 300
      	  ,method:'post'
      	    ,page: {
curr: 1 //重新从第 1 页开始
}
      	});
	    }
  };
  
  $('.demoTable .layui-btn').on('click', function(){
    var type = $(this).data('type');
    active[type] ? active[type].call(this) : '';
  });
});
document.forms[0].target="rfFrame";

layui.use('form', function(){
	  var form = layui.form;
	  
	  //监听提交
	  form.on('submit(formDemo)', function(data){
		  layer.msg("提交成功!");
	    return true;
	  });
	  
	  form.verify({
		  lbjy: function(value, item){ //value：表单的值、item：表单的DOM对象
			  var result="";
			    $.ajax({  
		              type : "post",  
		              url : "deviceCat/lbjy",   
		              async : false,  
		              data:{"type":value.trim()},   
		              success : function(data){  
		                result=data; 
		              }  
		              });    
			    
		  	if(result=="nak"){
		  		return '已有的类目!';
		  	}
		  }
		});           
	});
</script>
</body>
</html>