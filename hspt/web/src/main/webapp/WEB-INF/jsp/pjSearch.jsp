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
  <legend style="margin-left:40%;"><font size="5" color="blue">配件查询</font></legend>
</fieldset>
<div class="layui-btn-group demoTable">
  <button class="layui-btn" data-type="getCheckData">获取选中行数据</button>
  <button class="layui-btn" data-type="getCheckLength">获取选中数目</button>
  <button class="layui-btn" data-type="isAll">验证是否全选</button>
</div>
 <div class="demoTable" style="float:right;margin-right:5%;margin-top:5px;">
  搜索编号：
  <div class="layui-inline">
    <input  class="layui-input" name="id1"  id="demoReload1" autocomplete="off">
  </div>
  <button class="layui-btn" data-type="reload1">搜索</button>
</div>
<table class="layui-table" lay-data="{width: 100%, height:475, url:'device/pj/search', page:true, id:'idTest'}" lay-filter="demo">
  <thead>
    <tr>
      <th lay-data="{type:'checkbox', fixed: 'left'}"></th>
      <th lay-data="{field:'id', width:120, sort: true, fixed: true}">序号</th>
      <th lay-data="{field:'devicecoding', width:120}">设备编号</th>
      <th lay-data="{field:'name', width:120, sort: true}">名称</th>
      <th lay-data="{field:'number', width:120}">数量</th>
      <th lay-data="{field:'place', width:120}">位置</th>     
      <th lay-data="{field:'savetime', width:120, sort: true}">存入时间</th>
      <th lay-data="{fixed: 'right', width:178, align:'center', toolbar: '#barDemo'}"></th>
    </tr>
  </thead>
</table>
 <form class="layui-form" action="device/pjly/add" method="post" style="display:none;" id="edit">
  <div class="layui-form-item">
  <div class="layui-inline">
      <label class="layui-form-label">领用时间</label>
      <div class="layui-input-inline">
        <input class="layui-input" name="time" id="lysj" placeholder="yyyy-MM-dd" type="text">
      </div>
    </div>
    </div>
    <input type="hidden" name="pid"/>
  <div class="layui-form-item">
    <label class="layui-form-label">使用者</label>
    <div class="layui-input-inline">
      <input type="text" name="user" required  lay-verify="required" class="layui-input" >
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button  class="layui-btn" lay-submit lay-filter="formDemo" id="tj">立即提交</button>
    </div>
  </div>
</form>
<iframe id="rfFrame" name="rfFrame" src="about:blank" style="display:none;"></iframe> 

<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-xs" lay-event="edit">领用申请</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
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
    if(obj.event === 'del'){
      layer.confirm('真的删除行么', function(index){
    	  $.get("device/pj/del", { id: data.id } );
          obj.del();
          layer.close(index);
          layer.msg("删除成功!");
          table.reload('idTest', {
          	  url: 'device/pj/search'
          	  ,where: {} //设定异步数据接口的额外参数
          	  //,height: 300
          	  ,page: {
      curr: 1 //重新从第 1 页开始
    }
          	});
      });
    } else if(obj.event === 'edit'){
    	$.post("device/pj/sfly",{id:data.id}, function(result) {
  		  if(result=="no"){
  			  layer.msg("已被领用!");
  		  }else{
    	document.getElementsByName("pid")[0].value=data.id;
    	layer.open({
    		  type: 1, 
    		  area: '60%',
    		  content: $('#edit'),//这里content是一个普通的String
    		  cancel: function(index, layero){   		    	
    			  
    			}    		
    	});
    	
    	
    	
  		}
		  
		}); 
    	
    }
  });
  
  var $ = layui.$, active = {
		  reload1: function(){
		    	
		       var bh=document.getElementById("demoReload1").value.trim();
		     
		     table.reload('idTest', {
	        	  url: 'device/pj/search/js1'
	        	  ,where: {bh:bh} //设定异步数据接口的额外参数
	        	  //,height: 300
	        	  ,method:'post'  
	        	  ,page: {
  curr: 1 //重新从第 1 页开始
}
	        	});
		    },
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
	    elem: '#lysj' //指定元素
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