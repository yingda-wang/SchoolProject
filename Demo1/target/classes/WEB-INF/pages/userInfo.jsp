<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>layui</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="layui/css/layui.css"  media="all">
  <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>

<script src="layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->



<script>

layui.use(['form', 'laydate'], function(){
  var form = layui.form
  
  document.getElementsByName("degree")[0].value="${userInfo.degree}";
  document.getElementsByName("post")[0].value="${userInfo.post}";
  form.render(); 
  //监听提交
  form.on('submit(demo1)', function(data){
    layer.alert(JSON.stringify(data.field), {
      title: '最终的提交信息'
    })
    return false;
  });
  
});
</script>

<body>
<form class="layui-form" action="">
  <div class="layui-form-item">
    <label class="layui-form-label">姓名：</label>
    <div class="layui-input-block">
      <input name="name" value="${userInfo.name}" autocomplete="off"  class="layui-input" type="text">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">年龄：</label>
    <div class="layui-input-block">
      <input name="age" value="${userInfo.age}" autocomplete="off" class="layui-input" type="text">
    </div>
  </div>
  
  
  <div class="layui-form-item">
    <label class="layui-form-label">学位</label>
    <div class="layui-input-block">
      <select name="degree" >
        <option value=""></option>
        <option value="博士">博士</option>
        <option value="硕士" >硕士</option>
        <option value="本科">本科</option>
        <option value="其他">其他</option>
      </select>
    </div>
  </div>
  
  <div class="layui-form-item">
    <label class="layui-form-label">学位</label>
    <div class="layui-input-block">
      <select name="post" >
            <option value="教授">教授</option>
            <option value="副教授">副教授</option>
            <option value="讲师">讲师</option>
            <option value="高级工程师">高级工程师</option>
            <option value="工程师">工程师</option>
            <option value="其他">其他</option>
      </select>
    </div>
  </div>

<div class="layui-form-item">
    <label class="layui-form-label">毕业学校：</label>
    <div class="layui-input-block">
      <input name="school" value="${userInfo.school}" autocomplete="off" class="layui-input" type="text">
    </div>
  </div>

<div class="layui-form-item">
    <label class="layui-form-label">毕业专业：</label>
    <div class="layui-input-block">
      <input name="major" value="${userInfo.major}" autocomplete="off" class="layui-input" type="text">
    </div>
  </div>
  
  <div class="layui-form-item">
    <label class="layui-form-label">来本专业工作的时间：</label>
    <div class="layui-input-block" >
      <input name="time"  value="${userInfo.time}"  autocomplete="off" class="layui-input" type="text">
    </div>
  </div>
  
  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">公司工作经历：</label>
    <div class="layui-input-block">
      <textarea  name="background"  value="${userInfo.background}"  class="layui-textarea"></textarea>
    </div>
  </div>
  
 <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">工程培训经历：</label>
    <div class="layui-input-block">
      <textarea name="qqq" value="${userInfo.qqq}" class="layui-textarea"></textarea>
    </div>
  </div>
  
 <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">横向科研经历：</label>
    <div class="layui-input-block">
      <textarea name="www" value="${userInfo.www}" class="layui-textarea"></textarea>
    </div>
  </div>
  
   <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
  
  </form>
  



