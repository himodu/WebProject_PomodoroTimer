<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<%
	int pomodoro = (int)session.getAttribute("Pomodoro");
	String Mode = (String)session.getAttribute("Mode");
%>
<title>포모도로 타이머</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<style>
	body {
		background-color : rgb(100,100,100);
	}
	#pause {
		display : none;
	}
	#Timer, #Scription {
		text-align: center;
		color : white;
		font-size: 90px;	
	}
	#start, #pause{
		margin: auto;
		width : 300px;
		height : 100px;
		font-size: 50px;
		color : white;
	}	
	
	#top{ width : 100%; height : 200px; text-align: center; }
	#status{ font-size: 30px; color : white;margin-top: 20px;}
	#middle { width : 100%; height : auto; min-height: 100% padding-bottom: (200px); text-align: center; }
	#bottom { width : 100%; height : 200px; text-align: center;}
	
	#close, #skip{margin-top : 50px;}
	
</style>
<script>
  	let pomodoro = <%= pomodoro %>;
  	let Name = "<%=session.getAttribute("Name") %>";
  	let Mode = "<%=session.getAttribute("Mode") %>";
  	let settime = <%=request.getAttribute("time")%>;
	let time = 0;
	let x;
	let flag=1;
	let flag2=0;
	
</script>

</head>
<body>
	<div id="top">
		<div id="status"><%=session.getAttribute("Name") %> 회원님! 현재까지 <%=pomodoro %>개의 토마토를 먹었습니다.</div>		
	</div>
	<div id="middle">
		<div id="Scription">Pomodoro 타이머</div>
		<div id="Timer"> </br> </div>
		<a href="./Timer.do" class="btn btn-secondary btn-lg" id="start" >시작</a>
		<button type="button" class="btn btn-secondary btn-lg" id="pause" onclick="Stop()">정지</button>
	</div>
	<div id="bottom">
		<button type="button" class="btn btn-secondary btn-lg" id="skip" onclick="Skip()">스킵</button>
		<a href="./Close.jsp" class="btn btn-secondary btn-lg" id="close">종료</a>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
	<script>
		Default();
		
		function Default(){
			if(Mode=="start"){
				document.getElementById("pause").style.display = 'none';
			} else if (Mode=="working"){
				document.body.style.backgroundColor = "rgb(0,255,0)";
				document.getElementById("Scription").innerHTML = "집중!";
				clearInterval(x);
				Timer(settime);
				flag=0;
			} else if (Mode=="break") {
				document.body.style.backgroundColor = "rgb(255,0,0)";
				document.getElementById("Scription" ).innerHTML = "휴식...";
				clearInterval(x);
				Timer(settime);
				flag=1;
			}
			
		}
		
		function Timer(t){
			document.getElementById("start").style.display = 'none';
			document.getElementById("pause").style.display = 'block';
			time = t;
			var min = "";
			var sec = "";
			x = setInterval(function (){
				
				min = parseInt(time/60);
				sec = time%60;
				
				document.getElementById("Timer").innerHTML = min+"분"+sec+"초";
				time--;
				
				if (time<0){
					clearInterval(x);
					if(flag==0){
						document.body.style.backgroundColor = "rgb(255,0,0)";
						document.getElementById("Timer").innerHTML = "집중끝! 휴식할 시간이에요.";
					}else{
						document.body.style.backgroundColor = "rgb(0,255,0)";
						document.getElementById("Timer").innerHTML = "휴식끝! 다시 집중할 시간이에요.";
					}
					
					document.getElementById("pause").style.display = 'none';
					document.getElementById("start").style.display = 'block';
					return;
				}
			}, 1000);
		}
		
		function Stop(){
			if(flag2==0){
				clearInterval(x);
				document.getElementById("pause").innerHTML = "재개";
				flag2=1;
			}else{
				Timer(time);
				document.getElementById("pause").innerHTML = "정지";
				flag2=0;
			}
		}
		
		function Skip(){
			time = 0;
		}
		
	</script>

</body>
</html>