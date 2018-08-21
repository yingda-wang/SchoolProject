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
  <legend style="margin-left:40%;"><font size="5" color="blue">设备查询</font></legend>
</fieldset>
<iframe id="rfFrame" name="rfFrame" src="about:blank" style="display:none;"></iframe> 

<form class="layui-form" action="device/edit" method="post" style="display:none;" id="edit">
  
  <div class="layui-form-item">
    <label class="layui-form-label">设备名称</label>
    <div class="layui-input-inline">
      <input type="text" name="name" required lay-verify="required"  class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
    <label class="layui-form-label">品牌</label>
    <div class="layui-input-inline">
      <input type="text" name="brand" required lay-verify="required"  class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">规格</label>
    <div class="layui-input-inline">
      <input type="text" name="model" required lay-verify="required"  class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
    <label class="layui-form-label">数量</label>
    <div class="layui-input-inline">
      <input type="text" name="number" required lay-verify="required|number"  class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">位置</label>
    <div class="layui-input-inline">
      <input type="text" name="position" required lay-verify="required|sbjy"  class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
   <input type="text" name="id" style="display:none;"/>
  </div>
  
  <div class="layui-form-item" >
    <label class="layui-form-label">状态</label>
    <div class="layui-input-block"style="width:10%;">
      <select id="state" name="state">      
        <option value="完好">完好</option>
        <option value="维修">维修</option>
        <option value="调拨">调拨</option>
        <option value="报废">报废</option>
      </select>
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">组别</label>
    <div class="layui-input-block"style="width:20%;">
      <select id="zname" name="zname" lay-verify="required">      
        
      </select>
    </div>
   
  </div>
  
  <div class="layui-form-item" >
    <label class="layui-form-label">设备类别</label>
    <div class="layui-input-block"style="width:20%;">
      <select name="cname" id="cname">      
        
      </select>
    </div>
  </div>
    
  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">备注</label>
    <div class="layui-input-block">
      <textarea name="text" placeholder="请输入内容" class="layui-textarea"></textarea>
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button  class="layui-btn" lay-submit lay-filter="formDemo" id="tj">立即提交</button>
    </div>
  </div>
</form>
 
<div class="layui-btn-group demoTable">
  <button class="layui-btn" data-type="getCheckData">新增</button>
  
</div>
<div class="demoTable" style="float:right;margin-right:5%;margin-top:5px;">
  搜索状态：
  <div class="layui-inline">
    <input  class="layui-input" name="id1"  id="demoReload1" autocomplete="off">
  </div>
  <button class="layui-btn" data-type="reload1">搜索</button>
</div>
 
 <div class="demoTable" style="float:right;margin-right:5%;margin-top:5px;">
  搜索编号：
  <div class="layui-inline">
    <input  class="layui-input" name="id1"  id="demoReload" autocomplete="off">
  </div>
  <button class="layui-btn" data-type="reload">搜索</button>
</div>
 <img alt="" src="" id="showpng" style="display:none;">
<table class="layui-table" lay-data="{ height:475, url:'device/search', page:true, id:'idTest'}" lay-filter="demo" style="margin-top:100px;">
  <thead>
    <tr>
        
      <th lay-data="{field:'id', width:80, sort: true}">序号</th>
      <th lay-data="{field:'name', width:60}">名称</th>
      <th lay-data="{field:'cname', width:60}">类别</th>
      <th lay-data="{field:'zname', width:60}">组别</th>
      <th lay-data="{field:'sbid', width:100}">编号</th>
      <th lay-data="{field:'brand', width:60}">品牌</th>
      <th lay-data="{field:'model', width:60}">规格</th>
      <th lay-data="{field:'number', width:80, sort: true}">数量</th>    
      <th lay-data="{field:'position', width:60}">位置</th>
      <th lay-data="{field:'state', width:80,sort:true}">状态</th>  
      <th lay-data="{field:'time1', width:120,sort:true}">校准到期</th>        
      <th lay-data="{field:'time2', width:120,sort:true}">维保到期</th>        
      <th lay-data="{fixed: 'right', width:420, align:'center', toolbar: '#barDemo'}"></th>
    </tr>
  </thead>
