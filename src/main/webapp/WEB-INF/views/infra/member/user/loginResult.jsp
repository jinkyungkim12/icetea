<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%-- <%@ page session="false" %> --%>
<html>
<head>
	<title>class101</title>
	<script src="https://kit.fontawesome.com/15c84217dd.js" crossorigin="anonymous"></script>
	<!-- Bootstrap CSS -->
	<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap extra CSS -->    
    <link href="/resources/xdmin/css/bootstrap/sidebars.css" rel="stylesheet">
    <!-- jquery ui CSS -->    
    <link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">    
    <!-- user css -->
    <link rel="stylesheet" href="/resources/xdmin/css/commonXdmin.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="shortcut icon" type="image/x-icon" href="https://cdn-icons-png.flaticon.com/512/477/477796.png">

	<style type="text/css">
		#headline{
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-weight: 300;
			font-size: 40px;
			line-height: 68px;
		}
		#input1{
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			font-size: 16px;
			color: gray;
		}
		#btnLogin{
			width: 500px;
			height: 40px;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 18px;
			margin-top: 3rem;
			background-color: #FF5600;
			color: white;
		}
		#kakao{
			width: 500px;
			height: 40px;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 18px;
			background-color:#FEE500;
		}
		#other{
			width: 500px;
			height: 40px;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 18px;
			margin-top: 0.5rem;
			color:white;
		}
		@font-face {
		    font-family: 'Happiness-Sans-Regular';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2205@1.0/Happiness-Sans-Regular.woff2') format('woff2');
		    font-weight: 400;
		    font-style: normal;
		}
		@font-face {
		    font-family: 'Happiness-Sans-Bold';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2205@1.0/Happiness-Sans-Bold.woff2') format('woff2');
		    font-weight: 700;
		    font-style: normal;
		}
		#btw{
			margin-top: 0.5rem;
		}
		.nav-link{
			--bs-nav-link-color: #000000;
    		--bs-nav-link-hover-color: #FF5600;
		}
	</style>
</head>
<body>

<!-- start -->
	
	<div class="row">
		<div class="col-5">
			<div class="container" style="margin-left: 10rem">
				<div class="row" style="margin-top: 5rem;">
					<div class="col">
						<nav class="navbar bg-white">
						  <div class="container">
						    <a class="navbar-brand" href="/home">
						      <img src="../../resources/images/logo.png" alt="">
						    </a>
						  </div>
						</nav>
					</div>
					<div class="col">
					<p><small>KR</small> 한국어</p> 
					</div>
				</div>
				<div class="row" style="margin-top: 5rem" id="headline">
					<p>로그인</p>
				</div>
				<div class="row" style="margin-top: 2rem" id="input1">
					<label for="exampleFormControlInput1" class="form-label">아이디</label>
 					<input type="text" class="form-control" name="id" id="id" placeholder="example" style="width: 500px;">
				</div>
				<div class="row" style="margin-top: 2rem" id="input1">
					<label for="exampleFormControlInput1" class="form-label">비밀번호</label>
 					<input type="password" class="form-control" name="password" id="password" style="width: 500px;">
				</div>
				<div class="row" style="margin-top: 1rem;">
				<div class="form-check form-switch">
				  <input class="form-check-input" type="checkbox" role="switch" id="autoLogin">
				  <label class="form-check-label" for="autoLogin">Auto login</label>
				</div>
			</div>
				<div class="row justify-content-between" id="btw">
					<div class="col">
						<a class="nav-link" href="/member/IdPassword">비밀번호를 잊으셨나요?</a>
					</div>
					<div class="col">
						<a class="nav-link" href="/member/userRegForm">회원 가입하기</a>
					</div>
				</div>
				<div class="row">
					<button type="button" class="btn" id="btnLogin">로그인</button>
				</div>
				<div class="row">
					<a type="button" class="btn btn-light" href="#" id="kakao" style="margin-top: 3rem;">
						<i class="fa-solid fa-comment-dots"></i> 카카오로 3초만에 시작하기
					</a>
				</div>
				<div class="row">
					<a type="button" class="btn btn-light" href="#" id="other" style="background-color: #2DB400;">
						<i class="fa-solid fa-n"></i> 네이버로 시작하기
					</a>
				</div>
				<div class="row">
					<a type="button" class="btn btn-light" href="#" id="other" style="background-color: #1877F2;">
						<i class="fa-brands fa-facebook-square"></i> 페이스북으로 시작하기
					</a>
				</div>
				<div class="row">
					<a type="button" class="btn btn-light" href="#" id="other" style="background-color: #EA4335;">
						<i class="fa-solid fa-g"></i> 구글로 시작하기
					</a>
				</div>
			</div>	
		</div>
		<div class="col-7">
			<img src="../../resources/images/loginBack1.jpg" class="img-fluid" alt="...">
		</div>
	</div>
		
<!-- end	 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/1d7c148109.js" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript">
	
		$("#btnLogin").on("click", function(){
			
			/* if(validation() == false) return false; */
			
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/member/loginProc"
				/* ,data : $("#formLogin").serialize() */
				,data : { "id" : $("#id").val(), "password" : $("#password").val()}
				,success: function(response) {
					if(response.rt == "success") {
						if($("#id").val() == "manager" || $("#id").val() == "strawberry"){
							location.href = "/dmin_Home";
						}else{
							location.href = "/home";
						}
					} else {
						alert("아이디 또는 비밀번호를 잘못 입력하셨습니다. 다시 입력해주세요.");
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("아이디 또는 비밀번호를 잘못 입력하셨습니다. 다시 입력해주세요.");
				}
			});
		});
	
		/* validation = function(){
			if(!checkNull($("id"), $.trim($("id").val()), "아이디를 입력해주세요!")) return false;
			if(!checkNull($("password"), $.trim($("password").val()), "비밀번호를 입력해주세요!")) return false;
		} */
	</script>
</body>
</html>