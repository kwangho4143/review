<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input id = "txtFruit"><button id = "btn">추가</button>
	<div id = "result">
		<p class="fr">사과</p>
		<p class="fr">바나나</p>
		<p class="fr">딸기</p>
				
	</div>
	
	
<script>
	var p =document.getElementsByClassName("fr")
		
	/*
	for(var i=0;i<p.length;i++){
		p[i].addEventListener("mouseover",mouseHandler);
	};
	*/
	result.addEventListener("click",mouseHandler);
	
	
	//버튼 클릭 이벤트
	btn.addEventListener("click",function(){
		result.innerHTML += '<p class="fr">' + txtFruit.value + "</p>";
	});
	
	
	function mouseHandler(){
		console.log(this);
		console.log(event.target);
		event.target.style.color = "red";	
	};
		
</script>
</body>
</html>