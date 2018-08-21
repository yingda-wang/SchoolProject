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
</div>
<table class="layui-table" lay-data="{ url:'notes/search3', page:true, id:'idTest',where:{room:'<%=room%>',str:'<%=str%>',id:'<%=id%>'}}" lay-filter="demo">
  <thead>
    <tr>  
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
</script>
               
          

<script>
layui.use('table', function(){
  var table = layui.table;
  //监听表格复选框选择
 
  //监听工具条
  table.on('tool(demo)', function(obj){
    var data = obj.data;
     
     
  });
  var $ = layui.$, active = {
		    
		   
		  };
		  
		  $('.demoTable .layui-btn').on('click', function(){
		    var type = $(this).data('type');
		    active[type] ? active[type].call(this) : '';
		  });
  
  
});

</script>
</body>
</html>