</table>
<form class="layui-form" action="device/repair" id="sqwx" style="display:none;" method="post">
  <div class="layui-form-item">
    <label class="layui-form-label">资产编码</label>
    <div class="layui-input-inline">
      <input type="text" name="assetcoding" required lay-verify="required"  class="layui-btn layui-btn-disabled" readonly="readonly">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
    <label class="layui-form-label">设备名称</label>
    <div class="layui-input-inline">
      <input type="text" name="devicename" required lay-verify="required"  class="layui-btn layui-btn-disabled" readonly="readonly">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">设备型号</label>
    <div class="layui-input-inline">
      <input type="text" name="devicemodel" required lay-verify="required|sbjy"  class="layui-btn layui-btn-disabled" readonly="readonly">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">申请人</label>
    <div class="layui-input-inline">
      <input type="text" name="applicant" required lay-verify="required"  class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
    <label class="layui-form-label">维修人</label>
    <div class="layui-input-inline">
      <input type="text" name="repairman" required lay-verify="required"  class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  
  <div class="layui-form-item">
    <label class="layui-form-label">联系电话</label>
    <div class="layui-input-inline">
      <input type="text" name="phone" required lay-verify="required|phone|number"  class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  <div class="layui-form-item">
  <div class="layui-inline">
      <label class="layui-form-label">申请时间</label>
      <div class="layui-input-inline">
        <input class="layui-input" name="applytime" id="sqsj" placeholder="yyyy-MM-dd" type="text">
      </div>
    </div>
  <div class="layui-inline">
      <label class="layui-form-label">保修时间</label>
      <div class="layui-input-inline">
        <input class="layui-input" name="warrantytime" id="bxsj" placeholder="请输入整数" type="text" lay-verify="required|number">
      </div>
          <div class="layui-form-mid layui-word-aux"><font color=red>例如3*</font></div>
    </div>
    </div>
  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">备注</label>
    <div class="layui-input-block">
      <textarea name="remarks" placeholder="请输入内容" class="layui-textarea"></textarea>
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo1">立即提交</button>
    </div>
  </div>
</form>

<form id="scjzsj" class="layui-form" action="" method="post" style="display:none;">
  	<div class="layui-inline">
      <label class="layui-form-label">校准时间</label>
      <div class="layui-input-inline">
        <input class="layui-input" name="time2" id="dqjzsj" placeholder="yyyy-MM-dd" type="text">
      </div>
    </div>
   
   <div class="layui-form-item" style="margin-top:2%;">
    <label class="layui-form-label">计量情况</label>
    <div class="layui-input-inline">
      <input type="text" name="count" required lay-verify="required"  class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">备注</label>
    <div class="layui-input-block">
      <textarea name="text" placeholder="请输入内容" class="layui-textarea"></textarea>
    </div>
  </div>
  
  <input name="model" type="hidden"/>
  <input name="exportid" type="hidden"/>
  <input name="fujian" type="hidden"/>
 <div class="layui-upload" style="margin-left:5%;">
  <button type="button" class="layui-btn" id="test1" >上传图片</button>
  <div class="layui-upload-list">
    <img class="layui-upload-img" id="demo1"style="width:5%;height:5%;">
    <p id="demoText"></p>
  </div>
</div>
   <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo2" style="margin-left:15%;">立即提交</button>
    </div>
  </div>
  
  </form>
  <form id="sbwb" class="layui-form" action="device/wb/add" method="post" style="display:none;">
  	<div class="layui-inline">
      <label class="layui-form-label">入保时间</label>
      <div class="layui-input-inline">
        <input class="layui-input" name="time1" id="rbsj" placeholder="yyyy-MM-dd" type="text">
      </div>
    </div>
   
   <div class="layui-form-item" style="margin-top:2%;">
    <label class="layui-form-label">入保几年</label>
    <div class="layui-input-inline">
      <input type="text" name="time3" required lay-verify="required|number"  class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  
  
  <input name="mid" type="hidden"/>
  <input name="model" type="hidden"/>

   <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo3" style="margin-left:15%;">立即提交</button>
    </div>
  </div>
  
  </form>
 <script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">简图</a>
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="beizhu">备注</a>	
  <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
  <a class="layui-btn layui-btn-xs" lay-event="wx">维修</a>
  <a class="layui-btn layui-btn-xs" lay-event="jz">校准</a>
  <a class="layui-btn layui-btn-xs" lay-event="wb">维保</a>
</script>
               
          

