<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>物资分配统计</title>
<link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/echarts.js"></script>
</head>
<script>
layui.use(['element', 'layer'], function(){
  var element = layui.element;
  var layer = layui.layer;
  
});
layui.use('laydate', function(){
	  var laydate = layui.laydate;
	  laydate.render({
		    elem: '#test'
		    ,range: true
		  });
});   
layui.use('form', function(){
	  var form = layui.form;
	  form.render();
}); 
</script>
<body>
  <form  class="layui-form" >
 
	<div class="layui-form-item">
	      <label class="layui-form-label">组</label>
	      <div class="layui-input-inline" >
	        <select name="zId" id = "zId" lay-filter="zu" lay-verify="required" >
	          <option value="">==>请选择<==</option>
	           <c:forEach items="${zu}" var="zu" varStatus="i">
	           <option value="${zu.id}">${zu.zName}</option>
	          </c:forEach> 
	        </select>
	      </div>
	  
	      <div class="layui-inline">
		      <label class="layui-form-label">日期范围</label>
		      <div class="layui-input-inline">
		        <input class="layui-input" name="date" id="test" placeholder=" - " type="text">		     
		    </div>
            </div>
            </div>
            </form>
            <div class="layui-inline">
		    <div class="layui-input-block">
		      <button class="layui-btn layui-btn-sm" id = "seeCounts"   onclick="seeCounts()">查看物资分配统计图</button>
		    </div>
		  </div>
		 

    
	<!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
    <div id="main" style="width: 600px;height:400px;margin-top:5%;margin-left:10%;"></div>

<script>

var myChart = echarts.init(document.getElementById('main'));
//显示标题，图例和空的坐标轴
myChart.setOption({
 title: {
     text: '物资分配统计'
 },
 tooltip: {},
 legend: {
     data:['数量']
 },
 xAxis: {
     data: []
 },
 yAxis: {},
 series: [{
     name: '数量',
     type: 'bar',
     data: []
 }]
});


function seeCounts(){
	var zId=document.getElementById("zId").value;
	var date=document.getElementById("test").value;
	var names=[];    //类别数组（实际用来盛放X轴坐标值）
    var nums=[];    //数量数组（实际用来盛放Y坐标值）
    
	   $.get('goods/goodsCounts?zId='+zId+'&date='+date).done(function (data) {
		   
			for(var i=0;i<data.length;i++){
				names.push(data[i].name);
				nums.push(data[i].number); 
			}
			
			// 填入数据
	    myChart.setOption({
	        xAxis: {
	            data: names
	        },
	        series: [{
	            // 根据名字对应到相应的系列
	            name: '数量',
	            data: nums
	        }]
	    });
	}); 
   }
    
    
</script>
</body>
</html>