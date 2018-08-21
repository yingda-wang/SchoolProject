<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>人员信息录入</title>
 <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="layui/css/layui.css"  media="all">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  
</head>

<script src="layui/layui.js" charset="utf-8"></script>

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
		  layer.msg("保存成功!");
		  window.open("http://localhost:8080/web/eexperienceAdd");
		    return true;
		  });
	 
});
  
</script>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 4%;">
  <legend style="margin-left:40%;"><font color="blue" size="5">人员信息录入</font></legend>
</fieldset>
<form  class="layui-form" action="user/addInfo" method="post" >

<div class="layui-collapse"  lay-filter="test">
  <div class="layui-colla-item">
    <h2 class="layui-colla-title">人员基本信息</h2>
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
             <input name="password" lay-verify="pass" placeholder="请输入密码" autocomplete="off" class="layui-input" type="password">		    </div>
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
		      <input type="radio" name="sex" value="男" title="男">
		      <input type="radio" name="sex" value="女" title="女" checked>
		      <font color="red" size="5" style="margin-top: 2%">*</font>
		    </div>
		  </div>
		  
		  <div class="layui-form-item">
      <label class="layui-form-label" style="width: 15%;">民族</label>
      <div class="layui-input-inline" style="width: 30%;">
        <select name="nation" lay-filter="nation" lay-verify="required" lay-search="">
          <c:forEach items="${list}" var="list" varStatus="i">
           <option value="${list.nation}">"${list.nation}"</option>
          </c:forEach>
        </select>
      </div>
       <div class="layui-form-mid "><font color="red" size="5">*</font></div>
          </div>
          
           <div class="layui-form-item">
	      <label class="layui-form-label" style="width: 15%;">党员</label>
	      <div class="layui-input-inline" style="width: 30%;">
	        <select name="party" lay-verify="required" lay-search="">
	          <option value="">==>请选择<==</option>
	        <c:forEach items="${party}" var="party" varStatus="i">
	        <option value="${party.party}"> ${party.party} </option>
	        </c:forEach>
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
		        <input class="layui-input" name="graduateTime" id="test2" placeholder="yyyy-MM" >
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
    <div class="layui-colla-content" layui-show style="margin-left: 30%">
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
		        <select name="technical" lay-verify="required" lay-search="">
		          <option value="">==>请选择<==</option>
		         <c:forEach items="${technical}" var="technical" varStatus="i">
		         <option value="${technical.postition} "> ${technical.postition} </option>
		         </c:forEach>
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
		      <input type="radio" name="tutor" value="博士生" title="博士生" checked>
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
	       <div class="layui-input-block" style="width: 30%;">
		      <input name="RoleName" value="组员" title="组员" checked type="checkbox">
		      <input name="RoleName" value="组长" title="组长"  type="checkbox">
		      <input name="RoleName" value="组质控员" title="组质控员" type="checkbox">
		      </div>
		  <div class="layui-input-block" style="width: 30%;">    
		      <input name="RoleName" value="物资质控员" title="物资质控员"  type="checkbox">
		      <input name="RoleName" value="设备质控员" title="设备质控员"  type="checkbox">
		      <input name="RoleName" value="档案质控员" title="档案质控员" type="checkbox">
		    </div>
		    <div class="layui-input-block" style="width: 30%;">   
		      <input name="RoleName" value="管理员" title="管理员"  type="checkbox">
		    </div>
	          <div class="layui-form-mid "><font color="red" size="5">*</font></div> 
	      </div>	          
	        <div class="layui-form-item">
	      <label class="layui-form-label" style="width: 15%;">组</label>
	      <div class="layui-input-inline" style="width: 30%;">
	        <select name="zName" lay-filter="zu" lay-verify="required" lay-search="">
	          <option value="">==>请选择<==</option>
	          <c:forEach items="${zu}" var="zu" varStatus="i">
	           <option value="${zu.id}">${zu.zName}</option>
	          </c:forEach>
	        </select>
	      </div>
	      	 <div class="layui-form-mid "><font color="red" size="5">*</font></div> 
		</div>
		 <div class="layui-form-item">
	      <label class="layui-form-label" style="width: 15%;">岗位</label>
	      <div class="layui-input-inline" style="width: 30%;">
	        <select name="gId" id="gw" lay-verify="required" lay-search="">
	          <option value="0">==>请选择<==</option>
	        
	        </select>
	      </div>
             <div class="layui-form-mid "><font color="red" size="3">(请先选择组再选岗位)</font></div> 	      
	       </div> 
	       	       
   </div>
    </div>
    
		 <div class="layui-form-item" style="margin-left: 35%">
		    <div class="layui-input-block">
		       <button   class="layui-btn" lay-submit lay-filter="formDemo" id = "tj">保存进入下一项</button>
		      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
		    </div>
		  </div>
   
  </div>
  </form>
</body>
 <iframe id="rfFrame" name="rfFrame" src="about:blank" style="display:none;"></iframe> 

</html>