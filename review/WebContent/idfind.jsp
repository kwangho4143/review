<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function findUsername(){
		//1.xhr 객체 생성
		var xhttp = new XMLHttpRequest();
		//2.콜백함수
		xhttp.onreadystatechange = function() {
			if (this.readyState == 4) {//응답완료
				if(this.status == 200){//정상실행
					var obj = JSON.parse(this.responseText);
					document.getElementById("result").innerHTML += obj.name; //this는 xhttp를 가르킨다		
			}
				else {
					document.getElementById("result").innerHTML = "error:"+this.status; 
				}
			}
			else{
				document.getElementById("result").innerHTML = "로딩중";
			}
		};
		//3.서버 연결준비
		
		var param = "userid=" + userid.value; 
		
		xhttp.open("post", "server/findName.jsp");//true 생략가능
		//4.요청 시작
		xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		xhttp.send(param);

		console.log("요청시작");
	}
</script>
</head>
<body>
	<input id="userid">
	<button type="button" id="btnFind" onclick="findUsername()">검색</button>
	<div id="result">결과</div>

</body>
</html>