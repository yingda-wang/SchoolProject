<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>人员基本信息</title>
<link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<script>
layui.use('form', function(){
	  var form = layui.form;
	  form.render();  
});
</script>

<body>
<legend style="margin-left:40%;"><font color="blue" size="5">人员信息查看</font></legend>
<br/><br/>
      <form  class="layui-form"  > 
	      <div class="layui-form-item">
	        <label class="layui-form-label"style="width: 15%;" >工作证号</label>
	         <div class="layui-input-inline" style="width: 30%;">
	        <input name="id" value="${user.id}" disabled="disabled" autocomplete="off"  class="layui-input" type="text"> 
	         </div>
            </div>
      
		  <div class="layui-form-item">
		    <label class="layui-form-label"style="width: 15%;" >姓名</label>
		    <div class="layui-input-inline" style="width: 30%;">
		      <input name="name"  value="${user.name}" disabled="disabled" autocomplete="off" class="layui-input" type="text">
		    </div>
		    <!--  <div class="layui-form-mid "><font color="red" size="5">*</font></div> -->
		  </div>
		  
		  <div class="layui-form-item">
		    <label class="layui-form-label"style="width: 15%;" >性别</label>
		    <div class="layui-input-inline" style="width: 30%;">
		      <input name="sex"  value="${user.sex}" disabled="disabled" autocomplete="off" class="layui-input" type="text">
		    </div>
		    </div>
  <div class="layui-form-item">
		    <label class="layui-form-label"style="width: 15%;" >民族</label>
		    <div class="layui-input-inline" style="width: 30%;">
		      <input name="nation" value="${user.nation}" disabled="disabled" autocomplete="off" class="layui-input" type="text">
		    </div>
           </div>
          
            <div class="layui-form-item">
		    <label class="layui-form-label"style="width: 15%;" >党员</label>
		    <div class="layui-input-inline" style="width: 30%;">
		      <input name="party"  value="${user.party}" disabled="disabled" autocomplete="off" class="layui-input" type="text">
		    </div>
          </div>
         
         <div class="layui-form-item">
		    <label class="layui-form-label" style="width: 15%;">身份证</label>
		    <div class="layui-input-inline" style="width: 30%;">
		      <input name="idcard"  value="${user.idcard}" disabled="disabled"  autocomplete="off" class="layui-input" type="text">
		    </div>
		  </div>
         
		      <div class="layui-form-item">
		    <label class="layui-form-label"style="width: 15%;" >类别</label>
		    <div class="layui-input-inline" style="width: 30%;">
		      <input name="classes"  value="${user.classes}" disabled="disabled" autocomplete="off" class="layui-input" type="text">
		    </div>
          </div>
		  
		   <div class="layui-form-item">
		      <label class="layui-form-label" style="width: 15%;">联系电话</label>
		      <div class="layui-input-inline" style="width: 30%;">
		        <input name="phone"  value="${user.phone}" disabled="disabled"  autocomplete="off" class="layui-input" type="tel">
		      </div>
		  </div>
		  
		     <div class="layui-form-item">
		    <label class="layui-form-label"style="width: 15%;" >性质</label>
		    <div class="layui-input-inline" style="width: 30%;">
		      <input name="name"  value="${user.chara}" disabled="disabled" autocomplete="off" class="layui-input" type="text">
		    </div>
	      </div>
		  
		  <div class="layui-form-item">
		      <label class="layui-form-label" style="width: 15%;">出生年月日</label>
		      <div class="layui-input-inline" style="width: 30%;">
		        <input class="layui-input" name="birth"  value="${user.birth}" disabled="disabled" id="test1" type="text">
		      </div>
		  </div>
		  
		     <div class="layui-form-item">
		    <label class="layui-form-label"style="width: 15%;" >最终学历</label>
		    <div class="layui-input-inline" style="width: 30%;">
		      <input name="degree"  value="${user.degree}" disabled="disabled" autocomplete="off" class="layui-input" type="text">
		    </div>
          </div>
		  
		   <div class="layui-form-item">
		      <label class="layui-form-label" style="width: 15%;">毕业时间</label>
		      <div class="layui-input-inline" style="width: 30%;">
		        <input class="layui-input" name="graduateTime" value="${user.graduateTime}"  disabled="disabled"  type="text">
		      </div>
		    </div>
		  
		    <div class="layui-form-item">
		      <label class="layui-form-label" style="width: 15%;">工作时间</label>
		      <div class="layui-input-inline" style="width: 30%;">
		        <input class="layui-input" name="workTime"  value="${user.workTime}"  disabled="disabled" type="text">
		      </div>
		    </div>
		  
		  
    
      
       <div class="layui-form-item">
		    <label class="layui-form-label" style="width: 15%;" >行政职务</label>
		    <div class="layui-input-inline" style="width: 30%;">
		      <input name="duty" value="${user.duty}"  disabled="disabled" autocomplete="off" class="layui-input" type="text">
		    </div>
				</div>    
		     <div class="layui-form-item">
		      <label class="layui-form-label" style="width: 15%;" >聘任时间</label>
		      <div class="layui-input-inline" style="width: 30%;" >
		        <input class="layui-input" name="engageTime" value="${user.engageTime}" disabled="disabled" id="test4" type="text">
		      </div>
		  </div>

		 
		  
		   <div class="layui-form-item">
		    <label class="layui-form-label"style="width: 15%;" >技术职务</label>
		    <div class="layui-input-inline" style="width: 30%;">
		      <input name="duty"  value="${user.duty}"  disabled="disabled" autocomplete="off" class="layui-input" type="text">
		    </div>
		      </div>
		      <div class="layui-form-item">
		      <label class="layui-form-label" style="width: 15%;">聘任时间(技术)</label>
		      <div class="layui-input-inline" style="width: 30%; ">
		        <input class="layui-input" name="technicalTime" value="${user.technicalTime}" disabled="disabled" id="test5"  type="text">
		      </div>
		    </div>
	
		    <div class="layui-form-item">
		    <label class="layui-form-label"style="width: 15%;" >教学职称</label>
		    <div class="layui-input-inline" style="width: 30%;">
		      <input name="teacherPosition"  value="${user.teacherPosition}" disabled="disabled" autocomplete="off" class="layui-input" type="text">
		    </div>
		      </div>  
		       <div class="layui-form-item">
		      <label class="layui-form-label" style="width: 15%;">聘任时间(教学)</label>
		      <div class="layui-input-inline" style="width: 30%;">
		        <input class="layui-input" value="${user.teacherTime}" disabled="disabled"  name="teacherTime" id="test6"  type="text">
		      </div>
				    </div>
	           
		       <div class="layui-form-item">
		    <label class="layui-form-label"style="width: 15%;" >导师</label>
		    <div class="layui-input-inline" style="width: 30%;">
		      <input name="Tutor"  autocomplete="off"  value="${user.tutor}" disabled="disabled" class="layui-input" type="text">
		    </div>
		  </div>
		  
		   <div class="layui-form-item">
		      <label class="layui-form-label" style="width: 15%;">聘任时间</label>
		      <div class="layui-input-inline" style="width: 30%;">
		        <input class="layui-input" name="tutorTime" value="${user.tutorTime}" disabled="disabled"  type="text">
		      </div>
		    </div>
	         
	              <div class="layui-form-item">
		    <label class="layui-form-label"style="width: 15%;" >角色</label>
		    <div class="layui-input-inline" style="width: 30%;">
		      <input name="roleName"  value="${user.roleName}" disabled="disabled" autocomplete="off" class="layui-input" type="text">
		    </div>
		      </div>	          
	          
	        <div class="layui-form-item">
	      <div class="layui-form-item">
		    <label class="layui-form-label"style="width: 15%;" >组</label>
		    <div class="layui-input-inline" style="width: 30%;">
		      <input name="zName"  autocomplete="off"  value="${user.zName}" disabled="disabled" class="layui-input" type="text">
		    </div>
		</div>
		
		
		
		  <div class="layui-form-item">
		    <label class="layui-form-label"style="width: 15%;" >岗位</label>
		    <div class="layui-input-inline" style="width: 30%;">
		      <input name="position"  autocomplete="off" value = "${user.position}" disabled="disabled" class="layui-input" type="text">
		    </div>
            </div> 	      
	       </div>
  </form>
<script>
</script>
</body>
</html>