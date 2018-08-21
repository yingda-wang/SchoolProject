<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>证书查看</title>
<meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="layui/css/layui.css"  media="all">
   <script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<script src="layui/layui.js" charset="utf-8"></script>


<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-xs" lay-event="edit">图片查看</a>
</script>

<script>
layui.use('table', function(){
  var table = layui.table
  ,form = layui.form;
  //方法级渲染
  table.render({
    elem: '#LAY_table_card'
    ,url: 'card/Info' //controller
    ,cols: [[
      {checkbox:false, fixed: false}
      ,{field:'id', title: '证书ID', width:120}
      ,{field:'cardName', title: '证书名称',  width:160}
      ,{field:'major', title: '专业',  width:160, }
      ,{field:'number', title: '证书编号',  width:170}
      //,{field:'photo', title: '证书图片', width:180}
     ,{field:'ranges', title: '执业范围', width:180}
      ,{field:'startTime', title: '获得时间',  width:150}
      ,{field:'stopTime', title: '有效截止时间',  width:150}
      ,{fixed: 'right', width: 200, align:'center', toolbar: '#barDemo'}
    ]]
    ,id: 'idTest'
    ,page: true
    ,height: 515
  });
 
 
 
 
//监听工具条
  table.on('tool(card)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
	  var data = obj.data //获得当前行数据
    ,layEvent = obj.event; //获得 lay-event 对应的值
     if(layEvent === 'del'){
      layer.confirm('真的删除行么', function(index){
    	  $.get("card/del", { id: data.id } );
          obj.del();
          layer.close(index);
          layer.msg("删除成功!");
          table.reload('idTest', {
          	  url: 'card/Info'
          	  ,where: {} //设定异步数据接口的额外参数
          	});
      });
    } else if(layEvent === 'edit'){
    	document.getElementById("showpng").src=data.photo;
    	layer.open({
    		  type: 1,
    		  title: false,
    		  closeBtn: 0,
    		  area: '70%',
    		  skin: 'layui-layer-nobg', //没有背景色
    		  shadeClose: true,
    		  content: $('#showpng')
    		});
    }
    
  });
	  
	 		 	  
});
</script>  
  
<body>


<fieldset class="layui-elem-field layui-field-title" style="margin-top: 1%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">个人证书</font></legend>
</fieldset>


  <img alt="" src="" id="showpng" style="display:none;">
 
<table class="layui-hide" id="LAY_table_card" lay-filter="card"></table> </body>

</html>