<script>
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
    	document.getElementById("showpng").src=data.cardName;
    	layer.open({
    		  type: 1,
    		  title: false,
    		  closeBtn: 0,
    		  area: '70%',
    		  skin: 'layui-layer-nobg', //没有背景色
    		  shadeClose: true,
    		  content: $('#showpng')
    		});
    }else if(obj.event === 'beizhu'){
    	layer.msg(data.text);
    } 
    else if(obj.event === 'del'){
      layer.confirm('真的删除行么', function(index){
    	$.get("device/del", { id: data.id });
        obj.del();
        layer.close(index);
        layer.msg("删除成功!");
        table.reload('idTest', {
        	  url: 'device/search'
        	  ,where: {} //设定异步数据接口的额外参数
        	  //,height: 300
        	  ,page: {
    curr: 1 //重新从第 1 页开始
  }
        	});
      
      });
    } else if(obj.event === 'edit'){
    	document.getElementsByName("name")[0].value=data.name;
    	document.getElementsByName("brand")[0].value=data.brand;
    	document.getElementsByName("model")[0].value=data.model;
    	document.getElementsByName("number")[0].value=data.number;
    	document.getElementsByName("position")[0].value=data.position;
    	document.getElementsByName("text")[0].value=data.text;	
    	document.getElementsByName("id")[0].value=data.id;	
    	$("#state").val(data.state);
    	$("#cname").val(data.cname);
    	$("#zname").val(data.zname);
    	
    	layui.form.render('select');
    	
    	layer.open({
    		  type: 1, 
    		  area: '60%',
    		  content: $('#edit'),//这里content是一个普通的String
    		  cancel: function(index, layero){
    		    	layui.form.render('select');

    			  table.reload('idTest', {
    	        	  url: 'device/search'
    	        	  ,where: {} //设定异步数据接口的额外参数
    	        	  //,height: 300
    	        	});
    			}    		
    	});
    }
    else if(obj.event === 'wx'){
    	var state=data.state;
    	
    	if(state=='报废'){
    		layer.msg("该设备已经报废！");
    	}
    	if(state=='完好'){
      document.getElementsByName("devicename")[0].value=data.name;
  	  document.getElementsByName("devicemodel")[0].value=data.model;
  	  document.getElementsByName("assetcoding")[0].value=data.sbid;
		
    		layer.open({
      		  type: 1, 
      		  area: '60%',
      		  content: $('#sqwx'),//这里content是一个普通的String
      		  cancel: function(index, layero){ 
      			  table.reload('idTest', {
      	        	  url: 'device/search'
      	        	  ,where: {} //设定异步数据接口的额外参数
      	        	  //,height: 300
      	        	});
      			}    		
      	});
    	}
    }else if(obj.event === 'jz'){
    	  $.post("device/sfjz",{time1:data.time1}, function(result) {
    		  if(result=="no"){
    			  layer.msg("无需校准!");
    		  }else{
    			  document.getElementsByName("model")[1].value=data.model;
        	   	  document.getElementsByName("exportid")[0].value=data.sbid; 
        	      document.getElementById("scjzsj").action="device/jz/add";
        	    	 
        	    	 layer.open({
        	      		  type: 1, 
        	      		  area: '60%',
        	      		  height: '50%',
        	      		  content: $('#scjzsj'),//这里content是一个普通的String
        	      		  cancel: function(index, layero){    		    	
        	      			  table.reload('idTest', {
        	      	        	  url: 'device/search'
        	      	        	  ,where: {} //设定异步数据接口的额外参数
        	      	        	  //,height: 300
        	      	        	});
        	      			}    		
        	      	});
    		  }
    		  
    		}); 
    		
    	
    		
    	 
    }else if(obj.event === 'wb'){
    	 $.post("device/sfwb",{time1:data.time2}, function(result) {
   		  if(result=="no"){
   			  layer.msg("无需维保!");
   		  }else{
    	document.getElementsByName("model")[2].value=data.model;
	   	document.getElementsByName("mid")[0].value=data.sbid; 
	    layer.open({
    		  type: 1, 
    		  area: '60%',
    		  height: '50%',
    		  content: $('#sbwb'),//这里content是一个普通的String
    		  cancel: function(index, layero){    		    	
    			  table.reload('idTest', {
    	        	  url: 'device/search'
    	        	  ,where: {} //设定异步数据接口的额外参数
    	        	  //,height: 300
    	        	});
    			}    		
    	});
	    
   		 }
		  
 		}); 
	    
    }
    
    
    
    
    
  });
  
  var $ = layui.$, active = {
		  reload: function(){
		      var bh=document.getElementById("demoReload").value.trim();
		     
		     table.reload('idTest', {
	        	  url: 'device/search/js'
	        	  ,where: {bh:bh} //设定异步数据接口的额外参数
	        	  //,height: 300
	        	  ,method:'post'  
	        	  ,page: {
    curr: 1 //重新从第 1 页开始
  }
	        	});
		    },
		    reload1: function(){
		    	
			       var state=document.getElementById("demoReload1").value.trim();
			     
			     table.reload('idTest', {
		        	  url: 'device/search/js1'
		        	  ,where: {state:state} //设定异步数据接口的额外参数
		        	  //,height: 300
		        	  ,method:'post'  
		        	  ,page: {
	    curr: 1 //重新从第 1 页开始
	  }
		        	});
			    },
    getCheckData: function(){
    
      layer.open({
		  type: 2,
		  title: '新增设备页',
		  shadeClose: true,
		  shade: 0.9,
		  area: ['1300px', '90%'],
		  content: 'deviceAdd' //iframe的url
		 , cancel: function(index, layero){
      		    	
      		 
        			  table.reload('idTest', {
        	        	  url: 'device/search'
        	        	  ,where: {} 
        			  ,page:{curr:1}
        	        	});
        			}
	  }); 		
      
    }
    
    
    
  };
  
  $('.demoTable .layui-btn').on('click', function(){
    var type = $(this).data('type');
    active[type] ? active[type].call(this) : '';
  });
  
  
  
});

