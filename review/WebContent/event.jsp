<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button type = "button" id = "btn1">이벤트처리</button><p id = "info">상세 소개</p>
	<button type = "button" id = "btn2">이벤트처리</button><p id = "info2">상세 소개2</p>
	<button type = "button" id = "btn3">이벤트처리</button><p id = "info3">상세 소개3</p>
	
		
<script>
	//버튼 클릭 했을때 info부분을 안보이게 한다
	//이벤트 핸들러
	/*
	btn1.onclick = function(){
		info.style.display = "none";
	};*/
	//같다 밑에껄 더 선호
	//btn1.addEventListener("click",btnHandler);
	
	//btn2.addEventListener("click",btnHandler);
	
	document.body.addEventListener("click",btnHandler);
	
	function btnHandler(){
		/*
		if(event.target.id = "btn1"){
			info.style.display = "none";
		}else{
			info2.style.display = "none";
		}*/
		//같다
		event.target.nextSibling.style.display = "none";
		event.stopPropagation();//전파중지
	}
	
	
	
	
	
	
	
	
	
	

</script>
</body>
</html>