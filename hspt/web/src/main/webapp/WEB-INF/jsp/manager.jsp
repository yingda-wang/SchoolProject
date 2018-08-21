<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>layout 后台大布局 - Layui</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="apple-mobile-web-app-status-bar-style" content="black"> 
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="format-detection" content="telephone=no">
  <link rel="stylesheet" href="resources/css/layui.css?t=1512984638002">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a href="javascript:;">设备基本信息管理</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;"onclick="dj(1)">设备增加</a></dd>
            <dd><a href="javascript:;"onclick="dj(2)">设备查询</a></dd>
          </dl>
        </li>
       
       <li class="layui-nav-item ">
          <a href="javascript:;">设备类别管理</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;"onclick="dj(4)">类别查询</a></dd>
          </dl>
        </li>
          <li class="layui-nav-item ">
          <a href="javascript:;">设备维修管理</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;"onclick="dj(3)">维修查询</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item ">
          <a href="javascript:;">设备校准管理</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;"onclick="dj(5)">校准查询</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item ">
          <a href="javascript:;">设备维保管理</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;"onclick="dj(6)">维保查询</a></dd>
          </dl>
        </li> 
          <li class="layui-nav-item ">
          <a href="javascript:;">设备配件管理</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;"onclick="dj(7)">配件录入</a></dd>
            <dd><a href="javascript:;"onclick="dj(8)">配件查询</a></dd>
          	<dd><a href="javascript:;"onclick="dj(9)">配件使用记录</a></dd>
          </dl>
        </li> 
         <li class="layui-nav-item ">
          <a href="javascript:;">设备申请管理</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;"onclick="dj(10)">申请</a></dd>
            <dd><a href="javascript:;"onclick="dj(11)">审批</a></dd>
          </dl>
        </li>
           <li class="layui-nav-item ">
          <a href="javascript:;">申报管理</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;"onclick="dj(12)">申请报废</a></dd>
            <dd><a href="javascript:;"onclick="dj(13)">审批</a></dd>
          </dl>
        </li>
         <li class="layui-nav-item ">
          <a href="javascript:;">设备统计</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;"onclick="dj(14)">类别统计</a></dd>
            <dd><a href="javascript:;"onclick="dj(15)">维修统计</a></dd>
          	<dd><a href="javascript:;"onclick="dj(16)">维保统计</a></dd>
          </dl>
        </li>      
      </ul>
    </div>
  </div>
  </div>
  <div class="layui-body">
<iframe id="iframe" style="width:100%;height:100%;"frameborder="0">
	
</iframe>
</div>
<script src="resources/layui.js?t=1512984638002" charset="utf-8"></script>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});
function dj(str){
	var iframe=document.getElementById("iframe");
	if(str==1){
		iframe.src="deviceAdd";
	}
	if(str==2){
		iframe.src="deviceSearch";
	}
	if(str==3){
		iframe.src="deviceRepair";
	}
	if(str==4){
		iframe.src="deviceCatSearch";
	}
	if(str==5){
		iframe.src="deviceJzSearch";
	}
	if(str==6){
		iframe.src="deviceWbSearch";
	}
	if(str==7){
		iframe.src="pjAdd";
	}
	if(str==8){
		iframe.src="pjSearch";
	}
	if(str==9){
		iframe.src="pjUseNotes";
	}
	if(str==10){
		iframe.src="deviceApplyAdd";
	}
	if(str==11){
		iframe.src="deviceApplySearch";
	}
	if(str==12){
		iframe.src="deviceSb";
	}
	if(str==13){
		iframe.src="deviceSbSearch";
	}
	if(str==14){
		iframe.src="lbtj";
	}
	if(str==15){
		iframe.src="wxtj";
	}
	if(str==16){
		iframe.src="wbtj";
	}
}
</script>
</body>
</html>