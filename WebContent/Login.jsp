<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="common.DBConnPool" %>    
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<style>
	body {
		background-color : rgb(100,100,100);
	}
	#LoginFrom{
		background-color : rgb(255,255,255);
	}
	#top{ width : 100%; height : 200px; text-align: center; }
	#middle { width : 100%; height : auto; min-height: 100%; padding-bottom: 200px;}
	#LoginFrom{ width : 30%; margin: auto; padding : 30px; border-radius: 5%;}
	#status{ font-size: 30px; color : white; margin-top: 20px;}
	#title{ font-size: 23px; font-weight: 500;}
	#formsubmit{text-align: right;}
</style>
<script>
	
</script>
<title>포모도로 타이머</title>
</head>
<body>
	<div id="top">
		<div id="status">로그인 하세요.</div>		
	</div>
	<div id="middle">
		<div id="LoginFrom">
			<form action="./login.do"  method="post" name="loginFrm" onsubmit="">
				<div id="title">로그인</div>
				<div class="mb-3">
				  <label for="formGroupExampleInput" class="form-label">아이디</label>
				  <input type="text" class="form-control" name="id" placeholder="아이디를 입력하세요">
				</div>
				<div class="mb-3">
				  <label for="formGroupExampleInput2" class="form-label">비밀번호</label>
				  <input type="password" class="form-control" name="pw" placeholder="비밀번호를 입력하세요">
				</div>
				<div id="formsubmit">
				<input type="submit" class="btn btn-primary btn-sm" value="로그인">
				<a href="./register.do" class="btn btn-primary btn-sm">회원가입</a>
				</div>
			</form>
		</div>
	</div>
	<div id="bottom"></div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>