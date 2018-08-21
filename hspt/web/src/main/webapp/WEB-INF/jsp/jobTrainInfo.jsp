<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>岗位培训信息管理</title>
<meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="layui/css/layui.css"  media="all">
   <script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<script src="layui/layui.js" charset="utf-8"></script>
<!-- 修改表单 -->
<script>

layui.use(['element', 'layer'], function(){
  var element = layui.element;
  var layer = layui.layer;
 
});

layui.use('laydate', function(){
	  var laydate = layui.laydate;
	  laydate.render({
		    elem: '#test1'
		  });  
	    
}); 

//查询？
layui.use('form', function(){
	  var form = layui.form;
	  form.render();
	  $.post("user/updateSelect",function(data){
		  var zu=document.getElementById("zu");	
  		 
  		for(var i=0;i<data[3].length;i++){	
  			var option=document.createElement("option");
  			option.value=data[3][i].id;
  			option.text=data[3][i].zName;	    			
  			zu.appendChild(option); 
  		}  			  
  		form.render('select');
  		
	  });	 
	 //二级联动
	  form.on('select(zu)', function(data){	 
		  $.post("user/getGw?zId="+data.value, function(position){			 
		    	 var gw=document.getElementById("gw");		 
		    	 $("#gw").empty();
		    		for(var i=0;i<position.length;i++){	
		    			var option=document.createElement("option");
		    			option.value=position[i].id;
		    			option.text=position[i].position;	    			
		    			gw.appendChild(option);
		    		} 
		    		form.render('select');
		    });  
	}); 
	  document.forms[0].target="rfFrame";  
	  form.on('submit(formDemo)', function(data){
		  layer.msg("提交成功!");
		    return true;
		  });
	 
});
  
</script>
<!-- 查询表单  --> 
<script type="text/html" id="switchTpl">
  <input type="checkbox" name="qx" value="{{d.id}}" lay-skin="switch" lay-text="关闭|开启" lay-filter="qxDemo" {{ d.qx == '开启' ? 'checked' : '关闭' }}>
</script>
<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-xs" lay-event="edit">查看详细编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>

