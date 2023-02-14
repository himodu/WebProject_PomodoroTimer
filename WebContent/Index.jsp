<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<title>포모도로 타이머</title>
<style>
	body {
		background-color : rgb(100,100,100);
	}
	img {float: left; }
	#top{ width : 100%; height : 200px; text-align: center; }
	#status{ font-size: 30px; color : white; margin-top: 20px;}
	#Scription{color: white;}
	#middle{text-align: center; padding: 20px; font-size: 30px;}
	#start{margin : 50px; width:180px; pont-size: 80px;}
</style>
</head>
<body>
<div id="top">
		<div id="status">어서오세요.</div>		
	</div>
	<div id="middle">
		<img src="image/tomato.png" width="400" height="400"/>
		<div id="Scription">뽀모도로 기법(Pomodoro Technique)은 시간 관리 방법론으로 </br>1980년대 후반 '프란체스코 시릴로'(Francesco Cirillo)가 제안했다. </br>타이머를 이용해서 25분간 집중해서 일을 한 다음 5분간 휴식하는 방식이다. </br>'뽀모도로'는 이탈리아어로 토마토를 뜻한다.</div>
		<a href="./login.do" class="btn btn-secondary btn-lg" id="start" >시작하기</a>
	</div>
	<div id="bottom"></div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>