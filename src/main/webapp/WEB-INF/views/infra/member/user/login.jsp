<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>
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
			font-weight: 600;
			font-size: 50px;
			line-height: 68px;
		}
		@font-face {
		    font-family: 'Happiness-Sans-Bold';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2205@1.0/Happiness-Sans-Bold.woff2') format('woff2');
		    font-weight: 700;
		    font-style: normal;
		}
		#kakao{
			width: 500px;
			height: 50px;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 18px;
			margin-top: 3rem;
			background-color:#FEE500;
		}
		#other{
			width: 500px;
			height: 50px;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 18px;
			margin-top: 0.5rem;
			background-color: rgba(217, 217, 217, 0.39);
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
				<div class="row" style="margin-top: 10rem" id="headline">
					<p>준비물까지 챙겨주는 <br>온라인 클래스</p>
				</div>
				<div class="row">
					<a type="button" class="btn btn-light" href="#" id="kakao">
						<i class="fa-solid fa-comment-dots"></i> 카카오로 3초만에 시작하기
					</a>
				</div>
				<div class="row">
					<a type="button" class="btn btn-light" href="/member/memberLoginResult" id="other">다른 방법으로 시작하기</a>
				</div>
				<div class="col-6">
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
</body>
</html>