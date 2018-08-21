<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="fonts/fontCss.css">
<link rel="stylesheet" href="css/jquery.slider.css">
</head>
<body style="background:#ffffff;width:1000px;margin:0 auto" >

<div class="testSlider" style="margin-top:10px;"></div>


<script src="js/jquery.min.js"></script>
<script src="js/jquery.slider.js"></script>
<script>
window.onload = function(){
	var currentIndex = 0;
	

	$('.testSlider').slider({
		originType:'tuoyuan'
	});
	
}
</script>

</body>
</html>