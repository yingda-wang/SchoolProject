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
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font size="5" color="blue">设备维修</font></legend>
</fieldset>
	<div class="layui-btn-group demoTable">
</div>
 
<table class="layui-table" lay-data="{ height:400, url:'device/repair/search', page:true, id:'idTest'}" lay-filter="demo">
  <thead>
    <tr>
      
      <th lay-data="{field:'id', width:80, sort: true, fixed: true}">序号</th>
      <th lay-data="{field:'devicename', width:60}">名称</th>
      <th lay-data="{field:'assetcoding', width:60}">编码</th>
      <th lay-data="{field:'devicemodel', width:60}">型号</th>
      <th lay-data="{field:'applicant', width:80}">申请人</th>
      <th lay-data="{field:'repairman', width:80}">维修人</th>     
      <th lay-data="{field:'phone', width:60}">电话</th>
      <th lay-data="{field:'applytime', width:120, sort: true}">申请时间</th>
      <th lay-data="{field:'timeofreturn', width:120, sort: true}">返回时间</th>
      <th lay-data="{field:'returnstatus', width:100, fixed: 'right'}">返回状态</th>
      <th lay-data="{fixed: 'right', width:250, align:'center', toolbar: '#barDemo'}"></th>
    </tr>
  </thead>
</table>
 <form class="layui-form" action="device/repair/fhbd" style="display:none;" id="fh" method='post'>
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">返回时间</label>
      <div class="layui-input-inline">
        <input class="layui-input" name="timeofreturn" id="fhsj" placeholder="yyyy-MM-dd" type="text">
      </div>
    </div>
  </div>
  <input type="hidden" name="id"/>
    <input type="hidden" name="assetcoding"/>
 
  <div class="layui-form-item">
    <label class="layui-form-label">返回状态</label>
    <div class="layui-input-inline">
      <input type="text" name="returnstatus" required lay-verify="required"  autocomplete="off" class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
    <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
    </div>
  </div>
</form>
<iframe id="rfFrame" name="rfFrame" src="about:blank" style="display:none;"></iframe> 

<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看备注</a>
  <a class="layui-btn layui-btn-xs" lay-event="fh">维修返回</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">撤销申请</a>
</script>
               
          
<script>
document.forms[0].target="rfFrame";

layui.use('table', function(){
  var table = layui.table;
  //监听表格复选框选择
  table.on('checkbox(demo)', function(obj){
    console.log(obj)
  });
  //监听工具条
  table.on('tool(demo)', function(obj){
    var data = obj.data;
    if(obj.event === 'detail'){
      layer.msg(data.remarks);
    } else if(obj.event === 'del'){
    	
      layer.confirm('真的撤销吗?', function(index){
    	  $.get("device/repair/del", { id: data.id,assetcoding:data.assetcoding } );
          obj.del();
          layer.close(index);
          layer.msg("撤销成功!");
          table.reload('idTest', {
          	  url: 'device/repair/search'
          	  ,where: {} //设定异步数据接口的额外参数
          	  //,height: 300
          	  ,page: {
      curr: 1 //重新从第 1 页开始
    }
          	});  
       
      });
    } else if(obj.event === 'fh'){
    	if(data.timeofreturn!=null){
    		layer.msg("已经返回!");
    	}else{
    		document.getElementsByName("id")[0].value=data.id;
        	document.getElementsByName("assetcoding")[0].value=data.assetcoding;
        	layer.open({
      		  type: 1, 
      		  area: '60%',
      		  content: $('#fh'),//这里content是一个普通的String
      		  cancel: function(index, layero){ 
      			  table.reload('idTest', {
      	        	  url: 'device/repair/search'
      	        	  ,where: {} //设定异步数据接口的额外参数
      	        	  //,height: 300
      	        	});
      			}    		
      	});
    	}   	
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
  };
  
  $('.demoTable .layui-btn').on('click', function(){
    var type = $(this).data('type');
    active[type] ? active[type].call(this) : '';
  });
});
layui.use('laydate', function(){
	  var laydate = layui.laydate;
	  
	  //执行一个laydate实例
	  laydate.render({
	    elem: '#fhsj' //指定元素
	    ,value: new Date()
	  });
	});
layui.use('form', function(){
	  var form = layui.form;
	  
	  //监听提交
	  form.on('submit(formDemo)', function(data){
		  layer.msg("提交成功!");
	    return true;
	  });
	});
</script>
</body>
</html>