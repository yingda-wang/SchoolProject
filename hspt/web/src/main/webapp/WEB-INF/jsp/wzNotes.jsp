<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>物资记录</title>
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
	  laydate.render({
		    elem: '#test2'
		    	,type: 'month'
		  });  
	  laydate.render({
		    elem: '#test3'
		    	,type: 'month'
		  }); 
	  laydate.render({
		    elem: '#test4'
		    	,type: 'month'
		  });  
	  laydate.render({
		    elem: '#test5'
		    	,type: 'month'
		  });  
	  laydate.render({
		    elem: '#test6'
		    	,type: 'month'
		  });  
	  laydate.render({
		    elem: '#test7'
		    	,type: 'month'
		  });  
}); 


layui.use('form', function(){
	  var form = layui.form;
	  form.render();
	  $.post("user/updateSelect",function(data){
		  var nation=document.getElementById("nation");	
		  var party=document.getElementById("party");	
		  var technical=document.getElementById("technical");	
		  var zu=document.getElementById("zu");	
		  
  		  for(var i=0;i<data[0].length;i++){	
  			var option=document.createElement("option");
  			option.value=data[0][i].nation;
  			option.text=data[0][i].nation;	    			
  			nation.appendChild(option); 
  		}
  		for(var i=0;i<data[1].length;i++){	
  			var option=document.createElement("option");
  			option.value=data[1][i].party;
  			option.text=data[1][i].party;	    			
  			party.appendChild(option); 
  		}
  		for(var i=0;i<data[2].length;i++){	
  			var option=document.createElement("option");
  			
  			option.value=data[2][i].postition;
  			
  			option.text=data[2][i].postition;	 
  			
  			technical.appendChild(option); 
  		}
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
    ,url: 'wzInfo/wzNotesInfo' //controller
    ,cols: [[
      {checkbox: true, fixed: true}
      ,{field:'wzId', title: '物资id', width:120, sort: true, fixed: true}
      ,{field:'name',title: '物资名称',  width:100}
      ,{field:'number', title: '数量',  width:80}
      ,{field:'updateTime', title: '更新日期',  width:50, }
      ,{field:'zId', title: '组ID', width:100}
      ,{field:'person', title: '办理人',  width:80}
      ,{field:'ifYes', title: '是否审批',  width:100}
      ,{field:'price', title: '物资价格',  width:100}
      ,{field:'type', title: '物资类别', width:100}
      ,{fixed: 'right', width: 200, align:'center', toolbar: '#barDemo'}
    ]]
    ,id: 'testReload'
    ,page: true
    ,height: 515
  });
 
  
 
  table.on('checkbox(user)', function(obj){
	    console.log(obj)
	  });
  form.on('switch(qxDemo)', function(obj){         
	     $.get("user/updateQx", { id: this.value,qx: obj.elem.checked } );  
	  });
//监听工具条
  table.on('tool(user)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
	  var data = obj.data //获得当前行数据
    ,layEvent = obj.event; //获得 lay-event 对应的值
     if(layEvent === 'del'){
      layer.confirm('真的删除行么', function(index){
    	  $.get("user/del", { id: data.id } );
          obj.del();
          layer.close(index);
          layer.msg("删除成功!");
          table.reload('idTest', {
          	  url: 'user/info'
          	  ,where: {} //设定异步数据接口的额外参数
          	});
      });
    } else if(layEvent === 'edit'){	
    	    var engageTime = data.engageTime.substr(0,7);
    	    var technicalTime = data.technicalTime.substr(0,7);
    	    var teacherTime = data.teacherTime.substr(0,7);
    	    var tutorTime = data.engageTime.substr(0,7);
    	    var graduateTime = data.graduateTime.substr(0,7);
    	    var workTime = data.workTime.substr(0,7);
    	   
    	    document.getElementsByName("technical")[0].value=data.technical.trim();
    		document.getElementsByName("id")[0].value=data.id;
        	document.getElementsByName("name")[0].value=data.name.trim();
         	document.getElementsByName("nation")[0].value=data.nation.trim(); 
        	document.getElementsByName("party")[0].value=data.party.trim(); 
        	document.getElementsByName("idcard")[0].value=data.idcard;
        	document.getElementsByName("classes")[0].value=data.classes.trim();	
        	document.getElementsByName("phone")[0].value=data.phone;	
        	document.getElementsByName("chara")[0].value=data.chara.trim();	
        	document.getElementsByName("birth")[0].value=data.birth;	
        	document.getElementsByName("degree")[0].value=data.degree.trim();	
        	document.getElementsByName("duty")[0].value=data.duty.trim();	
        	document.getElementsByName("graduateTime")[0].value = graduateTime;
        	document.getElementsByName("engageTime")[0].value=engageTime;	
        	document.getElementsByName("workTime")[0].value=workTime;	
        	document.getElementsByName("technicalTime")[0].value=technicalTime;	
        	document.getElementsByName("teacherPosition")[0].value=data.teacherPosition.trim();	
        	document.getElementsByName("teacherTime")[0].value=teacherTime;	
        	document.getElementsByName("tutorTime")[0].value=tutorTime;       	
        	document.getElementsByName("zName")[0].value=data.zName.substr(0,1);
        	document.getElementsByName("roleName")[0].value=data.roleName;	
        	document.getElementsByName("password")[0].value=data.password;	
        	
        	if(data.sex.trim()=="男"){
        		$("input[type=radio][name=sex][value=男]").attr("checked",'checked')
        	}else{
        		$("input[type=radio][name=sex][value=女]").attr("checked",'checked')
        	} 
        	if(data.tutor.trim()=="硕士生"){
        		$("input[type=radio][name=tutor][value=硕士生]").attr("checked",'checked')
        	}else{
        		$("input[type=radio][name=tutor][value=博士生]").attr("checked",'checked')
        	} 
        	form.render('radio');
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
        	        	  url: 'addInfo'
        	        	  ,where: {} 
        	        	});
        			}    		
        	});
        	
    }
    
  });
	  
  
  var $ = layui.$, active = {
		    reload: function(){
		    	
  		      var demoReload=document.getElementById("demoReload").value.trim(); 
 		     alert(demoReload);
 		    table.reload('testReload', {
 		    	 url: 'user/searchName'
 		    	 ,method :'post'
		        ,page: {
		          curr: 1 //重新从第 1 页开始
		        }
 		       
		        ,where: {
		        	searchName:demoReload
		        }
		      });
		    } 
 /*  reload: function(){
			  
			  alert(searchName);
		      var searchName=document.getElementById("searchName").value.trim();
		      
		     table.reload('idTest', {
	        	  url: 'user/searchName?searchName='+searchName
	        	  ,where: {} //设定异步数据接口的额外参数
	        	  //,height: 300
	        	    ,page: {
                     curr: 1 //重新从第 1 页开始
    }
	        	}); */
	        	
		      //执行重载
		     
    
			  ,newUser: function(){
			  	layer.open({
					  type: 1, 
					  area: '80%',
					  content: $('#edit'),//这里content是一个普通的String
					  cancel: function(index, layero){ 
						  table.reload('idTest', {
				        	  url: 'addInfo'
				        	  ,where: {} 
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

<form  class="layui-form" action="user/addInfo" style="display:none"  method="post" id="edit">

<div class="layui-collapse"  lay-filter="test">
  <div class="layui-colla-item">
    <h2 class="layui-colla-title">物资信息记录</h2>
    <div class="layui-colla-content layui-show" style="margin-left: 30%" >
    
		   <div class="layui-form-item">
	        <div class="layui-form-item">
	        <label class="layui-form-label"style="width: 15%;" >工作证号</label>
	         <div class="layui-input-inline" style="width: 30%;">
	        <input name="id" lay-verify="required|number" placeholder="请输入工作证号" autocomplete="off" class="layui-input" type="text"> 
	         </div>
	        <div class="layui-form-mid "><font color="red" size="5">*</font></div>
            </div>
           </div>
           
            <div class="layui-form-item">
		    <label class="layui-form-label" style="width: 15%;">密码:</label>
		    <div class="layui-input-inline" style="width: 30%;">
             <input name="password" lay-verify="pass" placeholder="请输入密码" autocomplete="off" class="layui-input" type="text">		
            </div>
		     <div class="layui-form-mid layui-word-aux ">请填写6到12位密码</div>
             </div>
      
		  <div class="layui-form-item">
		    <label class="layui-form-label"style="width: 15%;" >姓名</label>
		    <div class="layui-input-inline" style="width: 30%;">
		      <input name="name" lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input" type="text">
		    </div>
		     <div class="layui-form-mid "><font color="red" size="5">*</font></div>
		  </div>
		  
		  <div class="layui-form-item">
		    <label class="layui-form-label" style="width: 15%;">性别</label>
		    <div class="layui-input-block" style="width: 30%;">
		      <input type="radio" name="sex"  value="男" title="男" >
		      <input type="radio" name="sex"  value="女" title="女" >
		      <font color="red" size="5" style="margin-top: 2%">*</font>
		    </div>
		  </div>
		  
		  <div class="layui-form-item">
      <label class="layui-form-label" style="width: 15%;">民族</label>
      <div class="layui-input-inline" style="width: 30%;">
        <select name="nation" id="nation" lay-filter="nation" lay-verify="required" lay-search="">
         <option value="">==>请选择<==</option>
          <%-- <c:forEach items="${data[0]}" var="data[0]" varStatus="i">
           <option value="${data[0].nation}">"${data[0].nation}"</option>
          </c:forEach> --%>
        </select>
      </div>
       <div class="layui-form-mid "><font color="red" size="5">*</font></div>
          </div>
          
           <div class="layui-form-item">
	      <label class="layui-form-label" style="width: 15%;">党员</label>
	      <div class="layui-input-inline" style="width: 30%;">
	        <select name="party" id="party" lay-verify="required" lay-search="">
	          <option value="">==>请选择<==</option>
	       <%--  <c:forEach items="${sj[1]}" var="party" varStatus="i">
	        <option value="${party.party}"> ${party.party} </option>
	        </c:forEach> --%>
	        </select>
	      </div>
	       <div class="layui-form-mid "><font color="red" size="5">*</font></div>
          </div>
         
         <div class="layui-form-item">
		    <label class="layui-form-label" style="width: 15%;">身份证</label>
		    <div class="layui-input-inline" style="width: 30%;">
		      <input name="idcard" lay-verify="identity|required" placeholder="请输入身份证号" autocomplete="off" class="layui-input" type="text">
		    </div>
		     <div class="layui-form-mid "><font color="red" size="5">*</font></div>
		  </div>
         
		    <div class="layui-form-item">
		   <label class="layui-form-label" style="width: 15%;">类别</label>
	      <div class="layui-input-inline" style="width: 30%;">
	        <select name="classes"  lay-filter="classes" lay-verify="required" lay-search="" >
	          <option value="">==>请选择<==</option>
	          <option value="医生">医生</option>
	          <option value="医技">医技</option>
	          <option value="护理">护理</option>
	          <option value="科研">科研</option>
	          <option value="实验技术">实验技术</option>
	          <option value="辅助">辅助</option>
	          <option value="录入员">录入员</option>
	          <option value="护理员">护理员</option>
	        </select>
	      </div>
	       <div class="layui-form-mid "><font color="red" size="5">*</font></div>
          </div>
		  
		   <div class="layui-form-item">
		      <label class="layui-form-label" style="width: 15%;">联系电话</label>
		      <div class="layui-input-inline" style="width: 30%;">
		        <input name="phone" lay-verify="required|phone" placeholder="请输入电话号码" autocomplete="off" class="layui-input" type="tel">
		      </div>
		     <div class="layui-form-mid "><font color="red" size="5">*</font></div>
		  </div>
		  
		   <div class="layui-form-item">
		   <label class="layui-form-label" style="width: 15%;">性质</label>
	      <div class="layui-input-inline" style="width: 30%;">
	        <select name="chara" lay-verify="required" lay-search="">
	          <option value="">==>请选择<==</option>
	          <option value="在编">在编</option>
	          <option value="聘用">聘用</option>
	          <option value="临时">临时</option>
	          <option value="科聘">科聘</option>
	        </select>
	      </div>
	       <div class="layui-form-mid "><font color="red" size="5">*</font></div>
          </div>
		  
		  <div class="layui-form-item">
		      <label class="layui-form-label" style="width: 15%;">出生年月日</label>
		      <div class="layui-input-inline" style="width: 30%;">
		        <input class="layui-input" name="birth" id="test1" placeholder="yyyy-MM-dd" type="text">
		      </div>
		     <div class="layui-form-mid "><font color="red" size="5">*</font></div>
		  </div>
		  
		   <div class="layui-form-item">
		   <label class="layui-form-label" style="width: 15%;">最终学历</label>
	      <div class="layui-input-inline" style="width: 30%;">
	        <select name="degree" lay-verify="required" lay-search="">
	          <option value=""> ==>请选择<== </option>
	          <option value="博士">博士</option>
	          <option value="硕士">硕士</option>
	          <option value="本科">本科</option>
	          <option value="专科">专科</option>
	        </select>
	      </div>
	       <div class="layui-form-mid "><font color="red" size="5">*</font></div>
          </div>
		  
		   <div class="layui-form-item">
		      <label class="layui-form-label" style="width: 15%;">毕业时间</label>
		      <div class="layui-input-inline" style="width: 30%;">
		        <input class="layui-input" name="graduateTime" id="test2" placeholder="yyyy-MM" type="text">
		      </div>
		       <div class="layui-form-mid "><font color="red" size="5">*</font></div>
		    </div>
		  
		    <div class="layui-form-item">
		      <label class="layui-form-label" style="width: 15%;">工作时间</label>
		      <div class="layui-input-inline" style="width: 30%;">
		        <input class="layui-input" name="workTime" id="test3" placeholder="yyyy-MM" type="text">
		      </div>
		       <div class="layui-form-mid "><font color="red" size="5">*</font></div>
		    </div>
		  
	</div>	  
    </div>
      <div class="layui-colla-item">
    <h2 class="layui-colla-title">职务职称信息</h2>
    <div class="layui-colla-content layui-show" style="margin-left: 30%">
       <div class="layui-form-item">
		    <label class="layui-form-label" style="width: 15%;" >行政职务</label>
		    <div class="layui-input-inline" style="width: 30%;">
		      <input name="duty" lay-verify="required" placeholder="请输入职务" autocomplete="off" class="layui-input" type="text">
		    </div>
		    <div class="layui-form-mid "><font color="red" size="5">*</font></div>
		</div>    
		     <div class="layui-form-item">
		      <label class="layui-form-label" style="width: 15%;" >聘任时间</label>
		      <div class="layui-input-inline" style="width: 30%;" >
		        <input class="layui-input" name="engageTime" id="test4" placeholder="yyyy-MM" type="text">
		      </div>
		       <div class="layui-form-mid "><font color="red" size="5">*</font></div>
		  </div>

		 
		  
		  
		   <div class="layui-form-item">
		      <label class="layui-form-label" style="width: 15%;">技术职务</label>
		      <div class="layui-input-inline" style="width: 30%;">
		        <select name="technical" id="technical"  lay-filter="technical" lay-verify="required" lay-search="">
		          <option value="0">==>请选择<==</option>
		       <%--   <c:forEach items="${data[2]}" var="technical" varStatus="i">
		         <option value="${technical.postition} "> ${technical.postition} </option>
		         </c:forEach> --%>
		        </select>
		      </div>
		         <div class="layui-form-mid "><font color="red" size="5">*</font></div>
		      </div>
		      <div class="layui-form-item">
		      <label class="layui-form-label" style="width: 15%;">聘任时间(技术)</label>
		      <div class="layui-input-inline" style="width: 30%; ">
		        <input class="layui-input" name="technicalTime" id="test5" placeholder="yyyy-MM" type="text">
		      </div>
		      	    <div class="layui-form-mid "><font color="red" size="5">*</font></div>
		    </div>
	
		  <div class="layui-form-item">
		      <label class="layui-form-label" style="width: 15%;">教学职称</label>
		      <div class="layui-input-inline" style="width: 30%;">
		        <select name="teacherPosition"  lay-verify="required" lay-search="">
		          <option value="">==>请选择<==</option>
		          <option value="教授">教授</option>
		          <option value="副教授">副教授</option>
		          <option value="讲师">讲师</option>
		        </select>
		      </div>
		        <div class="layui-form-mid "><font color="red" size="5">*</font></div> 
		      </div>  
		       <div class="layui-form-item">
		      <label class="layui-form-label" style="width: 15%;">聘任时间(教学)</label>
		      <div class="layui-input-inline" style="width: 30%;">
		        <input class="layui-input" name="teacherTime" id="test6" placeholder="yyyy-MM" type="text">
		      </div>
		      		 <div class="layui-form-mid "><font color="red" size="5">*</font></div> 
		    </div>
	           
		     <div class="layui-form-item">
		    <label class="layui-form-label" style="width: 15%">导师</label>
		    <div class="layui-input-inline" style="width: 30%; ">
		      <input type="radio" name="tutor" value="硕士生" title="硕士生">
		      <input type="radio" name="tutor" value="博士生" title="博士生" >
		    </div>
		    		 <div class="layui-form-mid "><font color="red" size="5">*</font></div> 
		  </div>
		  
		   <div class="layui-form-item">
		      <label class="layui-form-label" style="width: 15%;">聘任时间</label>
		      <div class="layui-input-inline" style="width: 30%;">
		        <input class="layui-input" name="tutorTime" id="test7" placeholder="yyyy-MM" type="text">
		      </div>
		          <div class="layui-form-mid "><font color="red" size="5">*</font></div> 
		    </div>
	         
	            <div class="layui-form-item">
	      <label class="layui-form-label" style="width: 15%;">角色：</label>
	      <div class="layui-input-inline" style="width: 30%;">
	        <select name="roleName" lay-filter=""roleName"" lay-verify="required" lay-search="">
	          <option value="">==>请选择<==</option>
	          <option value="组员">组员</option>
	          <option value="质控员">质控员</option>
	          <option value="组长">组长</option>
	        </select>
	      </div>
	          <div class="layui-form-mid "><font color="red" size="5">*</font></div> 
	      </div>	          
	          
	        <div class="layui-form-item">
	      <label class="layui-form-label" style="width: 15%;">组</label>
	      <div class="layui-input-inline" style="width: 30%;">
	        <select name="zName" id="zu" lay-filter="zu" lay-verify="required" lay-search="">
	          <option value="">==>请选择<==</option>
	         <%--  <c:forEach items="${data[3]}" var="zu" varStatus="i">
	           <option value="${zu.id}">${zu.zName}</option>
	          </c:forEach> --%>
	        </select>
	      </div>
	      	 <div class="layui-form-mid "><font color="red" size="5">*</font></div> 
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
   </div>
    </div>
    
		 <div class="layui-form-item" style="margin-left: 35%">
		    <div class="layui-input-block">
		       <button type="button"  class="layui-btn" lay-submit lay-filter="formDemo" id = "tj">立即提交</button>
		      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
		    </div>
		  </div>
   
  </div>
  </form>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">物资信息记录</font></legend>
</fieldset>

<!-- 查询表单 -->
<div class="layui-btn-group demoTable" >
  <button class="layui-btn" data-type="newUser">新增</button>
  <button class="layui-btn" data-type="getCheckData">获取选中行数据</button>
</div>
 <div class="demoTable" style="float:right;margin-right:5%;">
  搜索ID：
  <div class="layui-inline">
    <input class="layui-input" name="id" id="demoReload" autocomplete="off">
  </div>
  <button class="layui-btn" data-type="reload">搜索</button>
</div>
 
<table class="layui-hide" id="LAY_table_user" lay-filter="user"></table> </body>

</html>