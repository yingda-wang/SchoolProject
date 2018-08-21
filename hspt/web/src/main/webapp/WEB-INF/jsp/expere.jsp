<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="layui/css/layui.css"  media="all">
   <script type="text/javascript" src="js/jquery.min.js"></script>
   <script src="layui/layui.js" charset="utf-8"></script>
</head>
<body>
<script>
layui.use(['element', 'layer'], function(){
	  var element = layui.element;
	  var layer = layui.layer;
	 
	});

</script>
   
<form class="layui-form" action="tecourse/add" method="post" target="rfFrame">
 <div class="layui-collapse"  lay-filter="test">
  <div class="layui-colla-item">
    <h2 class="layui-colla-title">人员基本信息</h2>
    <div class="layui-colla-content layui-show" style="margin-left: 30%" >
    
		   <div class="layui-form-item">

    <div class="layui-form-item">
    <label class="layui-form-label">承担课程</label>
    <div class="layui-input-block">
        <div class="layui-input-inline">
      <select name="course" lay-verify="required">
        <option value="">请选择以下课程</option>
        <option value="本科生教学-中文">本科生教学-中文</option>
        <option value="本科生教学-英文">本科生教学-英文</option>
        <option value="硕士生教学-中文">硕士生教学-中文</option>
        <option value="硕士生教学-英文">硕士生教学-英文</option>
        <option value="留学生教学-英文">留学生教学-英文</option>
      </select>
    </div> 
            <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
	</div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">课程名称</label>
    <div class="layui-input-inline">
      <input type="text" name="cname" required lay-verify="required"  class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">从事年度</label>
    <div class="layui-input-inline">
      <input type="text" name="cyear" placeholder="yyyy" required lay-verify="required" class="layui-input" id="time">
    </div>
        <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">学时</label>
    <div class="layui-input-inline">
      <input type="text" name="time" required lay-verify="number" class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>

  </div>
</div>
</div>
</div>
 <div class="layui-collapse"  lay-filter="test">
  <div class="layui-colla-item">
    <h2 class="layui-colla-title">人员基本信息</h2>
    <div class="layui-colla-content layui-show" style="margin-left: 30%" >
 <div class="layui-form-item">
    <label class="layui-form-label">进修单位</label>
    <div class="layui-input-inline">
      <input type="text" name="workAddress" required lay-verify="required" class="layui-input" >
    </div>
        <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">进修科室</label>
    <div class="layui-input-inline">
      <input type="text" name="classes" required lay-verify="required" class="layui-input">
    </div>
        <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">进修内容</label>
    <div class="layui-input-inline">
      <input type="text" name="technicalText" required lay-verify="required"  class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  <div class="layui-upload">
  <label class="layui-form-label">进修证</label>
  <button type="button" class="layui-btn" id="ts" >上传图片</button>
  <div class="layui-upload-list" >
    <img class="layui-upload-img" id="demo1"style="width:5%;height:5%;margin-left:8%;">
    <p id="demoText1"></p>
  </div>
</div> 
<input type="hidden" value="" name="photo"/>  
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button  class="layui-btn" lay-submit lay-filter="formDemo" id="tj">立即提交</button>
    </div>
  </div>
</div>
</div>
</div>
<div class="layui-collapse"  lay-filter="test">
  <div class="layui-colla-item">
    <h2 class="layui-colla-title">人员基本信息</h2>
    <div class="layui-colla-content layui-show" style="margin-left: 30%" >
    <div class="layui-form-item">
    <label class="layui-form-label">工作单位</label>
    <div class="layui-input-inline">
      <input type="text" name="workAddress" required lay-verify="required" class="layui-input" >
    </div>
        <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">科室</label>
    <div class="layui-input-inline">
      <input type="text" name="classes" required lay-verify="required" class="layui-input">
    </div>
        <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">技术职称</label>
    <div class="layui-input-inline">
      <input type="text" name="technicalPosition" required lay-verify="required"  class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">开始时间</label>
    <div class="layui-input-inline">
      <input type="text" name="startTime" placeholder="yyyy-MM-dd" required lay-verify="required" class="layui-input" id="startTime">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">结束时间</label>
    <div class="layui-input-inline">
      <input type="text" name="stopTime" placeholder="yyyy-MM-dd" required lay-verify="required" class="layui-input" id="stopTime">
    </div>
    <div class="layui-form-mid layui-word-aux"><font color=red>*</font></div>
  </div> 


    </div>
    </div>
    </div>
</form>

</body>
<!-- 修改表单 -->
<iframe id="rfFrame" name="rfFrame" src="about:blank" style="display:none;"></iframe> 
<script>


layui.use('form', function(){
  var form = layui.form;
  
  //监听提交
  form.on('submit(formDemo)', function(data){
	
   layer.msg("提交成功!");
    return true;
  });
  
});
layui.use('laydate', function(){
	  var laydate = layui.laydate;
	  
	  //执行一个laydate实例
	  laydate.render({
	    elem: '#time' //指定元素
	    ,type: 'year'
	  });
	});

	  
</script>
</html>