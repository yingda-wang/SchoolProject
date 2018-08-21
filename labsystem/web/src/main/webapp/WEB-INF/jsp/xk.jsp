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
<%
String kcm=request.getParameter("kcm");
kcm = new String(kcm.getBytes("ISO-8859-1"),"utf-8");
String kcbh=request.getParameter("kcbh");
String room=request.getParameter("room");
String str=request.getParameter("str");
String id=request.getParameter("id");
%>

</head>
<body>
<div class="layui-btn-group demoTable">
  <button class="layui-btn" data-type="getCheckData">新增</button>
  <button class="layui-btn" data-type="getCheckData1">添加选中学生</button>
  
</div>

<div class="demoTable" style="float:right;margin-right:5%;margin-top:5px;">
  学号：
  <div class="layui-inline">
    <input  class="layui-input" name="js"  id="demoReload" autocomplete="off">
  </div>
  <button class="layui-btn" data-type="reload">搜索</button>
</div>
<div class="demoTable"style="float:right;margin-top:5px;margin-right:35%;">
  教学老师:
  <div class="layui-inline">
    <input  class="layui-input" id="teacher" >
  </div>
</div>
<table class="layui-table" lay-data="{ url:'stu/search1', page:true, id:'idTest',where:{kcbh:<%=kcbh%>}}" lay-filter="demo">
  <thead>
    <tr>
     <th lay-data="{type:'checkbox', fixed: 'left'}"></th>  
      <th lay-data="{field:'kcbh', width:200,sort:true}">课程编号</th>
      <th lay-data="{field:'kcm', width:200}">课程名</th>
      <th lay-data="{field:'xuehao', width:200}">学号</th>
      <th lay-data="{field:'student', width:200}">姓名</th>
      <th lay-data="{fixed: 'right', align:'center', toolbar: '#barDemo'}"></th>
    </tr>
  </thead>
</table>
 
<script type="text/html" id="barDemo">
</script>
               
          

<script>
$.ajaxSettings.async = false;
layui.use('table', function(){
  var table = layui.table;
  
  
  //监听表格复选框选择
  table.on('checkbox(demo)', function(obj){
    console.log(obj)
  });
  

  //监听工具条
  table.on('tool(demo)', function(obj){
    var data = obj.data;
     
  });
  
  var $ = layui.$, active = {
		  reload: function(){
		      var xuehao=document.getElementById("demoReload").value.trim();
		     	
		     table.reload('idTest', {
	        	  url: 'stu/search1/js'
	        	  ,where: {xuehao:xuehao,kcbh:<%=kcbh%>} //设定异步数据接口的额外参数
	        	  //,height: 300
	        	  ,method:'post'  
	        	  ,page: {
    curr: 1 //重新从第 1 页开始
  }
	        	});
		    },
    getCheckData: function(){ //获取选中数据
    	layer.open({
  		  type: 2, 
  		area: ['1000px', '450px'],
  		  content: 'stuAdd',//这里content是一个普通的String
  		  cancel: function(index, layero){ 
  			 
  			  table.reload('idTest', {
  	        	  url: 'stu/search1'
  	        	  ,where:{kcbh:<%=kcbh%>} //设定异步数据接口的额外参数
  	        	  //,height: 300
  	        	    ,page: {
   						 curr: 1 //重新从第 1 页开始
  						}
  	        	});
  			  
  			}    		
  	});
    },
    getCheckData1: function(){ //获取选中数据
        var checkStatus = table.checkStatus('idTest')
        ,data = checkStatus.data;
    var teacher=document.getElementById("teacher").value.trim();
    var result="";
    $.post("stuadd/jy",{room:'<%=room%>',str:'<%=str%>',id:'<%=id%>'},function(res){
    	result=res;
    });
    if(teacher==""){
    	layer.msg("请输入教学老师!");
    }else if(result=="1"){
    	layer.msg("您慢了,别的老师已占用!");
    }
    else{
    	
        $.post("notes/add",{list:JSON.stringify(data),teacher:teacher,str:'<%=str%>',id:'<%=id%>',room:'<%=room%>'},function(data){
        	table.reload('idTest', {
          	  url: 'stu/search1'
          	  ,where:{kcbh:<%=kcbh%>} //设定异步数据接口的额外参数
          	  //,height: 300
          	    ,page: {
  						 curr: 1 //重新从第 1 页开始
  					}
          	});
        });
        layer.msg("添加成功!");
        
    }
    	
      }
   
  };
  
  $('.demoTable .layui-btn').on('click', function(){
    var type = $(this).data('type');
    active[type] ? active[type].call(this) : '';
  });
});


</script>
</body>
</html>