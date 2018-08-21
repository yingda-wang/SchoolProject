<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>查看选课(管理员)</title>
<link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
<form class="layui-form" >

    <div class="layui-form-item" style="width:25%;float:left;">
    <label class="layui-form-label">实验室</label>
    <div class="layui-input-block">
      <select name="room" lay-filter="room">
        
      </select>
    </div>
  </div>
  <div class="layui-form-item" style="width:30%;float:left;margin-left:22%;margin-top:-53px;">
    <label class="layui-form-label">课程名</label>
    <div class="layui-input-block">
      <select name="kcm" lay-filter="kcm">
        	
      </select>
    </div>
  </div>
 <div class="layui-form-item" style="width:30%;float:left;margin-left:44%;margin-top:-53px;">
    <div class="layui-input-block">
      <button class="layui-btn layui-btn-sm  layui-btn-normal" onclick="dc()">导出</button>
    </div>
  </div>
  
</form>
<div id="yc1"  style="width:1006px;height:580px;margin-left:15px;margin-top:5px;">
		<div style="float:left;width:49px;height:20px;border:0.5px solid black;text-align:center;"></div>
		<div style="float:left;width:43px;height:20px;border:0.5px solid black;text-align:center;"></div>
		<div style="float:left;width:128px;height:20px;border:0.5px solid black;text-align:center;">星期一</div>
		<div style="float:left;width:128px;height:20px;border:0.5px solid black;text-align:center;">星期二</div>
		<div style="float:left;width:128px;height:20px;border:0.5px solid black;text-align:center;">星期三</div>
		<div style="float:left;width:128px;height:20px;border:0.5px solid black;text-align:center;">星期四</div>
		<div style="float:left;width:128px;height:20px;border:0.5px solid black;text-align:center;">星期五</div>
		<div style="float:left;width:128px;height:20px;border:0.5px solid black;text-align:center;">星期六</div>
		<div style="float:left;width:128px;height:20px;border:0.5px solid black;text-align:center;">星期日</div>
		<div style="float:left;width:49px;height:20px;border:0.5px solid black;text-align:center;"></div>
		<div style="float:left;width:43px;height:20px;border:0.5px solid black;text-align:center;font-size:12px;line-height:20px;">教学周</div>
		<div style="float:left;width:30.5px;height:20px;border:0.5px solid black;text-align:center;font-size:12px;">日期</div>
		<div style="float:left;width:30.5px;height:20px;border:0.5px solid black;text-align:center;font-size:12px;">上午</div>
		<div style="float:left;width:30.5px;height:20px;border:0.5px solid black;text-align:center;font-size:12px;">下午</div>
		<div style="float:left;width:30.5px;height:20px;border:0.5px solid black;text-align:center;font-size:12px;">晚上</div>
		<div style="float:left;width:30.5px;height:20px;border:0.5px solid black;text-align:center;font-size:12px;">日期</div>
		<div style="float:left;width:30.5px;height:20px;border:0.5px solid black;text-align:center;font-size:12px;">上午</div>
		<div style="float:left;width:30.5px;height:20px;border:0.5px solid black;text-align:center;font-size:12px;">下午</div>
		<div style="float:left;width:30.5px;height:20px;border:0.5px solid black;text-align:center;font-size:12px;">晚上</div>
		<div style="float:left;width:30.5px;height:20px;border:0.5px solid black;text-align:center;font-size:12px;">日期</div>
		<div style="float:left;width:30.5px;height:20px;border:0.5px solid black;text-align:center;font-size:12px;">上午</div>
		<div style="float:left;width:30.5px;height:20px;border:0.5px solid black;text-align:center;font-size:12px;">下午</div>
		<div style="float:left;width:30.5px;height:20px;border:0.5px solid black;text-align:center;font-size:12px;">晚上</div>
		<div style="float:left;width:30.5px;height:20px;border:0.5px solid black;text-align:center;font-size:12px;">日期</div>
		<div style="float:left;width:30.5px;height:20px;border:0.5px solid black;text-align:center;font-size:12px;">上午</div>
		<div style="float:left;width:30.5px;height:20px;border:0.5px solid black;text-align:center;font-size:12px;">下午</div>
		<div style="float:left;width:30.5px;height:20px;border:0.5px solid black;text-align:center;font-size:12px;">晚上</div>
		<div style="float:left;width:30.5px;height:20px;border:0.5px solid black;text-align:center;font-size:12px;">日期</div>
		<div style="float:left;width:30.5px;height:20px;border:0.5px solid black;text-align:center;font-size:12px;">上午</div>
		<div style="float:left;width:30.5px;height:20px;border:0.5px solid black;text-align:center;font-size:12px;">下午</div>
		<div style="float:left;width:30.5px;height:20px;border:0.5px solid black;text-align:center;font-size:12px;">晚上</div>
		<div style="float:left;width:30.5px;height:20px;border:0.5px solid black;text-align:center;font-size:12px;">日期</div>
		<div style="float:left;width:30.5px;height:20px;border:0.5px solid black;text-align:center;font-size:12px;">上午</div>
		<div style="float:left;width:30.5px;height:20px;border:0.5px solid black;text-align:center;font-size:12px;">下午</div>
		<div style="float:left;width:30.5px;height:20px;border:0.5px solid black;text-align:center;font-size:12px;">晚上</div>
		<div style="float:left;width:30.5px;height:20px;border:0.5px solid black;text-align:center;font-size:12px;">日期</div>
		<div style="float:left;width:30.5px;height:20px;border:0.5px solid black;text-align:center;font-size:12px;">上午</div>
		<div style="float:left;width:30.5px;height:20px;border:0.5px solid black;text-align:center;font-size:12px;">下午</div>
		<div style="float:left;width:30.5px;height:20px;border:0.5px solid black;text-align:center;font-size:12px;">晚上</div>

		<div name="hang" style="width:1004px;height:30px;float:left;border:0.5px solid black;">

		<div  name="yue" style="float:left;width:49px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div  name="zhou"style="float:left;width:44px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>

		<div name="xingqi1"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq1s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div  name="xq1s1"style="box-sizing:border-box;width:15.75px;height:30px;float:left;border-right:0.5px solid black;"></div>
			<div  name="xq1s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div name="xq1x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div name="xq1x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi2"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq2s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div name="xq2s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div name="xq2s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div name="xq2x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div name="xq2x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi3"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq3s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div name="xq3s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div name="xq3s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div name="xq3x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div name="xq3x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi4"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq4s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div  name="xq4s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div  name="xq4s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div name="xq4x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div name="xq4x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>		

		<div name="xingqi5"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq5s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div name="xq5s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div name="xq5s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div name="xq5x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div name="xq5x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi6"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq6s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div name="xq6s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div name="xq6s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div name="xq6x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div name="xq6x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi7"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq7s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div name="xq7s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div name="xq7s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div name="xq7x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div name="xq7x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7w"style="float:left;width:31.5px;height:30px;text-align:center;font-size:12px;"></div>

		</div>
		<div name="hang" style="width:1004px;height:30px;float:left;border:0.5px solid black;">
			
		<div name="yue" style="float:left;width:49px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div  name="zhou"style="float:left;width:44px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>

		<div name="xingqi1"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq1s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div  name="xq1s1"style="box-sizing:border-box;width:15.75px;height:30px;float:left;border-right:0.5px solid black;"></div>
			<div  name="xq1s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div name="xq1x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div name="xq1x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi2"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq2s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div name="xq2s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div name="xq2s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div name="xq2x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div name="xq2x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi3"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq3s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div name="xq3s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div name="xq3s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div name="xq3x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div name="xq3x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi4"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq4s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div  name="xq4s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div  name="xq4s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div name="xq4x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div name="xq4x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>		

		<div name="xingqi5"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq5s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div name="xq5s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div name="xq5s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div name="xq5x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div name="xq5x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('1','xq5w')"name="xq5w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi6"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq6s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('1','xq6s1')"name="xq6s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('1','xq6s2')"name="xq6s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('1','xq6x1')"name="xq6x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('1','xq6x2')"name="xq6x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('1','xq6w')"name="xq6w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi7"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq7s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('1','xq7s1')"name="xq7s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('1','xq7s2')"name="xq7s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('1','xq7x1')"name="xq7x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('1','xq7x2')"name="xq7x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('1','xq7w')"name="xq7w"style="float:left;width:31.5px;height:30px;text-align:center;font-size:12px;"></div>
		</div>
		<div name="hang" style="width:1004px;height:30px;float:left;border:0.5px solid black;">
			<div name="yue" style="float:left;width:49px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div  name="zhou"style="float:left;width:44px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>

		<div name="xingqi1"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq1s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div  name="xq1s1"style="box-sizing:border-box;width:15.75px;height:30px;float:left;border-right:0.5px solid black;"></div>
			<div onclick="xk('2','xq1s2')" name="xq1s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('2','xq1x1')"name="xq1x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('2','xq1x2')"name="xq1x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('2','xq1w')"name="xq1w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi2"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq2s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('2','xq2s1')"name="xq2s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('2','xq2s2')"name="xq2s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('2','xq2x1')"name="xq2x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('2','xq2x2')"name="xq2x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('2','xq2w')"name="xq2w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi3"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq3s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('2','xq3s1')"name="xq3s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('2','xq3s2')"name="xq3s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('2','xq3x1')"name="xq3x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('2','xq3x2')"name="xq3x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('2','xq3w')"name="xq3w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi4"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq4s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('2','xq4s1')" name="xq4s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('2','xq4s2')" name="xq4s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('2','xq4x1')"name="xq4x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('2','xq4x2')"name="xq4x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('2','xq4w')"name="xq4w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>		

		<div name="xingqi5"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq5s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('2','xq5s1')"name="xq5s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('2','xq5s2')"name="xq5s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('2','xq5x1')"name="xq5x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('2','xq5x2')"name="xq5x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('2','xq5w')"name="xq5w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi6"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq6s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('2','xq6s1')"name="xq6s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('2','xq6s2')"name="xq6s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('2','xq6x1')"name="xq6x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('2','xq6x2')"name="xq6x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('2','xq6w')"name="xq6w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi7"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq7s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('2','xq7s1')"name="xq7s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('2','xq7s2')"name="xq7s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('2','xq7x1')"name="xq7x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('2','xq7x2')"name="xq7x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('2','xq7w')"name="xq7w"style="float:left;width:31.5px;height:30px;text-align:center;font-size:12px;"></div>
		</div>	
		<div name="hang" style="width:1004px;height:30px;float:left;border:0.5px solid black;">
			<div name="yue" style="float:left;width:49px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div  name="zhou"style="float:left;width:44px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>

		<div name="xingqi1"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq1s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div  name="xq1s1"style="box-sizing:border-box;width:15.75px;height:30px;float:left;border-right:0.5px solid black;"></div>
			<div onclick="xk('3','xq1s2')" name="xq1s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('3','xq1x1')"name="xq1x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('3','xq1x2')"name="xq1x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('3','xq1w')"name="xq1w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi2"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq2s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('3','xq2s1')"name="xq2s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('3','xq2s2')"name="xq2s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('3','xq2x1')"name="xq2x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('3','xq2x2')"name="xq2x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('3','xq2w')"name="xq2w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi3"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq3s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('3','xq3s1')"name="xq3s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('3','xq3s2')"name="xq3s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('3','xq3x1')"name="xq3x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('3','xq3x2')"name="xq3x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('3','xq3w')"name="xq3w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi4"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq4s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('3','xq4s1')" name="xq4s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('3','xq4s2')" name="xq4s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('3','xq4x1')"name="xq4x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('3','xq4x2')"name="xq4x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('3','xq4w')"name="xq4w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>		

		<div name="xingqi5"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq5s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('3','xq5s1')"name="xq5s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('3','xq5s2')"name="xq5s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('3','xq5x1')"name="xq5x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('3','xq5x2')"name="xq5x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('3','xq5w')"name="xq5w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi6"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq6s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('3','xq6s1')"name="xq6s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('3','xq6s2')"name="xq6s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('3','xq6x1')"name="xq6x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('3','xq6x2')"name="xq6x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('3','xq6w')"name="xq6w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi7"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq7s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('3','xq7s1')"name="xq7s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('3','xq7s2')"name="xq7s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('3','xq7x1')"name="xq7x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('3','xq7x2')"name="xq7x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('3','xq7w')"name="xq7w"style="float:left;width:31.5px;height:30px;text-align:center;font-size:12px;"></div>
		</div>
		<div name="hang" style="width:1004px;height:30px;float:left;border:0.5px solid black;">
			<div name="yue" style="float:left;width:49px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div  name="zhou"style="float:left;width:44px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>

		<div name="xingqi1"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq1s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div  name="xq1s1"style="box-sizing:border-box;width:15.75px;height:30px;float:left;border-right:0.5px solid black;"></div>
			<div onclick="xk('4','xq1s2')" name="xq1s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('4','xq1x1')"name="xq1x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('4','xq1x2')"name="xq1x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('4','xq1w')"name="xq1w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi2"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq2s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('4','xq2s1')"name="xq2s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('4','xq2s2')"name="xq2s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('4','xq2x1')"name="xq2x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('4','xq2x2')"name="xq2x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('4','xq2w')"name="xq2w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi3"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq3s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('4','xq3s1')"name="xq3s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('4','xq3s2')"name="xq3s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('4','xq3x1')"name="xq3x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('4','xq3x2')"name="xq3x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('4','xq3w')"name="xq3w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi4"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq4s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('4','xq4s1')" name="xq4s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('4','xq4s2')" name="xq4s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('4','xq4x1')"name="xq4x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('4','xq4x2')"name="xq4x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('4','xq4w')"name="xq4w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>		

		<div name="xingqi5"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq5s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('4','xq5s1')"name="xq5s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('4','xq5s2')"name="xq5s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('4','xq5x1')"name="xq5x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('4','xq5x2')"name="xq5x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('4','xq5w')"name="xq5w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi6"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq6s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('4','xq6s1')"name="xq6s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('4','xq6s2')"name="xq6s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('4','xq6x1')"name="xq6x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('4','xq6x2')"name="xq6x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('4','xq6w')"name="xq6w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi7"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq7s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('4','xq7s1')"name="xq7s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('4','xq7s2')"name="xq7s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('4','xq7x1')"name="xq7x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('4','xq7x2')"name="xq7x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('4','xq7w')"name="xq7w"style="float:left;width:31.5px;height:30px;text-align:center;font-size:12px;"></div>
		</div>
		<div name="hang" style="width:1004px;height:30px;float:left;border:0.5px solid black;">
			<div name="yue" style="float:left;width:49px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div  name="zhou"style="float:left;width:44px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>

		<div name="xingqi1"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq1s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('5','xq1s1')" name="xq1s1"style="box-sizing:border-box;width:15.75px;height:30px;float:left;border-right:0.5px solid black;"></div>
			<div onclick="xk('5','xq1s2')" name="xq1s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('5','xq1x1')"name="xq1x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('5','xq1x2')"name="xq1x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('5','xq1w')"name="xq1w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi2"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq2s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('5','xq2s1')"name="xq2s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('5','xq2s2')"name="xq2s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('5','xq2x1')"name="xq2x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('5','xq2x2')"name="xq2x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('5','xq2w')"name="xq2w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi3"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq3s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('5','xq3s1')"name="xq3s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('5','xq3s2')"name="xq3s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('5','xq3x1')"name="xq3x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('5','xq3x2')"name="xq3x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('5','xq3w')"name="xq3w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi4"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq4s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('5','xq4s1')" name="xq4s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('5','xq4s2')" name="xq4s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('5','xq4x1')"name="xq4x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('5','xq4x2')"name="xq4x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('5','xq4w')"name="xq4w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>		

		<div name="xingqi5"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq5s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('5','xq5s1')"name="xq5s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('5','xq5s2')"name="xq5s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('5','xq5x1')"name="xq5x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('5','xq5x2')"name="xq5x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('5','xq5w')"name="xq5w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi6"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq6s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('5','xq6s1')"name="xq6s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('5','xq6s2')"name="xq6s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('5','xq6x1')"name="xq6x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('5','xq6x2')"name="xq6x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('5','xq6w')"name="xq6w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi7"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq7s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('5','xq7s1')"name="xq7s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('5','xq7s2')"name="xq7s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('5','xq7x1')"name="xq7x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('5','xq7x2')"name="xq7x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('5','xq7w')"name="xq7w"style="float:left;width:31.5px;height:30px;text-align:center;font-size:12px;"></div>
		</div>
		<div name="hang" style="width:1004px;height:30px;float:left;border:0.5px solid black;">
			<div name="yue" style="float:left;width:49px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div  name="zhou"style="float:left;width:44px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>

		<div name="xingqi1"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq1s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('6','xq1s1')" name="xq1s1"style="box-sizing:border-box;width:15.75px;height:30px;float:left;border-right:0.5px solid black;"></div>
			<div onclick="xk('6','xq1s2')" name="xq1s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('6','xq1x1')"name="xq1x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('6','xq1x2')"name="xq1x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('6','xq1w')"name="xq1w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi2"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq2s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('6','xq2s1')"name="xq2s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('6','xq2s2')"name="xq2s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('6','xq2x1')"name="xq2x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('6','xq2x2')"name="xq2x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('6','xq2w')"name="xq2w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi3"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq3s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('6','xq3s1')"name="xq3s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('6','xq3s2')"name="xq3s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('6','xq3x1')"name="xq3x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('6','xq3x2')"name="xq3x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('6','xq3w')"name="xq3w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi4"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq4s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('6','xq4s1')" name="xq4s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('6','xq4s2')" name="xq4s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('6','xq4x1')"name="xq4x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('6','xq4x2')"name="xq4x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('6','xq4w')"name="xq4w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>		

		<div name="xingqi5"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq5s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('6','xq5s1')"name="xq5s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('6','xq5s2')"name="xq5s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('6','xq5x1')"name="xq5x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('6','xq5x2')"name="xq5x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('6','xq5w')"name="xq5w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi6"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq6s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('6','xq6s1')"name="xq6s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('6','xq6s2')"name="xq6s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('6','xq6x1')"name="xq6x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('6','xq6x2')"name="xq6x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('6','xq6w')"name="xq6w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi7"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq7s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('6','xq7s1')"name="xq7s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('6','xq7s2')"name="xq7s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('6','xq7x1')"name="xq7x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('6','xq7x2')"name="xq7x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('6','xq7w')"name="xq7w"style="float:left;width:31.5px;height:30px;text-align:center;font-size:12px;"></div>
		</div>
		<div name="hang" style="width:1004px;height:30px;float:left;border:0.5px solid black;">
			<div name="yue" style="float:left;width:49px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div  name="zhou"style="float:left;width:44px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div name="xingqi1"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq1s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('7','xq1s1')" name="xq1s1"style="box-sizing:border-box;width:15.75px;height:30px;float:left;border-right:0.5px solid black;"></div>
			<div onclick="xk('7','xq1s2')" name="xq1s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('7','xq1x1')"name="xq1x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('7','xq1x2')"name="xq1x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('7','xq1w')"name="xq1w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi2"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq2s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('7','xq2s1')"name="xq2s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('7','xq2s2')"name="xq2s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('7','xq2x1')"name="xq2x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('7','xq2x2')"name="xq2x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('7','xq2w')"name="xq2w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi3"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq3s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('7','xq3s1')"name="xq3s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('7','xq3s2')"name="xq3s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('7','xq3x1')"name="xq3x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('7','xq3x2')"name="xq3x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('7','xq3w')"name="xq3w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi4"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq4s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('7','xq4s1')" name="xq4s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('7','xq4s2')" name="xq4s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('7','xq4x1')"name="xq4x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('7','xq4x2')"name="xq4x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('7','xq4w')"name="xq4w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>		

		<div name="xingqi5"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq5s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('7','xq5s1')"name="xq5s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('7','xq5s2')"name="xq5s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('7','xq5x1')"name="xq5x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('7','xq5x2')"name="xq5x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('7','xq5w')"name="xq5w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi6"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq6s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('7','xq6s1')"name="xq6s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('7','xq6s2')"name="xq6s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('7','xq6x1')"name="xq6x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('7','xq6x2')"name="xq6x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('7','xq6w')"name="xq6w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi7"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq7s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('7','xq7s1')"name="xq7s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('7','xq7s2')"name="xq7s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('7','xq7x1')"name="xq7x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('7','xq7x2')"name="xq7x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('7','xq7w')"name="xq7w"style="float:left;width:31.5px;height:30px;text-align:center;font-size:12px;"></div>
		</div>
		<div name="hang" style="width:1004px;height:30px;float:left;border:0.5px solid black;">
			<div name="yue" style="float:left;width:49px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div  name="zhou"style="float:left;width:44px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>

		<div name="xingqi1"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq1s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('8','xq1s1')" name="xq1s1"style="box-sizing:border-box;width:15.75px;height:30px;float:left;border-right:0.5px solid black;"></div>
			<div onclick="xk('8','xq1s2')" name="xq1s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('8','xq1x1')"name="xq1x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('8','xq1x2')"name="xq1x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('8','xq1w')"name="xq1w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi2"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq2s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('8','xq2s1')"name="xq2s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('8','xq2s2')"name="xq2s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('8','xq2x1')"name="xq2x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('8','xq2x2')"name="xq2x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('8','xq2w')"name="xq2w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi3"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq3s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('8','xq3s1')"name="xq3s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('8','xq3s2')"name="xq3s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('8','xq3x1')"name="xq3x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('8','xq3x2')"name="xq3x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('8','xq3w')"name="xq3w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi4"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq4s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('8','xq4s1')" name="xq4s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('8','xq4s2')" name="xq4s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('8','xq4x1')"name="xq4x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('8','xq4x2')"name="xq4x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('8','xq4w')"name="xq4w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>		

		<div name="xingqi5"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq5s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('8','xq5s1')"name="xq5s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('8','xq5s2')"name="xq5s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('8','xq5x1')"name="xq5x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('8','xq5x2')"name="xq5x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('8','xq5w')"name="xq5w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi6"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq6s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('8','xq6s1')"name="xq6s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('8','xq6s2')"name="xq6s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('8','xq6x1')"name="xq6x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('8','xq6x2')"name="xq6x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('8','xq6w')"name="xq6w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi7"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq7s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('8','xq7s1')"name="xq7s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('8','xq7s2')"name="xq7s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('8','xq7x1')"name="xq7x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('8','xq7x2')"name="xq7x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('8','xq7w')"name="xq7w"style="float:left;width:31.5px;height:30px;text-align:center;font-size:12px;"></div>
		</div>
		<div name="hang" style="width:1004px;height:30px;float:left;border:0.5px solid black;">
			<div name="yue" style="float:left;width:49px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div  name="zhou"style="float:left;width:44px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