//Demo
document.forms[0].target="rfFrame";
document.forms[1].target="rfFrame";
document.forms[2].target="rfFrame";
document.forms[3].target="rfFrame";
layui.use('form', function(){
  var form = layui.form;
  
  $.post("deviceCat/cid", function(data) {
	  var cid=document.getElementsByName("cname")[0];
	for(var i=0;i<data.length;i++){	
		var option=document.createElement("option");
		option.value=data[i].type;
		option.text=data[i].type;	
		cid.appendChild(option);
	}
	form.render('select');
	});
  $.post("device/zid", function(data) {
	  var zid=document.getElementsByName("zname")[0];
	for(var i=0;i<data.length;i++){	
		var option=document.createElement("option");
		option.value=data[i].zname;
		option.text=data[i].zname;	
		zid.appendChild(option);
	}
	form.render('select');
	});
  
  //监听提交
  form.on('submit(formDemo)', function(data){
	
   layer.msg("提交成功!");
   
    return true;
  });
  form.on('submit(formDemo1)', function(data){
		
	   layer.msg("提交成功!");
	   
	    return true;
	  });
  form.on('submit(formDemo2)', function(data){
		
	   layer.msg("校准成功!");
	   
	    return true;
	  });
  form.on('submit(formDemo3)', function(data){
		
	   layer.msg("维保成功!");
	   
	    return true;
	  });
  form.verify({
	  sbjy: function(value, item){ //value：表单的值、item：表单的DOM对象
		  var result="";
		    $.ajax({  
	              type : "get",  
	              url : "device/bhjy/"+value.trim(),   
	              async : false,  
	              success : function(data){  
	                result=data; 
	              }  
	              });    
		    
	  	if(result=="nak"){
	  		return '已有的设备编号!';
	  	}
	  }
	});            
  
});
layui.use('laydate', function(){
	  var laydate = layui.laydate;
	  
	  //执行一个laydate实例
	  laydate.render({
	    elem: '#sqsj' //指定元素
	    ,value: new Date()
	  });
	  laydate.render({
		    elem: '#rbsj' //指定元素
		    ,value: new Date()
		  });
	  laydate.render({
		    elem: '#dqjzsj' //指定元素
		    ,value: new Date()
		  });
	});
layui.use('upload', function(){
	  var $ = layui.jquery
	  ,upload = layui.upload;
	  
	  //普通图片上传
	  var uploadInst = upload.render({
	    elem: '#test1'	   	   
	    ,url: 'device/Jz/upload/'
	    ,before: function(obj){
	      //预读本地文件示例，不支持ie8
	      obj.preview(function(index, file, result){
	        $('#demo1').attr('src', result); //图片链接（base64）
	      	
	      });
	    }
	    ,done: function(res){
	      //如果上传失败
	      if(res.code > 0){
	        return layer.msg('上传失败');
	      }
	      //上传成功  
	    
	      document.getElementsByName("fujian")[0].value=res.data[0].src;
	      
	    }
	    ,error: function(){
	      //演示失败状态，并实现重传
	      var demoText = $('#demoText');
	      demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-mini demo-reload">重试</a>');
	      demoText.find('.demo-reload').on('click', function(){
	        uploadInst.upload();
	      });
	    }
	  });});
</script>

</body>
</html>