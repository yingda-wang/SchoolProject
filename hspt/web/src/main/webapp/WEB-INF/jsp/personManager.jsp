<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>人事管理</title>
<meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<script src="layui/layui.js" charset="utf-8"></script>

<script>

layui.use(['element', 'layer'], function(){
  var element = layui.element;
  var layer = layui.layer;
 
});
  
</script>
<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-xs" lay-event="edit">人事调动</a>
</script> 
<script>
layui.use('table', function(){
  var table = layui.table
  ,form = layui.form;
  
//监听工具条
table.on('tool(user)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
	  var data = obj.data //获得当前行数据
    ,layEvent = obj.event; //获得 lay-event 对应的值
    if(layEvent === 'edit'){
    	    
    		document.getElementsByName("uId")[0].value=data.id;
        	document.getElementsByName("name")[0].value=data.name.trim();	
        	document.getElementsByName("phone")[0].value=data.phone;	   	
        	document.getElementsByName("zName")[0].value=data.zId; 
        	document.getElementsByName("roleName")[0].value=data.roleName; 	
        	document.getElementsByName("sex")[0].value=data.sex.trim(); 	

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
        			  table.reload('idTest', {
        	        	  url: 'user/infoDate'
        	        	  ,where: {} //设定异步数据接口的额外参数
        	        	  //,height: 300
        	        	});
        			  
        			}    		
        	});
        	
    }
    
  });
	  
  var $ = layui.$, active = {
		    reload: function(){		    	
  		      var demoReload=document.getElementById("demoReload").value.trim();  		   
 		    table.reload('idTest', {
 		    	 url: 'user/infoDateLike'
 		    		,where: {
 			        	searchName:demoReload
 			        }
 		    	 ,method :'post'
		        ,page: {
		          curr: 1 //重新从第 1 页开始
		        }  
		      });
		    } 		 
			};  
		  $('.demoTable .layui-btn').on('click', function(){
		    var type = $(this).data('type');
		    active[type] ? active[type].call(this) : '';
		  });
	  
		  
});
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
	  form.on('submit(formDemo)', function(data){ 
		  layer.msg("提交成功!");
		    return true;
		  });
});
 

</script>  
<body>
<iframe id="rfFrame" name="rfFrame" src="about:blank" style="display:none;"></iframe>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">人事管理</font></legend>
</fieldset>

 <div class="demoTable" style="float:right;margin-right:5%;">
  搜索人员姓名：
  <div class="layui-inline">
    <input class="layui-input" name="id" id="demoReload" autocomplete="off">
  </div>
  <button class="layui-btn" data-type="reload">搜索</button>
</div>
<div class="layui-inline">
 <table class="layui-table" lay-data="{url:'user/infoDate', page:true, id:'idTest'}" lay-filter="user">
  <thead>
    <tr>
      <th lay-data="{field:'id', width:120, sort: true}">工作证号</th>
      <th lay-data="{field:'name', width:120, sort: true}">用户名</th>
      <th lay-data="{field:'sex', width:120, }">性别</th>
      <th lay-data="{field:'phone', width:200,}">电话号</th>
      <th lay-data="{field:'roleName', width:200,}">角色</th>
      <th lay-data="{field:'zName', width:200,}">组</th>
      <th lay-data="{field:'position', width:200, }">岗位</th>
      <th lay-data="{ fixed: 'right',width:200, align:'center', toolbar: '#barDemo'}">人事调动</th>
    </tr>
  </thead>
</table>
</div>

<form class="layui-form" action="user/updatePersonInfo" method="post" style="display:none;"   id="edit">

		   <div class="layui-form-item">
	        <div class="layui-form-item">
	        <label class="layui-form-label"style="width: 15%;" >工作证号</label>
	         <div class="layui-input-inline" style="width: 30%;">
	        <input name="uId" lay-verify="required" readonly="readonly"  autocomplete="off" class="layui-input" type="text"> 
	         </div>
	       
            </div>
           </div>
      
		  <div class="layui-form-item">
		    <label class="layui-form-label"style="width: 15%;" >姓名</label>
		    <div class="layui-input-inline" style="width: 30%;">
		      <input name="name" lay-verify="required" readonly="readonly" placeholder="请输入姓名" autocomplete="off" class="layui-input" type="text">
		    </div>
		  </div>
		  
		  <div class="layui-form-item">
		    <label class="layui-form-label" style="width: 15%;">性别</label>
		    <div class="layui-input-inline" style="width: 30%;">
		      <input name="sex" lay-verify="required" readonly="readonly"  autocomplete="off" class="layui-input" type="text">
		    </div>
		  </div>
		  
		   <div class="layui-form-item">
		      <label class="layui-form-label" style="width: 15%;">联系电话</label>
		      <div class="layui-input-inline" style="width: 30%;">
		        <input name="phone" lay-verify="required|phone" readonly="readonly" placeholder="请输入电话号码" autocomplete="off" class="layui-input" type="tel">
		      </div>
		     <div class="layui-form-mid "><font color="red" size="5">*</font></div>
		  </div>
		  
		  <div class="layui-form-item">
		    <label class="layui-form-label"style="width: 15%;" >角色</label>
		    <div class="layui-input-inline" style="width: 30%;">
		      <input name="roleName" lay-verify="required"  placeholder="请输入角色" autocomplete="off" class="layui-input" type="text">
		    </div>
		  </div>
		  
		    <div class="layui-form-item">
	      <label class="layui-form-label" style="width: 15%;">组</label>
	      <div class="layui-input-inline" style="width: 30%;">
	        <select name="zName" id="zu" lay-filter="zu" lay-verify="required" lay-search="">
	          <option value="">==>请选择<==</option>
	        </select>
	      </div>
		</div>
		
		
		
		 <div class="layui-form-item">
	      <label class="layui-form-label" style="width: 15%;">岗位</label>
	      <div class="layui-input-inline" style="width: 30%;">
	        <select name="gId" id="gw" lay-filter="gId" lay-verify="required" lay-search="">
	          <option value="">==>请选择<==</option>
	        
	        </select>
	      </div>
             <div class="layui-form-mid "><font color="red" size="3">(请先选择组再选岗位)</font></div> 	      
	       </div> 
	       
           <div class="layui-form-item" style="margin-left: 35%">
		    <div class="layui-input-block">
		       <button  class="layui-btn" lay-submit lay-filter="formDemo" id = "tj">立即提交</button>
		      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
		    </div>
		  </div>
		  
</form>
</body>
<script type="text/javascript">
document.forms[0].target="rfFrame"; 
</script>

</html>