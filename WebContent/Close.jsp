<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<%
	int time = (int)session.getAttribute("Pomodoro") * 25;
	int hour = (int)(time/60);
	int min = time%60;
%>
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
	#close{margin : 50px; width:180px; pont-size: 80px;}
</style>

</head>
<body>
<div id="top">
		<div id="status">안녕히 가세요.</div>		
	</div>
	<div id="middle">
		<img src="image/tomato.png" width="400" height="400"/>
		<div id="Scription">수고하셨습니다.</br><%=session.getAttribute("Name") %>회원님은 토마토 <%=session.getAttribute("Pomodoro") %>개를 해치웠으며</br>이는 곧 <%=hour %>시간 <%= min %>분 입니다. 대단하시네요!</div>
		<a href="./Close.do" class="btn btn-secondary btn-lg" id="close" >로그아웃</a>
		<a href="login.do" class="btn btn-secondary btn-lg" id="close" >이전 화면으로</a>
	</div>
	<div id="bottom"></div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>