<script>
layui.use('table', function(){
  var table = layui.table
  ,form = layui.form;
  //方法级渲染
  table.render({
    elem: '#LAY_table_user'
    ,url: 'jobTrain/info' //controller
    ,cols: [[
      {checkbox: true, fixed: true}
      ,{field:'pId', title: '工作证号ID', width:120, sort: true, fixed: true}
      ,{field:'trainer', title: '培训人姓名',  width:120}
      ,{field:'time', title: '培训时间',  width:130}
      ,{field:'zName', title: '所属组',  width:120}
      ,{field:'position', title: '岗位', width:120}
      ,{fixed: 'right', width: 200, align:'center', toolbar: '#barDemo'}
    ]]
    ,id: 'testReload'
    ,page: true
    ,height: 515
  });
 
 
 
//监听工具条
  table.on('tool(user)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
	  var data = obj.data //获得当前行数据
    ,layEvent = obj.event; //获得 lay-event 对应的值
     if(layEvent === 'del'){
      layer.confirm('真的删除行么', function(index){
    	  $.get("jobTrain/del", { id: data.id } );
          obj.del();
          layer.close(index);
          layer.msg("删除成功!");
          table.reload('testReload', {
          	  url: 'jobTrain/info'
          	  ,where: {} //设定异步数据接口的额外参数
          	  ,page:{
          		  curr:1
          	  }	
          });
      });
    } else if(layEvent === 'edit'){	
    	    var time = data.time.substr(0,7);
    	   
     	  	 document.getElementsByName("id")[0].value=data.id;

    	   
    		document.getElementsByName("pId")[0].value=data.pId;
    	
        	document.getElementsByName("trainer")[0].value=data.trainer.trim();
         	       	
         	document.getElementsByName("time")[0].value=data.time;
         	
         	document.getElementsByName("zName")[0].value=data.zId;
         	 
        	form.render();
        	//得到组选中固定项
        	var zuValue = document.getElementsByName("zName")[0].value; 
        	 $.post("user/getGw?zId="+zuValue, function(position){			 
		    	 var gw=document.getElementById("gw");		
		    	 $("#gw").empty();
		    		for(var i=0;i<position.length;i++){	
		    			var option=document.createElement("option");
		    			option.value=position[i].id;
		    			option.text=position[i].position;	    			
		    			gw.appendChild(option);
		    		} 
		    document.getElementsByName("gId")[0].value=data.gId; 
		    		form.render('select');
		    });
        	layui.form.render('select');
        	layer.open({
        		  type: 1, 
        		  area: '80%',
        		  content: $('#edit'),//这里content是一个普通的String
        		  cancel: function(index, layero){ 
        			  table.reload('testReload', {
        	        	  url: 'jobTrain/info'
        	        	  ,where: {} 
        	        	});
        			}    		
        	});
        	
    }
    
  });
	  
  
  var $ = layui.$, active = {
		  reload: function(){		    	
  		      var demoReload=document.getElementById("demoReload").value.trim();
  		      
  		      //执行重载
 		    table.reload('testReload', {
 		    	 url: 'jobTrain/searchName'
 		    		,where: {
 			        	 searchName:demoReload 
 			        	
 			        }
 		    	 ,method :'post'
		        ,page: {
		          curr: 1 //重新从第 1 页开始
		        }
		        
		      });
		    } 

		     
    
			  ,newUser: function(){
			  	/*layer.open({
					  type: 1, 
					  area: '80%',
					  content: $('#edit'),//这里content是一个普通的String
					  cancel: function(index, layero){ 
						  table.reload('idTest', {
				        	  url: 'jobTrain'
				        	  ,where: {} 
				        	});
						}    		
				});*/
				  layer.open({
					  type: 2,
					  title: '岗位培训信息添加',
					  shadeClose: true,
					  shade: 0.8,
					  area: ['800px', '90%'],
					  content: 'jobTrain' //iframe的url
					  ,cancel: function(index, layero){ 
						  table.reload('testReload', {
				        	  url: 'jobTrain/info'
				        	  ,where: {}
						  	  ,page:{
						  		  curr:1
						  	  }
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
</script>  
  
<body>
<iframe id="rfFrame" name="rfFrame" src="about:blank" style="display:none;"></iframe> 
<!-- 修改表单 -->

<form  class="layui-form" action="jobTrain/updateDate"  style="display:none"  method="post" id="edit">

<div class="layui-collapse"  lay-filter="test">
  <div class="layui-colla-item">
    <h2 class="layui-colla-title">岗位培训基本信息</h2>
    <div class="layui-colla-content layui-show" style="margin-left: 30%" >
    
		   <div class="layui-form-item">
	        <div class="layui-form-item">
	        <label class="layui-form-label"style="width: 15%;" >工作证号</label>
	         <div class="layui-input-inline" style="width: 30%;">
	          <input name="pId" lay-verify="required|number" placeholder="请输入工作证号" autocomplete="off" class="layui-btn layui-btn-disabled layui-btn-radius" type="text" readonly="readonly" style="border-style:none">
	         </div>
	        <div class="layui-form-mid "><font color="red" size="5">*</font></div>
            </div>
           </div>  
           <div class="layui-form-item">
	        <div class="layui-form-item">
	        <label class="layui-form-label"style="width: 15%;" >培训人</label>
	         <div class="layui-input-inline" style="width: 30%;">
	        <input name="trainer" lay-verify="required" placeholder="请输入培训人" autocomplete="off" class="layui-input" type="text"> 
	         </div>
	        <div class="layui-form-mid "><font color="red" size="5">*</font></div>
            </div>
           </div>
           
            <div class="layui-form-item">
	      <label class="layui-form-label" style="width: 15%;">组</label>
	      <div class="layui-input-inline" style="width: 30%;">
	        <select name="zName" lay-filter="zu" id="zu" lay-verify="required" lay-search="">
	          <option value="">==>请选择<==</option>
	         <%--  <c:forEach items="${zu}" var="zu" varStatus="i">
	           <option value="${zu.id}">${zu.zName}</option>
	          </c:forEach> --%>
	        </select>
	      </div>
	      	 <div class="layui-form-mid "><font color="red" size="5">*</font></div> 
		</div>
		 <div class="layui-form-item">
	      <label class="layui-form-label" style="width: 15%;">岗位</label>
	      <div class="layui-input-inline" style="width: 30%;">
	        <select name="gId" id="gw" lay-verify="required" lay-search="">
	          <option value="">==>请选择<==</option>
	        
	        </select>
	      </div>
             <div class="layui-form-mid "><font color="red" size="3">(请先选择组再选岗位)</font></div> 	      
	       </div> 
           
            <div class="layui-form-item">
		      <label class="layui-form-label" style="width: 15%;">培训时间</label>
		      <div class="layui-input-inline" style="width: 30%;">
		        <input class="layui-input" name="time" id="test1" placeholder="yyyy-MM-dd" type="text">
		      </div>
		     <div class="layui-form-mid "><font color="red" size="5">*</font></div>
		  </div>
		  
		 <!--  <div class="layui-form-item">
		   <div class="layui-form-item">
		  	<button class="layui-btn" id="test3" type="button"><i class="layui-icon"></i>上传文件</button>
		   </div>
		  </div> -->
		  
		  
	</div>	  
    </div>
    
		 <div class="layui-form-item" style="margin-left: 35%">
		    <div class="layui-input-block">
		       <button class="layui-btn" lay-submit lay-filter="formDemo" id = "tj">立即提交</button>
		      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
		    </div>
		  </div>
   
  </div>
  <input type="hidden" name="id" /> 
  </form>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">岗位培训信息管理</font></legend>
</fieldset>

<!-- 查询表单 -->
<div class="layui-btn-group demoTable" >
  <button class="layui-btn" data-type="newUser">新增</button>

</div>
 <div class="demoTable" style="float:right;margin-right:5%;">
  搜索名字：
  <div class="layui-inline">
    <input class="layui-input" name="id" id="demoReload" autocomplete="off">
  </div>
  <button class="layui-btn" data-type="reload">搜索</button>
</div>
 
<table class="layui-hide" id="LAY_table_user" lay-filter="user"></table> </body>

</html>