<%-- <body >
<h1 align="center">教师信息录入</h1>
<div class="container">
	<div class="table-responsive">
	<form action="update.do" method="post" enctype="application/x-www-form-urlencoded" accept-charset="utf-8" onsubmit = "alert('添加成功');">
		<table  class="table table-bordered"> <!-- 紧凑型 -->
			<tr class="update"><th>姓名：</th><th><input type="text"  name="name" value="<%=name%>"/></th></tr>
			<tr class="update"><th>年龄：</th><th><input type="text" name="age"  value="<%=age%>"/></th></tr>
			<tr class="uodate"><th>学位：</th><th>
		<select name="degree">
					
            <option value="博士">博士</option>
            <option value="硕士">硕士</option>
            <option value="本科">本科</option>
            <option value="其他">其他</option>
   
		</select>
			</th></tr>
			<tr class="update"><th>职称：</th><th>
				<select name="post">
					<%if(j==0){ %>
            <option value="教授">教授</option>
            <option value="副教授">副教授</option>
            <option value="讲师">讲师</option>
            <option value="高级工程师">高级工程师</option>
            <option value="工程师">工程师</option>
            <option value="其他">其他</option>
        <%} %>
        <%if(j==1){ %>
        	<option value="副教授">副教授</option>
            <option value="教授">教授</option>            
            <option value="讲师">讲师</option>
            <option value="高级工程师">高级工程师</option>
            <option value="工程师">工程师</option>
            <option value="其他">其他</option>
        <%} %>
         <%if(j==2){ %>
            <option value="讲师">讲师</option>
         	<option value="教授">教授</option>
            <option value="副教授">副教授</option>
            <option value="高级工程师">高级工程师</option>
            <option value="工程师">工程师</option>
            <option value="其他">其他</option>
        <%} %>
        <%if(j==3){ %>
             <option value="高级工程师">高级工程师</option>
         	<option value="教授">教授</option>
            <option value="副教授">副教授</option>
             <option value="讲师">讲师</option>
             <option value="工程师">工程师</option>
             <option value="其他">其他</option>
        <%} %>
        <%if(j==4){ %>
             <option value="工程师">工程师</option>
         	<option value="教授">教授</option>
            <option value="副教授">副教授</option>
             <option value="讲师">讲师</option>
             <option value="高级工程师">高级工程师</option>
             <option value="其他">其他</option>
        <%} %>
        <%if(j==5){ %>
            <option value="其他">其他</option>
             <option value="工程师">工程师</option>
         	<option value="教授">教授</option>
            <option value="副教授">副教授</option>
             <option value="讲师">讲师</option>
             <option value="高级工程师">高级工程师</option>
             
        <%} %>
        <%if(j==6){ %>
            <option value="教授">教授</option>
            <option value="副教授">副教授</option>
            <option value="讲师">讲师</option>
            <option value="高级工程师">高级工程师</option>
            <option value="工程师">工程师</option>
            <option value="其他">其他</option>
        <%} %>
				</select>
			</th></tr>
			<tr class="update"><th>毕业学校：</th><th><input type="text" name="school" value="<%=school%>" /></th></tr>
			<tr class="update"><th>毕业专业：</th><th><input type="text" name="major" value="<%=major%>"/></th></tr>
			<tr class="update"><th>来本专业工作时间：</th><th><input type="text" name="time"  value="<%=time%>"/></th></tr>
			<tr class="update">
				<th>公司工作经历：</th>
				<th><textarea cols="100%" rows="5" name="background" ><%=background%></textarea><br/>例：1999年8月-2004年5月，在北京巨龙通信设备有限责任工资研究院、长信嘉信息技术有限公司、飓风中天科技发<br/>展有限公司担任工程师、高级工程师、培训经理。（如果没有请填无）<br/></th>
			</tr>
			<tr class="update">
				<th>工程培训经历：</th>
				<th><textarea cols="100%" rows="5" name="qqq" ><%=qqq%></textarea><br/>例：2011年7-8月，中兴通讯培训TD-SCDMA原理与设备调测，取得讲师资格；<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2012年6月，悦成移动互联网孵化基地，培训IOS移动开发技术培训；<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2014年7月，在大唐电信科技产业集团移动培训LTE工程实践创新能力。（如果没有请填无）</th>
			</tr>
			<tr class="update">
				<th>横向科研经历：</th>
				<th><textarea cols="100%" rows="5" name="www" ><%=www%></textarea><br/>例：2013年起，担任华为、三星、中国电科29所、38所等国内外知名企业委托的工程技术前瞻性或验证性项目多项，<br/>担任索为系统集成有限公司技术顾问。（如果没有请填无）<br/></th>
			</tr>		
			<tr class="update"><INPUT type="hidden" name="username" value="<%=username%>"></tr>
			<tr class="update"><th></th><th><input type="submit" value="保存"/><a href = "log.jsp"><input type="button" value="退出"/></a></th></tr>
		</table>
		</form>
	</div>
</div>
</body> --%>
</body>
</html>