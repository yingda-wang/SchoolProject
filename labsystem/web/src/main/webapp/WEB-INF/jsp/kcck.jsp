<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
String str=request.getParameter("str");
String id=request.getParameter("id");
String room=request.getParameter("room");

%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>

<div class="layui-btn-group demoTable">
  <button class="layui-btn layui-btn-danger" data-type="getCheckData">删除选中的数据</button>
</div>
<table class="layui-table" lay-data="{ url:'notes/search3', page:true, id:'idTest',where:{room:'<%=room%>',str:'<%=str%>',id:'<%=id%>'}}" lay-filter="demo">
  <thead>
    <tr>  
         <th lay-data="{type:'checkbox', fixed: 'left'}"></th>  
    
      <th lay-data="{field:'roomcode', width:80}">实验室</th>
      <th lay-data="{field:'student', width:80}">学生</th>
      <th lay-data="{field:'xuehao', width:120}">学号</th>
      <th lay-data="{field:'name', width:120}">指导教师</th>
      <th lay-data="{field:'kcm', width:200}">课程名</th>
      <th lay-data="{fixed: 'right', align:'center', toolbar: '#barDemo'}"></th>
    </tr>
  </thead>
</table>
 
<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
               
          

<script>
$.ajaxSettings.async = false;
layui.use('table', function(){
  var table = layui.table;
  //监听表格复选框选择
 
  //监听工具条
  table.on('tool(demo)', function(obj){
    var data = obj.data;
     if(obj.event === 'del'){
         layer.confirm('真的删除么', function(index){
       	  $.get("notes/del", { id: data.id1,xuehao:data.xuehao,kcbh:data.kcbh,jobnumber:data.username} );
             obj.del();
             layer.close(index);
             layer.msg("删除成功!");
             table.reload('idTest', {
             	  url: 'notes/search3'
             	  ,where: {room:'<%=room%>',str:'<%=str%>',id:'<%=id%>'} //设定异步数据接口的额外参数
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
		         
		    	$.post("notes/delAll",{list:JSON.stringify(data),room:'<%=room%>',str:'<%=str%>',id:'<%=id%>'});
		    	layer.msg("删除成功!");
		    	table.reload('idTest', {
	             	  url: 'notes/search3'
	             	  ,where: {room:'<%=room%>',str:'<%=str%>',id:'<%=id%>'} //设定异步数据接口的额外参数
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

</script>
</body>
</html>