<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

</head>
<body>
	<input id = "txtFruit"><button id = "btn">추가</button>
	<div id = "result">
		<span></span>
		<div>test</div>
		<div>과일 리스트</div>
		<p class="fr">사과</p>
		<p class="fr">바나나</p>
		<p class="fr">딸기</p>
				
	</div>
<script>
	//그룹이벤트

	$("#result").on("click", ".fr" ,mouseHandler);
	
	$('#btn').bind("click",function(){
		$("#result").append('<p class="fr">' + txtFruit.value + "</p>");
	});
	
	function mouseHandler(){
		$(event.target).css("color","red");	
	};


</script>
</body>
</html>