<div name="xingqi1"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq1s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('9','xq1s1')" name="xq1s1"style="box-sizing:border-box;width:15.75px;height:30px;float:left;border-right:0.5px solid black;"></div>
			<div onclick="xk('9','xq1s2')" name="xq1s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('9','xq1x1')"name="xq1x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('9','xq1x2')"name="xq1x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('9','xq1w')"name="xq1w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi2"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq2s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('9','xq2s1')"name="xq2s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('9','xq2s2')"name="xq2s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('9','xq2x1')"name="xq2x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('9','xq2x2')"name="xq2x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('9','xq2w')"name="xq2w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi3"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq3s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('9','xq3s1')"name="xq3s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('9','xq3s2')"name="xq3s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('9','xq3x1')"name="xq3x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('9','xq3x2')"name="xq3x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('9','xq3w')"name="xq3w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi4"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq4s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('9','xq4s1')" name="xq4s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('9','xq4s2')" name="xq4s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('9','xq4x1')"name="xq4x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('9','xq4x2')"name="xq4x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('9','xq4w')"name="xq4w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>		

		<div name="xingqi5"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq5s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('9','xq5s1')"name="xq5s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('9','xq5s2')"name="xq5s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('9','xq5x1')"name="xq5x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('9','xq5x2')"name="xq5x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('9','xq5w')"name="xq5w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi6"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq6s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('9','xq6s1')"name="xq6s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('9','xq6s2')"name="xq6s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('9','xq6x1')"name="xq6x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('9','xq6x2')"name="xq6x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('9','xq6w')"name="xq6w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi7"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq7s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('9','xq7s1')"name="xq7s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('9','xq7s2')"name="xq7s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('9','xq7x1')"name="xq7x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('9','xq7x2')"name="xq7x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('9','xq7w')"name="xq7w"style="float:left;width:31.5px;height:30px;text-align:center;font-size:12px;"></div>
		</div>
		<div name="hang" style="width:1004px;height:30px;float:left;border:0.5px solid black;">
			<div name="yue" style="float:left;width:49px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div  name="zhou"style="float:left;width:44px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>

		<div name="xingqi1"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq1s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('10','xq1s1')" name="xq1s1"style="box-sizing:border-box;width:15.75px;height:30px;float:left;border-right:0.5px solid black;"></div>
			<div onclick="xk('10','xq1s2')" name="xq1s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('10','xq1x1')"name="xq1x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('10','xq1x2')"name="xq1x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('10','xq1w')"name="xq1w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi2"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq2s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('10','xq2s1')"name="xq2s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('10','xq2s2')"name="xq2s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('10','xq2x1')"name="xq2x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('10','xq2x2')"name="xq2x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('10','xq2w')"name="xq2w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi3"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq3s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('10','xq3s1')"name="xq3s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('10','xq3s2')"name="xq3s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('10','xq3x1')"name="xq3x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('10','xq3x2')"name="xq3x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('10','xq3w')"name="xq3w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi4"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq4s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('10','xq4s1')" name="xq4s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('10','xq4s2')" name="xq4s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('10','xq4x1')"name="xq4x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('10','xq4x2')"name="xq4x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('10','xq4w')"name="xq4w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>		

		<div name="xingqi5"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq5s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('10','xq5s1')"name="xq5s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('10','xq5s2')"name="xq5s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('10','xq5x1')"name="xq5x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('10','xq5x2')"name="xq5x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('10','xq5w')"name="xq5w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi6"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq6s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('10','xq6s1')"name="xq6s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('10','xq6s2')"name="xq6s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('10','xq6x1')"name="xq6x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('10','xq6x2')"name="xq6x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('10','xq6w')"name="xq6w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi7"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq7s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('10','xq7s1')"name="xq7s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('10','xq7s2')"name="xq7s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('10','xq7x1')"name="xq7x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('10','xq7x2')"name="xq7x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('10','xq7w')"name="xq7w"style="float:left;width:31.5px;height:30px;text-align:center;font-size:12px;"></div>
		</div>
		<div name="hang" style="width:1004px;height:30px;float:left;border:0.5px solid black;">
			<div name="yue" style="float:left;width:49px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div  name="zhou"style="float:left;width:44px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
