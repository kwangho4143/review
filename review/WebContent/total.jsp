<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
	$(function(){
		var t=0;
		var score=$("#score").children();
		score.each(function(){
			t = t + parseInt($(this).text());
		});
		$("#result").append(t);
	});

	

</script>
</head>
<body>
	<div id = "score">
		<div>100</div>
		<div>200</div>
		<div>300</div>
		<div>400</div>
	</div>	
	<div>합계<span id = "result"></span></div>
</body>
</html>