<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
	function findUsername(){
		//$("#result").load("server/ajax_info.txt");
		var param = {userid:userid.value}; //"userid="+userid.value; 랑 같다.
		/*
		$.get("server/findName.jsp",param,function(data){
			result.innerHTML += data.name; //#("#rsult").html(data);
		},"JSON");
		//위아래 같이 사용 가능
		$.getJSON("server/findName.jsp",param,function(data){
			result.innerHTML += data.name; 
		});
		*/
		/*
		$.ajax("server/findName.jsp",{
			data : param, //콜백함수의 데이터와 다르다
			dataType : "json",
			method : "get",
			async : false, //동기방식 
			success : function(data){
				result.innerHTML += data.name; 
			},
			error : function(xhr,status){
				result.innerHTML += status;
			}
		});
		console.log("요청 시작");
		*/
		//위아래 같은 형식으로 사용됨
		$.ajax({
			url : "server/findName.jsp",
			data : param,
			dataType : "json",
			method : "get",
		}).done(function(data){
				result.innerHTML += data.name;
			}).fail(function(){
				result.innerHTML += status;
			}).always(function(){
				result.innerHTML += "무조건 실행";
		  	});
			
	
	
	
	}
</script>

</head>
<body>
	<input id="userid">
	<button type="button" id="btnFind" onclick="findUsername()">검색</button>
	<div id="result">결과</div>
</body>
</html>