<div name="xingqi1"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq1s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('11','xq1s1')" name="xq1s1"style="box-sizing:border-box;width:15.75px;height:30px;float:left;border-right:0.5px solid black;"></div>
			<div onclick="xk('11','xq1s2')" name="xq1s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('11','xq1x1')"name="xq1x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('11','xq1x2')"name="xq1x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('11','xq1w')"name="xq1w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi2"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq2s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('11','xq2s1')"name="xq2s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('11','xq2s2')"name="xq2s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('11','xq2x1')"name="xq2x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('11','xq2x2')"name="xq2x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('11','xq2w')"name="xq2w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi3"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq3s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('11','xq3s1')"name="xq3s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('11','xq3s2')"name="xq3s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('11','xq3x1')"name="xq3x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('11','xq3x2')"name="xq3x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('11','xq3w')"name="xq3w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi4"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq4s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('11','xq4s1')" name="xq4s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('11','xq4s2')" name="xq4s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('11','xq4x1')"name="xq4x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('11','xq4x2')"name="xq4x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('11','xq4w')"name="xq4w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>		

		<div name="xingqi5"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq5s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('11','xq5s1')"name="xq5s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('11','xq5s2')"name="xq5s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('11','xq5x1')"name="xq5x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('11','xq5x2')"name="xq5x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('11','xq5w')"name="xq5w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi6"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq6s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('11','xq6s1')"name="xq6s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('11','xq6s2')"name="xq6s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('11','xq6x1')"name="xq6x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('11','xq6x2')"name="xq6x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('11','xq6w')"name="xq6w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi7"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq7s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('11','xq7s1')"name="xq7s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('11','xq7s2')"name="xq7s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('11','xq7x1')"name="xq7x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('11','xq7x2')"name="xq7x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('11','xq7w')"name="xq7w"style="float:left;width:31.5px;height:30px;text-align:center;font-size:12px;"></div>
		</div>
		<div name="hang" style="width:1004px;height:30px;float:left;border:0.5px solid black;">
			<div name="yue" style="float:left;width:49px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div  name="zhou"style="float:left;width:44px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>

		<div name="xingqi1"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq1s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('12','xq1s1')" name="xq1s1"style="box-sizing:border-box;width:15.75px;height:30px;float:left;border-right:0.5px solid black;"></div>
			<div onclick="xk('12','xq1s2')" name="xq1s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('12','xq1x1')"name="xq1x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('12','xq1x2')"name="xq1x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('12','xq1w')"name="xq1w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi2"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq2s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('12','xq2s1')"name="xq2s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('12','xq2s2')"name="xq2s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('12','xq2x1')"name="xq2x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('12','xq2x2')"name="xq2x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('12','xq2w')"name="xq2w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi3"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq3s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('12','xq3s1')"name="xq3s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('12','xq3s2')"name="xq3s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('12','xq3x1')"name="xq3x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('12','xq3x2')"name="xq3x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('12','xq3w')"name="xq3w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi4"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq4s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('12','xq4s1')" name="xq4s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('12','xq4s2')" name="xq4s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('12','xq4x1')"name="xq4x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('12','xq4x2')"name="xq4x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('12','xq4w')"name="xq4w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>		

		<div name="xingqi5"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq5s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('12','xq5s1')"name="xq5s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('12','xq5s2')"name="xq5s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('12','xq5x1')"name="xq5x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('12','xq5x2')"name="xq5x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('12','xq5w')"name="xq5w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi6"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq6s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('12','xq6s1')"name="xq6s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('12','xq6s2')"name="xq6s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('12','xq6x1')"name="xq6x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('12','xq6x2')"name="xq6x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('12','xq6w')"name="xq6w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi7"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq7s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('12','xq7s1')"name="xq7s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('12','xq7s2')"name="xq7s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('12','xq7x1')"name="xq7x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('12','xq7x2')"name="xq7x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('12','xq7w')"name="xq7w"style="float:left;width:31.5px;height:30px;text-align:center;font-size:12px;"></div>
		</div>
		<div name="hang" style="width:1004px;height:30px;float:left;border:0.5px solid black;">
			<div name="yue"style="float:left;width:49px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div  name="zhou"style="float:left;width:44px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>

		<div name="xingqi1"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq1s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('13','xq1s1')" name="xq1s1"style="box-sizing:border-box;width:15.75px;height:30px;float:left;border-right:0.5px solid black;"></div>
			<div onclick="xk('13','xq1s2')" name="xq1s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('13','xq1x1')"name="xq1x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('13','xq1x2')"name="xq1x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('13','xq1w')"name="xq1w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi2"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq2s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('13','xq2s1')"name="xq2s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('13','xq2s2')"name="xq2s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('13','xq2x1')"name="xq2x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('13','xq2x2')"name="xq2x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('13','xq2w')"name="xq2w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi3"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq3s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('13','xq3s1')"name="xq3s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('13','xq3s2')"name="xq3s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('13','xq3x1')"name="xq3x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('13','xq3x2')"name="xq3x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('13','xq3w')"name="xq3w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi4"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq4s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('13','xq4s1')" name="xq4s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('13','xq4s2')" name="xq4s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('13','xq4x1')"name="xq4x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('13','xq4x2')"name="xq4x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('13','xq4w')"name="xq4w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>		

		<div name="xingqi5"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq5s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('13','xq5s1')"name="xq5s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('13','xq5s2')"name="xq5s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('13','xq5x1')"name="xq5x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('13','xq5x2')"name="xq5x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('13','xq5w')"name="xq5w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi6"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq6s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('13','xq6s1')"name="xq6s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('13','xq6s2')"name="xq6s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('13','xq6x1')"name="xq6x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('13','xq6x2')"name="xq6x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('13','xq6w')"name="xq6w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi7"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq7s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('13','xq7s1')"name="xq7s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('13','xq7s2')"name="xq7s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('13','xq7x1')"name="xq7x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('13','xq7x2')"name="xq7x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('13','xq7w')"name="xq7w"style="float:left;width:31.5px;height:30px;text-align:center;font-size:12px;"></div>
		</div>






		<div name="hang" style="width:1004px;height:30px;float:left;border:0.5px solid black;">
			<div name="yue"style="float:left;width:49px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div  name="zhou"style="float:left;width:44px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>

		<div name="xingqi1"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq1s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('14','xq1s1')" name="xq1s1"style="box-sizing:border-box;width:15.75px;height:30px;float:left;border-right:0.5px solid black;"></div>
			<div onclick="xk('14','xq1s2')" name="xq1s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('14','xq1x1')"name="xq1x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('14','xq1x2')"name="xq1x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('14','xq1w')"name="xq1w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi2"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq2s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('14','xq2s1')"name="xq2s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('14','xq2s2')"name="xq2s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('14','xq2x1')"name="xq2x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('14','xq2x2')"name="xq2x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('14','xq2w')"name="xq2w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi3"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq3s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('14','xq3s1')"name="xq3s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('14','xq3s2')"name="xq3s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('14','xq3x1')"name="xq3x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('14','xq3x2')"name="xq3x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('14','xq3w')"name="xq3w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi4"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq4s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('14','xq4s1')" name="xq4s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('14','xq4s2')" name="xq4s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('14','xq4x1')"name="xq4x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('14','xq4x2')"name="xq4x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('14','xq4w')"name="xq4w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>		

		<div name="xingqi5"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq5s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('14','xq5s1')"name="xq5s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('14','xq5s2')"name="xq5s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('14','xq5x1')"name="xq5x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('14','xq5x2')"name="xq5x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('14','xq5w')"name="xq5w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi6"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq6s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('14','xq6s1')"name="xq6s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('14','xq6s2')"name="xq6s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('14','xq6x1')"name="xq6x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('14','xq6x2')"name="xq6x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('14','xq6w')"name="xq6w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi7"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq7s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('14','xq7s1')"name="xq7s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('14','xq7s2')"name="xq7s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('14','xq7x1')"name="xq7x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('14','xq7x2')"name="xq7x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('14','xq7w')"name="xq7w"style="float:left;width:31.5px;height:30px;text-align:center;font-size:12px;"></div>
		</div>
		<div name="hang" style="width:1004px;height:30px;float:left;border:0.5px solid black;">
			<div name="yue" style="float:left;width:49px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div  name="zhou"style="float:left;width:44px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>

		<div name="xingqi1"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq1s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('15','xq1s1')" name="xq1s1"style="box-sizing:border-box;width:15.75px;height:30px;float:left;border-right:0.5px solid black;"></div>
			<div onclick="xk('15','xq1s2')" name="xq1s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('15','xq1x1')"name="xq1x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('15','xq1x2')"name="xq1x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('15','xq1w')"name="xq1w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi2"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq2s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('15','xq2s1')"name="xq2s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('15','xq2s2')"name="xq2s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('15','xq2x1')"name="xq2x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('15','xq2x2')"name="xq2x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('15','xq2w')"name="xq2w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi3"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq3s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('15','xq3s1')"name="xq3s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('15','xq3s2')"name="xq3s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('15','xq3x1')"name="xq3x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('15','xq3x2')"name="xq3x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('15','xq3w')"name="xq3w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi4"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq4s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('15','xq4s1')" name="xq4s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('15','xq4s2')" name="xq4s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('15','xq4x1')"name="xq4x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('15','xq4x2')"name="xq4x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('15','xq4w')"name="xq4w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>		

		<div name="xingqi5"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq5s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('15','xq5s1')"name="xq5s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('15','xq5s2')"name="xq5s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('15','xq5x1')"name="xq5x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('15','xq5x2')"name="xq5x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('15','xq5w')"name="xq5w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi6"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq6s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('15','xq6s1')"name="xq6s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('15','xq6s2')"name="xq6s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('15','xq6x1')"name="xq6x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('15','xq6x2')"name="xq6x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('15','xq6w')"name="xq6w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi7"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq7s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('15','xq7s1')"name="xq7s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('15','xq7s2')"name="xq7s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('15','xq7x1')"name="xq7x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('15','xq7x2')"name="xq7x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('15','xq7w')"name="xq7w"style="float:left;width:31.5px;height:30px;text-align:center;font-size:12px;"></div>
		</div>
		<div name="hang" style="width:1004px;height:30px;float:left;border:0.5px solid black;">
			<div name="yue" style="float:left;width:49px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div  name="zhou"style="float:left;width:44px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>

			`	<div name="xingqi1"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
			<div name="xq1s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('16','xq1s1')" name="xq1s1"style="box-sizing:border-box;width:15.75px;height:30px;float:left;border-right:0.5px solid black;"></div>
			<div onclick="xk('16','xq1s2')" name="xq1s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('16','xq1x1')"name="xq1x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('16','xq1x2')"name="xq1x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('16','xq1w')"name="xq1w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi2"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq2s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('16','xq2s1')"name="xq2s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('16','xq2s2')"name="xq2s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('16','xq2x1')"name="xq2x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('16','xq2x2')"name="xq2x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('16','xq2w')"name="xq2w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi3"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq3s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('16','xq3s1')"name="xq3s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('16','xq3s2')"name="xq3s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('16','xq3x1')"name="xq3x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('16','xq3x2')"name="xq3x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('16','xq3w')"name="xq3w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi4"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq4s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('16','xq4s1')" name="xq4s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('16','xq4s2')" name="xq4s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('16','xq4x1')"name="xq4x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('16','xq4x2')"name="xq4x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('16','xq4w')"name="xq4w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>		

		<div name="xingqi5"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq5s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('16','xq5s1')"name="xq5s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('16','xq5s2')"name="xq5s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('16','xq5x1')"name="xq5x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('16','xq5x2')"name="xq5x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('16','xq5w')"name="xq5w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi6"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq6s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('16','xq6s1')"name="xq6s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('16','xq6s2')"name="xq6s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('16','xq6x1')"name="xq6x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('16','xq6x2')"name="xq6x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('16','xq6w')"name="xq6w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi7"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq7s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('16','xq7s1')"name="xq7s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('16','xq7s2')"name="xq7s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('16','xq7x1')"name="xq7x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('16','xq7x2')"name="xq7x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('16','xq7w')"name="xq7w"style="float:left;width:31.5px;height:30px;text-align:center;font-size:12px;"></div>
		</div>
		<div name="hang" style="width:1004px;height:30px;float:left;border:0.5px solid black;">
			<div name="yue"style="float:left;width:49px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div  name="zhou"style="float:left;width:44px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div name="xingqi1"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq1s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('17','xq1s1')" name="xq1s1"style="box-sizing:border-box;width:15.75px;height:30px;float:left;border-right:0.5px solid black;"></div>
			<div onclick="xk('17','xq1s2')" name="xq1s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('17','xq1x1')"name="xq1x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('17','xq1x2')"name="xq1x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('17','xq1w')"name="xq1w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi2"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq2s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('17','xq2s1')"name="xq2s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('17','xq2s2')"name="xq2s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('17','xq2x1')"name="xq2x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('17','xq2x2')"name="xq2x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('17','xq2w')"name="xq2w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi3"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq3s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('17','xq3s1')"name="xq3s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('17','xq3s2')"name="xq3s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('17','xq3x1')"name="xq3x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('17','xq3x2')"name="xq3x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('17','xq3w')"name="xq3w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi4"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq4s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('17','xq4s1')" name="xq4s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('17','xq4s2')" name="xq4s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('17','xq4x1')"name="xq4x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('17','xq4x2')"name="xq4x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('17','xq4w')"name="xq4w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>		

		<div name="xingqi5"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq5s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('17','xq5s1')"name="xq5s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('17','xq5s2')"name="xq5s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('17','xq5x1')"name="xq5x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('17','xq5x2')"name="xq5x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('17','xq5w')"name="xq5w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi6"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq6s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('17','xq6s1')"name="xq6s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('17','xq6s2')"name="xq6s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('17','xq6x1')"name="xq6x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('17','xq6x2')"name="xq6x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('17','xq6w')"name="xq6w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi7"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq7s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('17','xq7s1')"name="xq7s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('17','xq7s2')"name="xq7s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('17','xq7x1')"name="xq7x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('17','xq7x2')"name="xq7x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('17','xq7w')"name="xq7w"style="float:left;width:31.5px;height:30px;text-align:center;font-size:12px;"></div>
		</div>
		<div name="hang" style="width:1004px;height:30px;float:left;border:0.5px solid black;">
			<div name="yue"style="float:left;width:49px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div  name="zhou"style="float:left;width:44px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div name="xingqi1"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq1s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('18','xq1s1')" name="xq1s1"style="box-sizing:border-box;width:15.75px;height:30px;float:left;border-right:0.5px solid black;"></div>
			<div onclick="xk('18','xq1s2')" name="xq1s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('18','xq1x1')"name="xq1x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('18','xq1x2')"name="xq1x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('18','xq1w')"name="xq1w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi2"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq2s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('18','xq2s1')"name="xq2s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('18','xq2s2')"name="xq2s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('18','xq2x1')"name="xq2x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('18','xq2x2')"name="xq2x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('18','xq2w')"name="xq2w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi3"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq3s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('18','xq3s1')"name="xq3s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('18','xq3s2')"name="xq3s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('18','xq3x1')"name="xq3x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('18','xq3x2')"name="xq3x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('18','xq3w')"name="xq3w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi4"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq4s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('18','xq4s1')" name="xq4s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('18','xq4s2')" name="xq4s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('18','xq4x1')"name="xq4x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('18','xq4x2')"name="xq4x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('18','xq4w')"name="xq4w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>		

		<div name="xingqi5"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq5s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('18','xq5s1')"name="xq5s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('18','xq5s2')"name="xq5s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('18','xq5x1')"name="xq5x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('18','xq5x2')"name="xq5x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('18','xq5w')"name="xq5w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi6"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq6s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('18','xq6s1')"name="xq6s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('18','xq6s2')"name="xq6s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('18','xq6x1')"name="xq6x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('18','xq6x2')"name="xq6x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('18','xq6w')"name="xq6w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi7"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq7s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('18','xq7s1')"name="xq7s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('18','xq7s2')"name="xq7s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('18','xq7x1')"name="xq7x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('18','xq7x2')"name="xq7x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('18','xq7w')"name="xq7w"style="float:left;width:31.5px;height:30px;text-align:center;font-size:12px;"></div>
		</div>
		<div name="hang" style="width:1004px;height:30px;float:left;border:0.5px solid black;">
			<div name="yue"style="float:left;width:49px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div  name="zhou"style="float:left;width:44px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>

		<div name="xingqi1"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq1s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('19','xq1s1')" name="xq1s1"style="box-sizing:border-box;width:15.75px;height:30px;float:left;border-right:0.5px solid black;"></div>
			<div onclick="xk('19','xq1s2')" name="xq1s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('19','xq1x1')"name="xq1x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('19','xq1x2')"name="xq1x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('19','xq1w')"name="xq1w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi2"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq2s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('19','xq2s1')"name="xq2s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('19','xq2s2')"name="xq2s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('19','xq2x1')"name="xq2x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('19','xq2x2')"name="xq2x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('19','xq2w')"name="xq2w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi3"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq3s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('19','xq3s1')"name="xq3s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('19','xq3s2')"name="xq3s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('19','xq3x1')"name="xq3x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('19','xq3x2')"name="xq3x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('19','xq3w')"name="xq3w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi4"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq4s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('19','xq4s1')" name="xq4s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('19','xq4s2')" name="xq4s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('19','xq4x1')"name="xq4x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('19','xq4x2')"name="xq4x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('19','xq4w')"name="xq4w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>		

		<div name="xingqi5"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq5s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('19','xq5s1')"name="xq5s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('19','xq5s2')"name="xq5s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('19','xq5x1')"name="xq5x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('19','xq5x2')"name="xq5x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('19','xq5w')"name="xq5w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi6"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq6s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('19','xq6s1')"name="xq6s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('19','xq6s2')"name="xq6s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('19','xq6x1')"name="xq6x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('19','xq6x2')"name="xq6x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('19','xq6w')"name="xq6w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi7"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq7s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('19','xq7s1')"name="xq7s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('19','xq7s2')"name="xq7s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('19','xq7x1')"name="xq7x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('19','xq7x2')"name="xq7x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('19','xq7w')"name="xq7w"style="float:left;width:31.5px;height:30px;text-align:center;font-size:12px;"></div>
		</div>
		<div name="hang" style="width:1004px;height:30px;float:left;border:0.5px solid black;">
			<div name="yue"style="float:left;width:49px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div  name="zhou"style="float:left;width:44px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>

		<div name="xingqi1"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq1s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('20','xq1s1')" name="xq1s1"style="box-sizing:border-box;width:15.75px;height:30px;float:left;border-right:0.5px solid black;"></div>
			<div onclick="xk('20','xq1s2')" name="xq1s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('20','xq1x1')"name="xq1x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('20','xq1x2')"name="xq1x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('20','xq1w')"name="xq1w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi2"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq2s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('20','xq2s1')"name="xq2s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('20','xq2s2')"name="xq2s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('20','xq2x1')"name="xq2x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('20','xq2x2')"name="xq2x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('20','xq2w')"name="xq2w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi3"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq3s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('20','xq3s1')"name="xq3s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('20','xq3s2')"name="xq3s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('20','xq3x1')"name="xq3x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('20','xq3x2')"name="xq3x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('20','xq3w')"name="xq3w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi4"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq4s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('20','xq4s1')" name="xq4s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('20','xq4s2')" name="xq4s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('20','xq4x1')"name="xq4x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('20','xq4x2')"name="xq4x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('20','xq4w')"name="xq4w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>		

		<div name="xingqi5"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq5s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('20','xq5s1')"name="xq5s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('20','xq5s2')"name="xq5s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('20','xq5x1')"name="xq5x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('20','xq5x2')"name="xq5x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('20','xq5w')"name="xq5w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi6"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq6s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('20','xq6s1')"name="xq6s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('20','xq6s2')"name="xq6s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('20','xq6x1')"name="xq6x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('20','xq6x2')"name="xq6x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('20','xq6w')"name="xq6w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi7"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq7s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('20','xq7s1')"name="xq7s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('20','xq7s2')"name="xq7s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('20','xq7x1')"name="xq7x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('20','xq7x2')"name="xq7x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('20','xq7w')"name="xq7w"style="float:left;width:31.5px;height:30px;text-align:center;font-size:12px;"></div>
		</div>
		<div name="hang" style="width:1004px;height:30px;float:left;border:0.5px solid black;">
			<div name="yue"style="float:left;width:49px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div  name="zhou"style="float:left;width:44px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>

		<div name="xingqi1"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq1s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('21','xq1s1')" name="xq1s1"style="box-sizing:border-box;width:15.75px;height:30px;float:left;border-right:0.5px solid black;"></div>
			<div onclick="xk('21','xq1s2')" name="xq1s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('21','xq1x1')"name="xq1x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('21','xq1x2')"name="xq1x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('21','xq1w')"name="xq1w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi2"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq2s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('21','xq2s1')"name="xq2s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('21','xq2s2')"name="xq2s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('21','xq2x1')"name="xq2x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('21','xq2x2')"name="xq2x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('21','xq2w')"name="xq2w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi3"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq3s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('21','xq3s1')"name="xq3s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('21','xq3s2')"name="xq3s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('21','xq3x1')"name="xq3x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('21','xq3x2')"name="xq3x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('21','xq3w')"name="xq3w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi4"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq4s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('21','xq4s1')" name="xq4s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('21','xq4s2')" name="xq4s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('21','xq4x1')"name="xq4x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('21','xq4x2')"name="xq4x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('21','xq4w')"name="xq4w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>		

		<div name="xingqi5"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq5s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('21','xq5s1')"name="xq5s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('21','xq5s2')"name="xq5s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('21','xq5x1')"name="xq5x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('21','xq5x2')"name="xq5x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('21','xq5w')"name="xq5w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi6"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq6s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('21','xq6s1')"name="xq6s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('21','xq6s2')"name="xq6s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('21','xq6x1')"name="xq6x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('21','xq6x2')"name="xq6x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('21','xq6w')"name="xq6w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi7"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq7s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('21','xq7s1')"name="xq7s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('21','xq7s2')"name="xq7s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('21','xq7x1')"name="xq7x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('21','xq7x2')"name="xq7x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('21','xq7w')"name="xq7w"style="float:left;width:31.5px;height:30px;text-align:center;font-size:12px;"></div>
		</div>
		<div name="hang" style="width:1004px;height:30px;float:left;border:0.5px solid black;">
			<div name="yue"style="float:left;width:49px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div  name="zhou"style="float:left;width:44px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>

		<div name="xingqi1"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq1s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('22','xq1s1')" name="xq1s1"style="box-sizing:border-box;width:15.75px;height:30px;float:left;border-right:0.5px solid black;"></div>
			<div onclick="xk('22','xq1s2')" name="xq1s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('22','xq1x1')"name="xq1x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('22','xq1x2')"name="xq1x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('22','xq1w')"name="xq1w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi2"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq2s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('22','xq2s1')"name="xq2s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('22','xq2s2')"name="xq2s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('22','xq2x1')"name="xq2x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('22','xq2x2')"name="xq2x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('22','xq2w')"name="xq2w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi3"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq3s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('22','xq3s1')"name="xq3s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('22','xq3s2')"name="xq3s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('22','xq3x1')"name="xq3x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('22','xq3x2')"name="xq3x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('22','xq3w')"name="xq3w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi4"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq4s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('22','xq4s1')" name="xq4s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('22','xq4s2')" name="xq4s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('22','xq4x1')"name="xq4x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('22','xq4x2')"name="xq4x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('22','xq4w')"name="xq4w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>		

		<div name="xingqi5"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq5s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('22','xq5s1')"name="xq5s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('22','xq5s2')"name="xq5s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('22','xq5x1')"name="xq5x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('22','xq5x2')"name="xq5x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('22','xq5w')"name="xq5w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi6"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq6s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('22','xq6s1')"name="xq6s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('22','xq6s2')"name="xq6s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('22','xq6x1')"name="xq6x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('22','xq6x2')"name="xq6x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('22','xq6w')"name="xq6w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi7"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq7s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('22','xq7s1')"name="xq7s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('22','xq7s2')"name="xq7s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('22','xq7x1')"name="xq7x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('22','xq7x2')"name="xq7x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('22','xq7w')"name="xq7w"style="float:left;width:31.5px;height:30px;text-align:center;font-size:12px;"></div>
		</div>
		<div name="hang" style="width:1004px;height:30px;float:left;border:0.5px solid black;">
			<div name="yue"style="float:left;width:49px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div  name="zhou"style="float:left;width:44px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>

		<div name="xingqi1"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq1s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('23','xq1s1')" name="xq1s1"style="box-sizing:border-box;width:15.75px;height:30px;float:left;border-right:0.5px solid black;"></div>
			<div onclick="xk('23','xq1s2')" name="xq1s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('23','xq1x1')"name="xq1x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('23','xq1x2')"name="xq1x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('23','xq1w')"name="xq1w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi2"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq2s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('23','xq2s1')"name="xq2s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('23','xq2s2')"name="xq2s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('23','xq2x1')"name="xq2x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('23','xq2x2')"name="xq2x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('23','xq2w')"name="xq2w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi3"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq3s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('23','xq3s1')"name="xq3s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('23','xq3s2')"name="xq3s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('23','xq3x1')"name="xq3x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('23','xq3x2')"name="xq3x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('23','xq3w')"name="xq3w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi4"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq4s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('23','xq4s1')" name="xq4s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('23','xq4s2')" name="xq4s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('23','xq4x1')"name="xq4x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('23','xq4x2')"name="xq4x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('23','xq4w')"name="xq4w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>		

		<div name="xingqi5"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq5s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('23','xq5s1')"name="xq5s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('23','xq5s2')"name="xq5s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('23','xq5x1')"name="xq5x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('23','xq5x2')"name="xq5x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('23','xq5w')"name="xq5w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi6"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq6s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('23','xq6s1')"name="xq6s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('23','xq6s2')"name="xq6s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('23','xq6x1')"name="xq6x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('23','xq6x2')"name="xq6x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('23','xq6w')"name="xq6w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi7"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq7s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('23','xq7s1')"name="xq7s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('23','xq7s2')"name="xq7s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('23','xq7x1')"name="xq7x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('23','xq7x2')"name="xq7x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('23','xq7w')"name="xq7w"style="float:left;width:31.5px;height:30px;text-align:center;font-size:12px;"></div>
		</div>
		<div name="hang" style="width:1004px;height:30px;float:left;border:0.5px solid black;">
			<div name="yue"style="float:left;width:49px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div  name="zhou"style="float:left;width:44px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>

		<div name="xingqi1"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq1s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('24','xq1s1')" name="xq1s1"style="box-sizing:border-box;width:15.75px;height:30px;float:left;border-right:0.5px solid black;"></div>
			<div onclick="xk('24','xq1s2')" name="xq1s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('24','xq1x1')"name="xq1x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('24','xq1x2')"name="xq1x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('24','xq1w')"name="xq1w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi2"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq2s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('24','xq2s1')"name="xq2s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('24','xq2s2')"name="xq2s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('24','xq2x1')"name="xq2x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('24','xq2x2')"name="xq2x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('24','xq2w')"name="xq2w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi3"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq3s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('24','xq3s1')"name="xq3s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('24','xq3s2')"name="xq3s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('24','xq3x1')"name="xq3x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('24','xq3x2')"name="xq3x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('24','xq3w')"name="xq3w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi4"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq4s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('24','xq4s1')" name="xq4s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('24','xq4s2')" name="xq4s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('24','xq4x1')"name="xq4x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('24','xq4x2')"name="xq4x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('24','xq4w')"name="xq4w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>		

		<div name="xingqi5"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq5s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('24','xq5s1')"name="xq5s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('24','xq5s2')"name="xq5s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('24','xq5x1')"name="xq5x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('24','xq5x2')"name="xq5x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('24','xq5w')"name="xq5w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi6"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq6s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('24','xq6s1')"name="xq6s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('24','xq6s2')"name="xq6s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('24','xq6x1')"name="xq6x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('24','xq6x2')"name="xq6x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('24','xq6w')"name="xq6w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi7"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq7s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('24','xq7s1')"name="xq7s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('24','xq7s2')"name="xq7s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('24','xq7x1')"name="xq7x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('24','xq7x2')"name="xq7x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('24','xq7w')"name="xq7w"style="float:left;width:31.5px;height:30px;text-align:center;font-size:12px;"></div>
		</div>
		<div name="hang" style="width:1004px;height:30px;float:left;border:0.5px solid black;">
			<div name="yue"style="float:left;width:49px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div  name="zhou"style="float:left;width:44px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>

	<div name="xingqi1"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq1s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('25','xq1s1')" name="xq1s1"style="box-sizing:border-box;width:15.75px;height:30px;float:left;border-right:0.5px solid black;"></div>
			<div onclick="xk('25','xq1s2')" name="xq1s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('25','xq1x1')"name="xq1x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('25','xq1x2')"name="xq1x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('25','xq1w')"name="xq1w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi2"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq2s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('25','xq2s1')"name="xq2s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('25','xq2s2')"name="xq2s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('25','xq2x1')"name="xq2x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('25','xq2x2')"name="xq2x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('25','xq2w')"name="xq2w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi3"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq3s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('25','xq3s1')"name="xq3s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('25','xq3s2')"name="xq3s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('25','xq3x1')"name="xq3x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('25','xq3x2')"name="xq3x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('25','xq3w')"name="xq3w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi4"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq4s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('25','xq4s1')" name="xq4s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('25','xq4s2')" name="xq4s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('25','xq4x1')"name="xq4x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('25','xq4x2')"name="xq4x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('25','xq4w')"name="xq4w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>		

		<div name="xingqi5"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq5s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('25','xq5s1')"name="xq5s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('25','xq5s2')"name="xq5s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('25','xq5x1')"name="xq5x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('25','xq5x2')"name="xq5x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('25','xq5w')"name="xq5w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi6"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq6s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('25','xq6s1')"name="xq6s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('25','xq6s2')"name="xq6s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('25','xq6x1')"name="xq6x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('25','xq6x2')"name="xq6x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('25','xq6w')"name="xq6w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi7"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq7s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('25','xq7s1')"name="xq7s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('25','xq7s2')"name="xq7s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('25','xq7x1')"name="xq7x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('25','xq7x2')"name="xq7x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('25','xq7w')"name="xq7w"style="float:left;width:31.5px;height:30px;text-align:center;font-size:12px;"></div>
		</div>
		<div name="hang" style="width:1004px;height:30px;float:left;border:0.5px solid black;">
			<div name="yue"style="float:left;width:49px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div  name="zhou"style="float:left;width:44px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>

		<div name="xingqi1"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq1s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('26','xq1s1')" name="xq1s1"style="box-sizing:border-box;width:15.75px;height:30px;float:left;border-right:0.5px solid black;"></div>
			<div onclick="xk('26','xq1s2')" name="xq1s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('26','xq1x1')"name="xq1x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('26','xq1x2')"name="xq1x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('26','xq1w')"name="xq1w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi2"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq2s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('26','xq2s1')"name="xq2s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('26','xq2s2')"name="xq2s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('26','xq2x1')"name="xq2x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('26','xq2x2')"name="xq2x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('26','xq2w')"name="xq2w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi3"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq3s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('26','xq3s1')"name="xq3s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('26','xq3s2')"name="xq3s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('26','xq3x1')"name="xq3x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('26','xq3x2')"name="xq3x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('26','xq3w')"name="xq3w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi4"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq4s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('26','xq4s1')" name="xq4s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('26','xq4s2')" name="xq4s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('26','xq4x1')"name="xq4x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('26','xq4x2')"name="xq4x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('26','xq4w')"name="xq4w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>		

		<div name="xingqi5"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq5s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('26','xq5s1')"name="xq5s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('26','xq5s2')"name="xq5s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('26','xq5x1')"name="xq5x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('26','xq5x2')"name="xq5x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('26','xq5w')"name="xq5w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi6"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq6s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('26','xq6s1')"name="xq6s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('26','xq6s2')"name="xq6s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('26','xq6x1')"name="xq6x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('26','xq6x2')"name="xq6x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('26','xq6w')"name="xq6w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi7"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq7s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('26','xq7s1')"name="xq7s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('26','xq7s2')"name="xq7s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('26','xq7x1')"name="xq7x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('26','xq7x2')"name="xq7x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('26','xq7w')"name="xq7w"style="float:left;width:31.5px;height:30px;text-align:center;font-size:12px;"></div>
		</div>
		<div name="hang" style="width:1004px;height:30px;float:left;border:0.5px solid black;">
			<div name="yue"style="float:left;width:49px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div  name="zhou"style="float:left;width:44px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>

	<div name="xingqi1"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq1s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('27','xq1s1')" name="xq1s1"style="box-sizing:border-box;width:15.75px;height:30px;float:left;border-right:0.5px solid black;"></div>
			<div onclick="xk('27','xq1s2')" name="xq1s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('27','xq1x1')"name="xq1x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('27','xq1x2')"name="xq1x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('27','xq1w')"name="xq1w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi2"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq2s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('27','xq2s1')"name="xq2s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('27','xq2s2')"name="xq2s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('27','xq2x1')"name="xq2x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('27','xq2x2')"name="xq2x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('27','xq2w')"name="xq2w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi3"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq3s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('27','xq3s1')"name="xq3s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('27','xq3s2')"name="xq3s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('27','xq3x1')"name="xq3x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('27','xq3x2')"name="xq3x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('27','xq3w')"name="xq3w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi4"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq4s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('27','xq4s1')" name="xq4s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('27','xq4s2')" name="xq4s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('27','xq4x1')"name="xq4x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('27','xq4x2')"name="xq4x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('27','xq4w')"name="xq4w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>		

		<div name="xingqi5"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq5s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('27','xq5s1')"name="xq5s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('27','xq5s2')"name="xq5s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('27','xq5x1')"name="xq5x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('27','xq5x2')"name="xq5x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('27','xq5w')"name="xq5w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi6"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq6s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('27','xq6s1')"name="xq6s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('27','xq6s2')"name="xq6s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('27','xq6x1')"name="xq6x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('27','xq6x2')"name="xq6x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('27','xq6w')"name="xq6w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi7"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq7s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('27','xq7s1')"name="xq7s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('27','xq7s2')"name="xq7s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('27','xq7x1')"name="xq7x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('27','xq7x2')"name="xq7x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('27','xq7w')"name="xq7w"style="float:left;width:31.5px;height:30px;text-align:center;font-size:12px;"></div>
		</div>
		<div name="hang" style="width:1004px;height:30px;float:left;border:0.5px solid black;">
			<div name="yue"style="float:left;width:49px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>
		<div  name="zhou"style="float:left;width:44px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;line-height:30px;"></div>

		<div name="xingqi1"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq1s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div  name="xq1s1"style="box-sizing:border-box;width:15.75px;height:30px;float:left;border-right:0.5px solid black;"></div>
			<div onclick="xk('28','xq1s2')" name="xq1s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq1x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('28','xq1x1')"name="xq1x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('28','xq1x2')"name="xq1x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('28','xq1w')"name="xq1w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi2"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq2s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('28','xq2s1')"name="xq2s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('28','xq2s2')"name="xq2s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq2x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('28','xq2x1')"name="xq2x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('28','xq2x2')"name="xq2x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('28','xq2w')"name="xq2w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi3"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq3s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('28','xq3s1')"name="xq3s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('28','xq3s2')"name="xq3s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq3x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('28','xq3x1')"name="xq3x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('28','xq3x2')"name="xq3x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('28','xq3w')"name="xq3w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>	

		<div name="xingqi4"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq4s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('28','xq4s1')" name="xq4s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('28','xq4s2')" name="xq4s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq4x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('28','xq4x1')"name="xq4x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('28','xq4x2')"name="xq4x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('28','xq4w')"name="xq4w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>		

		<div name="xingqi5"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq5s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('28','xq5s1')"name="xq5s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('28','xq5s2')"name="xq5s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq5x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('28','xq5x1')"name="xq5x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('28','xq5x2')"name="xq5x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('28','xq5w')"name="xq5w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi6"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq6s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('28','xq6s1')"name="xq6s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('28','xq6s2')"name="xq6s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq6x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('28','xq6x1')"name="xq6x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('28','xq6x2')"name="xq6x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('28','xq6w')"name="xq6w"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>

		<div name="xingqi7"style="line-height:30px;float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;"></div>
		<div name="xq7s"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('28','xq7s1')"name="xq7s1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('28','xq7s2')"name="xq7s2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div name="xq7x"style="float:left;width:31.5px;height:30px;border-right:0.5px solid black;text-align:center;font-size:12px;">
			<div onclick="xk('28','xq7x1')"name="xq7x1"style="box-sizing:border-box;border-right:0.5px solid black;width:15.75px;height:30px;float:left;"></div>
			<div onclick="xk('28','xq7x2')"name="xq7x2"style="width:15.75px;height:30px;float:left;"></div>
		</div>
		<div onclick="xk2('28','xq7w')"name="xq7w"style="float:left;width:31.5px;height:30px;text-align:center;font-size:12px;"></div>
		</div>
	</div>

<script>
//Demo
$.ajaxSettings.async = false;
$.get("room/get",function(data){
	 var room=document.getElementsByName("room")[0];
	 var option= document.createElement("option");
	   option.value="";
	   option.text="请选择";
	   room.appendChild(option);
	 for(var i=0;i<data.length;i++){
	   var option= document.createElement("option");
	   option.value=data[i].roomcode;
	   option.text=data[i].roomcode;
	   room.appendChild(option);
	 }	 
});

layui.use('form', function(){
  var form = layui.form;
  
 
  
  form.on('select(room)', function(data){
	 	ts1();
   		$.post("get/coursename",{roomcode:data.value},function(res){ 			
   			var kcm=document.getElementsByName("kcm")[0];
   			kcm.innerHTML="";
   			var option=document.createElement("option");	   			
 	 	 	 option.value="-1";
 	  		 option.text="请选择";
 	  		 kcm.appendChild(option);
   			for(var i=0;i<res.length;i++){
   			var option=document.createElement("option");	   			
  	 	 	 option.value=res[i].coursename;
  	  		 option.text=res[i].coursename;
  	  		 kcm.appendChild(option);
   			}
   			form.render('select');
   		});
   		
    }); 
  form.on('select(kcm)', function(data){
	  var room=document.getElementsByName("room")[0].value.trim();
      var kcm=document.getElementsByName("kcm")[0].value.trim();
 	  if(kcm=="-1"){
 		  ts1();
 	  }else{
 		  ts();
 	  }
  });
});
	$.post("kcb/search",function(res){ 
	
	var yue=document.getElementsByName("yue");
	var zhou=document.getElementsByName("zhou");
	var xingqi1=document.getElementsByName("xingqi1");
	var xingqi2=document.getElementsByName("xingqi2");
	var xingqi3=document.getElementsByName("xingqi3");
	var xingqi4=document.getElementsByName("xingqi4");
	var xingqi5=document.getElementsByName("xingqi5");
	var xingqi6=document.getElementsByName("xingqi6");
	var xingqi7=document.getElementsByName("xingqi7");
	var xq1w=document.getElementsByName("xq1w");
	var xq2w=document.getElementsByName("xq2w");
	var xq3w=document.getElementsByName("xq3w");
	var xq4w=document.getElementsByName("xq4w");
	var xq5w=document.getElementsByName("xq5w");
	var xq6w=document.getElementsByName("xq6w");
	var xq7w=document.getElementsByName("xq7w");
	for(var i=0;i<res.length;i++){
		yue[i].innerHTML=res[i].yue;
		zhou[i].innerHTML=res[i].zhou;
		xingqi1[i].innerHTML=res[i].xingqi1;
		xingqi2[i].innerHTML=res[i].xingqi2;
		xingqi3[i].innerHTML=res[i].xingqi3;
		xingqi4[i].innerHTML=res[i].xingqi4;
		xingqi5[i].innerHTML=res[i].xingqi5;
		xingqi6[i].innerHTML=res[i].xingqi6;
		xingqi7[i].innerHTML=res[i].xingqi7;
		xq1w[i].innerHTML=res[i].jieri1;
		xq2w[i].innerHTML=res[i].jieri2;
		xq3w[i].innerHTML=res[i].jieri3;
		xq4w[i].innerHTML=res[i].jieri4;
		xq5w[i].innerHTML=res[i].jieri5;
		xq6w[i].innerHTML=res[i].jieri6;
		xq7w[i].innerHTML=res[i].jieri7;
	} 
});
	function getEvent() //同时兼容ie和ff的写法
    { 
        if(document.all)  return window.event;   
        func=getEvent.caller;       
        while(func!=null){ 
            var arg0=func.arguments[0];
            if(arg0)
            {
              if((arg0.constructor==Event || arg0.constructor ==MouseEvent) || (typeof(arg0)=="object" && arg0.preventDefault && arg0.stopPropagation))
              { 
              return arg0;
              }
            }
            func=func.caller;
        }
        return null;
    } 
	 function overShow(kcm,teacher) {
		 	
		var X=0;
		var Y=0;
	 	
	 	  var event=getEvent();
	        if (navigator.appName=='Microsoft Internet Explorer') {
	            X=event.x;
	            Y=event.y;
	        }else if (navigator.appName=='Netscape') {
	           X=event.pageX;
	           Y=event.pageY;
	        } 
	  
	  var showDiv = document.getElementById('showDiv');
	  showDiv.style.left =X+"px";
	  showDiv.style.top =Y+"px";
	  showDiv.style.display = 'block';
	  var nr=kcm+"  "+"教师:"+teacher;
	  
	  showDiv.innerHTML = nr;
      
	 }
	 
	 function outHide() {
	  var showDiv = document.getElementById('showDiv');
	  showDiv.style.display = 'none';
	  
	  showDiv.innerHTML = '';
	 }
	 function ck(room,str,id,jobnumber,kcbh){
		 window.location.href="kcck?room="+room+"&str="+str+"&id="+id+"&jobnumber="+jobnumber+"&kcbh="+kcbh;
	 }
function ts(){
	var room=document.getElementsByName("room")[0].value.trim();
    var kcm=document.getElementsByName("kcm")[0].value.trim();
	 $.post("notes/search",{room:room,kcm:kcm},function(res){
		 
		var xq1s1=document.getElementsByName("xq1s1");
		
		var xq1s2=document.getElementsByName("xq1s2");
		var xq1x1=document.getElementsByName("xq1x1");
		var xq1x2=document.getElementsByName("xq1x2");
		var xq1w=document.getElementsByName("xq1w");

		var xq2s1=document.getElementsByName("xq2s1");
		var xq2s2=document.getElementsByName("xq2s2");
		var xq2x1=document.getElementsByName("xq2x1");
		var xq2x2=document.getElementsByName("xq2x2");
		var xq2w=document.getElementsByName("xq2w");

		var xq3s1=document.getElementsByName("xq3s1");
		var xq3s2=document.getElementsByName("xq3s2");
		var xq3x1=document.getElementsByName("xq3x1");
		var xq3x2=document.getElementsByName("xq3x2");
		var xq3w=document.getElementsByName("xq3w");

		var xq4s1=document.getElementsByName("xq4s1");
		var xq4s2=document.getElementsByName("xq4s2");
		var xq4x1=document.getElementsByName("xq4x1");
		var xq4x2=document.getElementsByName("xq4x2");
		var xq4w=document.getElementsByName("xq4w");

		var xq5s1=document.getElementsByName("xq5s1");
		var xq5s2=document.getElementsByName("xq5s2");
		var xq5x1=document.getElementsByName("xq5x1");
		var xq5x2=document.getElementsByName("xq5x2");
		var xq5w=document.getElementsByName("xq5w");

		var xq6s1=document.getElementsByName("xq6s1");
		var xq6s2=document.getElementsByName("xq6s2");
		var xq6x1=document.getElementsByName("xq6x1");
		var xq6x2=document.getElementsByName("xq6x2");
		var xq6w=document.getElementsByName("xq6w");

		var xq7s1=document.getElementsByName("xq7s1");
		var xq7s2=document.getElementsByName("xq7s2");
		var xq7x1=document.getElementsByName("xq7x1");
		var xq7x2=document.getElementsByName("xq7x2");
		var xq7w=document.getElementsByName("xq7w");
		for(var i=0;i<xq1s1.length;i++){
			xq1s1[i].style.background="white";
			xq1s1[i].innerHTML="";
		}
		for(var i=0;i<xq1s2.length;i++){
			xq1s2[i].style.background="white";
			xq1s2[i].innerHTML="";
		}
		for(var i=0;i<xq1x1.length;i++){
			xq1x1[i].style.background="white";
			xq1x1[i].innerHTML="";
		}
		for(var i=0;i<xq1x2.length;i++){
			xq1x2[i].style.background="white";
			xq1x2[i].innerHTML="";
		}
		for(var i=0;i<xq1w.length;i++){
			xq1w[i].style.background="white";
			xq1w[i].innerHTML="";
		}
		for(var i=0;i<xq2s1.length;i++){
			xq2s1[i].style.background="white";
			xq2s1[i].innerHTML="";
		}
		for(var i=0;i<xq2s2.length;i++){
			xq2s2[i].style.background="white";
			xq2s2[i].innerHTML="";
		}
		for(var i=0;i<xq2x1.length;i++){
			xq2x1[i].style.background="white";
			xq2s1[i].innerHTML="";
		}
		for(var i=0;i<xq2x2.length;i++){
			xq2x2[i].style.background="white";
			xq2x2[i].innerHTML="";
		}
		for(var i=0;i<xq2w.length;i++){
			xq2w[i].style.background="white";
			xq2w[i].innerHTML="";
		}
		for(var i=0;i<xq3s1.length;i++){
			xq3s1[i].style.background="white";
			xq3s1[i].innerHTML="";
		}
		for(var i=0;i<xq3s2.length;i++){
			xq3s2[i].style.background="white";
			xq3s2[i].innerHTML="";
		}
		for(var i=0;i<xq3x1.length;i++){
			xq3x1[i].style.background="white";
			xq3x1[i].innerHTML="";
		}
		for(var i=0;i<xq3x2.length;i++){
			xq3x2[i].style.background="white";
			xq3x2[i].innerHTML="";
		}
		for(var i=0;i<xq3w.length;i++){
			xq3w[i].style.background="white";
			xq3w[i].innerHTML="";
		}
		for(var i=0;i<xq4s1.length;i++){
			xq4s1[i].style.background="white";
			xq4s1[i].innerHTML="";
		}
		for(var i=0;i<xq4s2.length;i++){
			xq4s2[i].style.background="white";
			xq4s2[i].innerHTML="";
		}
		for(var i=0;i<xq4x1.length;i++){
			xq4x1[i].style.background="white";
			xq4x1[i].innerHTML="";
		}
		for(var i=0;i<xq4x2.length;i++){
			xq4x2[i].style.background="white";
			xq4x2[i].innerHTML="";
		}
		for(var i=0;i<xq4w.length;i++){
			xq4w[i].style.background="white";
			xq4w[i].innerHTML="";
		}
		for(var i=0;i<xq5s1.length;i++){
			xq5s1[i].style.background="white";
			xq5s1[i].innerHTML="";
		}
		for(var i=0;i<xq5s2.length;i++){
			xq5s2[i].style.background="white";
			xq5s2[i].innerHTML="";
		}
		for(var i=0;i<xq5x1.length;i++){
			xq5x1[i].style.background="white";
			xq5x1[i].innerHTML="";
		}
		for(var i=0;i<xq5x2.length;i++){
			xq5x2[i].style.background="white";
			xq5x2[i].innerHTML="";
		}
		for(var i=0;i<xq5w.length;i++){
			xq5w[i].style.background="white";
			xq5w[i].innerHTML="";
		}
		for(var i=0;i<xq6s1.length;i++){
			xq6s1[i].style.background="white";
			xq6s1[i].innerHTML="";
		}
		for(var i=0;i<xq6s2.length;i++){
			xq6s2[i].style.background="white";
			xq6s2[i].innerHTML="";
		}
		for(var i=0;i<xq6x1.length;i++){
			xq6x1[i].style.background="white";
			xq6s1[i].innerHTML="";
		}
		for(var i=0;i<xq6x2.length;i++){
			xq6x2[i].style.background="white";
			xq6x2[i].innerHTML="";
		}
		for(var i=0;i<xq6w.length;i++){
			xq6w[i].style.background="white";
			xq6w[i].innerHTML="";
		}
		for(var i=0;i<xq7s1.length;i++){
			xq7s1[i].style.background="white";
			xq7s1[i].innerHTML="";
		}
		for(var i=0;i<xq7s2.length;i++){
			xq7s2[i].style.background="white";
			xq7s2[i].innerHTML="";
		}
		for(var i=0;i<xq7x1.length;i++){
			xq7x1[i].style.background="white";
			xq7x1[i].innerHTML="";
		}
		for(var i=0;i<xq7x2.length;i++){
			xq7x2[i].style.background="white";
			xq7x2[i].innerHTML="";
		}
		for(var i=0;i<xq7w.length;i++){
			xq7w[i].style.background="white";
			xq7w[i].innerHTML="";
		}
		sj();
		for(var k=0;k<res.list.length;k++){
			var temp=document.getElementsByName(res.list[k].str)[res.list[k].id];
			temp.style.background="#"+res.color;
			temp.innerHTML=res.name;
			
			(function(k){  
				var teacher=res.list[k].name;
				var jobnumber=res.list[k].username;
				var kcbh=res.list[k].kcbh;
				var str=res.list[k].str;
				var id=res.list[k].id;
       		temp.onmouseover = function() {        			     
          	
       			overShow(kcm,teacher);  
          		
      			 }; 
      	           temp.onmouseout = function() {        
          		outHide();
          		
      			 }; 
					temp.onclick=function(){
						ck(room,str,id,jobnumber,kcbh);
					}

			  })(k);
		}
		
	 });
}
function ts1(){
	var kcm="";
	var room=document.getElementsByName("room")[0].value.trim();
	 $.post("notes/search2",{room:room},function(res){
		 
		var xq1s1=document.getElementsByName("xq1s1");
		
		var xq1s2=document.getElementsByName("xq1s2");
		var xq1x1=document.getElementsByName("xq1x1");
		var xq1x2=document.getElementsByName("xq1x2");
		var xq1w=document.getElementsByName("xq1w");

		var xq2s1=document.getElementsByName("xq2s1");
		var xq2s2=document.getElementsByName("xq2s2");
		var xq2x1=document.getElementsByName("xq2x1");
		var xq2x2=document.getElementsByName("xq2x2");
		var xq2w=document.getElementsByName("xq2w");

		var xq3s1=document.getElementsByName("xq3s1");
		var xq3s2=document.getElementsByName("xq3s2");
		var xq3x1=document.getElementsByName("xq3x1");
		var xq3x2=document.getElementsByName("xq3x2");
		var xq3w=document.getElementsByName("xq3w");

		var xq4s1=document.getElementsByName("xq4s1");
		var xq4s2=document.getElementsByName("xq4s2");
		var xq4x1=document.getElementsByName("xq4x1");
		var xq4x2=document.getElementsByName("xq4x2");
		var xq4w=document.getElementsByName("xq4w");

		var xq5s1=document.getElementsByName("xq5s1");
		var xq5s2=document.getElementsByName("xq5s2");
		var xq5x1=document.getElementsByName("xq5x1");
		var xq5x2=document.getElementsByName("xq5x2");
		var xq5w=document.getElementsByName("xq5w");

		var xq6s1=document.getElementsByName("xq6s1");
		var xq6s2=document.getElementsByName("xq6s2");
		var xq6x1=document.getElementsByName("xq6x1");
		var xq6x2=document.getElementsByName("xq6x2");
		var xq6w=document.getElementsByName("xq6w");

		var xq7s1=document.getElementsByName("xq7s1");
		var xq7s2=document.getElementsByName("xq7s2");
		var xq7x1=document.getElementsByName("xq7x1");
		var xq7x2=document.getElementsByName("xq7x2");
		var xq7w=document.getElementsByName("xq7w");
		for(var i=0;i<xq1s1.length;i++){
			xq1s1[i].style.background="white";
			xq1s1[i].innerHTML="";
		}
		for(var i=0;i<xq1s2.length;i++){
			xq1s2[i].style.background="white";
			xq1s2[i].innerHTML="";
		}
		for(var i=0;i<xq1x1.length;i++){
			xq1x1[i].style.background="white";
			xq1x1[i].innerHTML="";
		}
		for(var i=0;i<xq1x2.length;i++){
			xq1x2[i].style.background="white";
			xq1x2[i].innerHTML="";
		}
		for(var i=0;i<xq1w.length;i++){
			xq1w[i].style.background="white";
			xq1w[i].innerHTML="";
		}
		for(var i=0;i<xq2s1.length;i++){
			xq2s1[i].style.background="white";
			xq2s1[i].innerHTML="";
		}
		for(var i=0;i<xq2s2.length;i++){
			xq2s2[i].style.background="white";
			xq2s2[i].innerHTML="";
		}
		for(var i=0;i<xq2x1.length;i++){
			xq2x1[i].style.background="white";
			xq2x1[i].innerHTML="";
		}
		for(var i=0;i<xq2x2.length;i++){
			xq2x2[i].style.background="white";
			xq2x2[i].innerHTML="";
		}
		for(var i=0;i<xq2w.length;i++){
			xq2w[i].style.background="white";
			xq2w[i].innerHTML="";
		}
		for(var i=0;i<xq3s1.length;i++){
			xq3s1[i].style.background="white";
			xq3s1[i].innerHTML="";
		}
		for(var i=0;i<xq3s2.length;i++){
			xq3s2[i].style.background="white";
			xq3s2[i].innerHTML="";
		}
		for(var i=0;i<xq3x1.length;i++){
			xq3x1[i].style.background="white";
			xq3x1[i].innerHTML="";
		}
		for(var i=0;i<xq3x2.length;i++){
			xq3x2[i].style.background="white";
			xq3x2[i].innerHTML="";
		}
		for(var i=0;i<xq3w.length;i++){
			xq3w[i].style.background="white";
			xq3w[i].innerHTML="";
		}
		for(var i=0;i<xq4s1.length;i++){
			xq4s1[i].style.background="white";
			xq4s1[i].innerHTML="";
		}
		for(var i=0;i<xq4s2.length;i++){
			xq4s2[i].style.background="white";
			xq4s2[i].innerHTML="";
		}
		for(var i=0;i<xq4x1.length;i++){
			xq4x1[i].style.background="white";
			xq4x1[i].innerHTML="";
		}
		for(var i=0;i<xq4x2.length;i++){
			xq4x2[i].style.background="white";
			xq4x2[i].innerHTML="";
		}
		for(var i=0;i<xq4w.length;i++){
			xq4w[i].style.background="white";
			xq4w[i].innerHTML="";
		}
		for(var i=0;i<xq5s1.length;i++){
			xq5s1[i].style.background="white";
			xq5s1[i].innerHTML="";
		}
		for(var i=0;i<xq5s2.length;i++){
			xq5s2[i].style.background="white";
			xq5s2[i].innerHTML="";
		}
		for(var i=0;i<xq5x1.length;i++){
			xq5x1[i].style.background="white";
			xq5x1[i].innerHTML="";
		}
		for(var i=0;i<xq5x2.length;i++){
			xq5x2[i].style.background="white";
			xq5x2[i].innerHTML="";
		}
		for(var i=0;i<xq5w.length;i++){
			xq5w[i].style.background="white";
			xq5w[i].innerHTML="";
		}
		for(var i=0;i<xq6s1.length;i++){
			xq6s1[i].style.background="white";
			xq6s1[i].innerHTML="";
		}
		for(var i=0;i<xq6s2.length;i++){
			xq6s2[i].style.background="white";
			xq6s2[i].innerHTML="";
		}
		for(var i=0;i<xq6x1.length;i++){
			xq6x1[i].style.background="white";
			xq6x1[i].innerHTML="";
		}
		for(var i=0;i<xq6x2.length;i++){
			xq6x2[i].style.background="white";
			xq6x2[i].innerHTML="";
		}
		for(var i=0;i<xq6w.length;i++){
			xq6w[i].style.background="white";
			xq6w[i].innerHTML="";
		}
		for(var i=0;i<xq7s1.length;i++){
			xq7s1[i].style.background="white";
			xq7s1[i].innerHTML="";
		}
		for(var i=0;i<xq7s2.length;i++){
			xq7s2[i].style.background="white";
			xq7s2[i].innerHTML="";
		}
		for(var i=0;i<xq7x1.length;i++){
			xq7x1[i].style.background="white";
			xq7x1[i].innerHTML="";
		}
		for(var i=0;i<xq7x2.length;i++){
			xq7x2[i].style.background="white";
			xq7x2[i].innerHTML="";
		}
		for(var i=0;i<xq7w.length;i++){
			xq7w[i].style.background="white";
			xq7w[i].innerHTML="";
		}
		sj();
		for(var k=0;k<res.list.length;k++){
			var temp=document.getElementsByName(res.list[k].str)[res.list[k].id];
			temp.style.background="#"+res.color[k];
			temp.innerHTML=res.name[k];
			
			(function(k){  
				var teacher=res.list[k].name;
				var jobnumber=res.list[k].username;
				var kcbh=res.list[k].kcbh;
				var str=res.list[k].str;
				var id=res.list[k].id;
       		temp.onmouseover = function() {        			     
          	
       			overShow(kcm,teacher);  
          		
      			 }; 
      	           temp.onmouseout = function() {        
          		outHide();
          		
      			 }; 
					temp.onclick=function(){
						ck(room,str,id,jobnumber,kcbh);
					}

			  })(k);
		}
		
	 });
}
function sj(){
	$.post("kcb/search",function(res){ 
		
		var yue=document.getElementsByName("yue");
		var zhou=document.getElementsByName("zhou");
		var xingqi1=document.getElementsByName("xingqi1");
		var xingqi2=document.getElementsByName("xingqi2");
		var xingqi3=document.getElementsByName("xingqi3");
		var xingqi4=document.getElementsByName("xingqi4");
		var xingqi5=document.getElementsByName("xingqi5");
		var xingqi6=document.getElementsByName("xingqi6");
		var xingqi7=document.getElementsByName("xingqi7");
		var xq1w=document.getElementsByName("xq1w");
		var xq2w=document.getElementsByName("xq2w");
		var xq3w=document.getElementsByName("xq3w");
		var xq4w=document.getElementsByName("xq4w");
		var xq5w=document.getElementsByName("xq5w");
		var xq6w=document.getElementsByName("xq6w");
		var xq7w=document.getElementsByName("xq7w");
		for(var i=0;i<res.length;i++){
			yue[i].innerHTML=res[i].yue;
			zhou[i].innerHTML=res[i].zhou;
			xingqi1[i].innerHTML=res[i].xingqi1;
			xingqi2[i].innerHTML=res[i].xingqi2;
			xingqi3[i].innerHTML=res[i].xingqi3;
			xingqi4[i].innerHTML=res[i].xingqi4;
			xingqi5[i].innerHTML=res[i].xingqi5;
			xingqi6[i].innerHTML=res[i].xingqi6;
			xingqi7[i].innerHTML=res[i].xingqi7;
			xq1w[i].innerHTML=res[i].jieri1;
			xq2w[i].innerHTML=res[i].jieri2;
			xq3w[i].innerHTML=res[i].jieri3;
			xq4w[i].innerHTML=res[i].jieri4;
			xq5w[i].innerHTML=res[i].jieri5;
			xq6w[i].innerHTML=res[i].jieri6;
			xq7w[i].innerHTML=res[i].jieri7;
		} 
	});
}
function dc(){
	 var room=document.getElementsByName("room")[0].value.trim();
	 var xz=document.getElementById("xz");
	$.get("schedule/down",{roomcode:room},function(res){ 
		xz.href=res;
		xz.click();
		
	});
	
}
</script>
<div id="showDiv" style="position: absolute; background-color: orange; border: 1px solid black;"></div>
<a id="xz" style="display: none;" href="">下载</a>
</body>
</html>