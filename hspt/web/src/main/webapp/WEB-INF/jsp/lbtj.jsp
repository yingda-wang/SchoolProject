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
<script type="text/javascript" src="js/echarts.js"></script>
</head>
<body>
	<div class="layui-form-item" style="margin-top:5%;margin-left:8%;">
    <label class="layui-form-label" style="margin-top:-5px;">组别选择</label>
    <div class="layui-input-block">
      <select id="zu" >
        
      </select>
                <button type="button" id="sc" class="layui-btn layui-btn-sm" onclick="sc()">生成统计图</button>
      
    </div>
    
  </div>

    
	<!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
    <div id="main" style="width: 600px;height:400px;margin-top:5%;margin-left:10%;"></div>
<script>

var myChart = echarts.init(document.getElementById('main'));
//显示标题，图例和空的坐标轴
myChart.setOption({
 title: {
     text: '按类别统计'
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

layui.use('laydate', function(){
  var laydate = layui.laydate;
  
	 laydate.render({
    elem: '#test15'
    ,type: 'month'
    ,range: '~'
    ,format: 'yyyy-MM'
  });
});

function sc(){
	var zid=document.getElementById("zu").value;
	var names=[];    //类别数组（实际用来盛放X轴坐标值）
    var nums=[];    //销量数组（实际用来盛放Y坐标值）
	if(zid==-1){
		$.get('device/lbtj').done(function (data) {
	   
			for(var i=0;i<data.length;i++){
				names.push(data[i].type);
				nums.push(data[i].num); 
			}
			
			// 填入数据
	    myChart.setOption({
	        xAxis: {
	            data: names
	        },
	        series: [{
	            // 根据名字对应到相应的系列
	            name: '销量',
	            data: nums
	        }]
	    });
	}); 
	}else{

		$.post('device/lbtj1',{zid:zid}).done(function (data) {
	   	
			 for(var i=0;i<data.length;i++){
				names.push(data[i].type);
				nums.push(data[i].num); 
			}
			
			// 填入数据
	    myChart.setOption({
	        xAxis: {
	            data: names
	        },
	        series: [{
	            // 根据名字对应到相应的系列
	            name: '销量',
	            data: nums
	        }]
	    }); 
	}); 
	
	}
	
	
}

$.post("device/zid", function(data) {
	  var zu=document.getElementById("zu");
	  var option=document.createElement("option");
		option.value="-1";
		option.text="全部";	
		zu.appendChild(option);
	for(var i=0;i<data.length;i++){	
		var option=document.createElement("option");
		option.value=data[i].zname;
		option.text=data[i].zname;	
		zu.appendChild(option);
	}
	
	});
</script>
</body>
</html>