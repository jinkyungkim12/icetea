<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>
<html>
<head>
	<title>class101</title>
	<script src="https://kit.fontawesome.com/15c84217dd.js"	crossorigin="anonymous"></script>
	<!-- Bootstrap CSS -->
	<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css"	rel="stylesheet">
	<!-- Bootstrap extra CSS -->
	<link href="/resources/xdmin/css/bootstrap/sidebars.css" rel="stylesheet">
	<!-- jquery ui CSS -->
	<link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css"	rel="stylesheet">
	<!-- user css -->
	<link rel="stylesheet" href="/resources/xdmin/css/commonXdmin.css" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"	crossorigin="anonymous">
	<link rel="shortcut icon" type="image/x-icon" href="https://cdn-icons-png.flaticon.com/512/477/477796.png">

	<style type="text/css">
		#ListClass{
			color: red;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 20px;
		
		}
		#ListStore{
			color: black;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 20px;
		
		}
		@font-face {
		    font-family: 'Happiness-Sans-Bold';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2205@1.0/Happiness-Sans-Bold.woff2') format('woff2');
		    font-weight: 700;
		    font-style: normal;
		}
		@font-face {
		    font-family: 'Happiness-Sans-Regular';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2205@1.0/Happiness-Sans-Regular.woff2') format('woff2');
		    font-weight: 400;
		    font-style: normal;
		}
		#bg{
			background-color: black;
		}
		#aaa{
			color: white;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 40px;
			margin-top: 7rem;
		}
		#bbb{
			color: white;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			font-size: 25px;
			margin-top: 2rem;
		}
		#ccc{
			width: 415px;
			height: 559px;
		}
		#ddd{
			width: 500px;
			height: 50px;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 18px;
			margin-top: 3rem;
			background-color: #FF5600;
			color: white;
		}
		#eee{
			height: 70px;
			background-color: black;
		}
	</style>

</head>
<body>

	<!-- start -->
		
	<div class="container" style="margin-top: 3rem;">
		<div class="row">
			<div class="col-8">
				<nav class="navbar navbar-expand-lg bg-white">
				  <div class="container-fluid">
				    <a class="navbar-brand" href="/home">
      					<img src="../image/logo.png" alt="">
				    </a>
				    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				      <span class="navbar-toggler-icon"></span>
				    </button>
				    <div class="collapse navbar-collapse" id="navbarSupportedContent">
				      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
				        <li class="nav-item" id="">
				          <a class="nav-link" href="#" id="ListClass"><b>클래스</b></a>
				        </li>
				        <li class="nav-item">
				          <a class="nav-link" href="#" id="ListStore"><b>스토어</b></a>
				        </li>
				      </ul>
				    </div>
				      <form class="d-flex" role="search">
				        <input class="form-control me-2" type="search" placeholder="검색어를 입력하세요." aria-label="Search" style="width: 400px;">
				        <button class="btn btn-outline-dark" type="submit">Search</button>
				      </form>
				    </div>
				 </nav>  
			</div>
			<div class="col">
				<ul class="nav justify-content-end" id="leftList">
				  <li class="nav-item">
				    <a class="nav-link active" aria-current="page" href="#">크리에이터 지원</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">기업교육</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="/member/memberLogin">로그인</a>
				  </li>
				</ul>
			</div>	
		</div>
	</div>	
	
	<div class="container-fluid" id="bg">
		<div class="row text-center">
			<p id="aaa">클래스 101에<br> 가입해 주셔서 감사합니다!</p>		
		</div>
		<div class="row text-center">
			<p id="bbb">신규회원 총 32만원 쿠폰팩 증정</p>		
		</div>
		<div class="row justify-content-center">
			<img src="../image/coupon.png" alt="" id="ccc">
		</div>
		<div class="row justify-content-center">
			<button type="button" href="/home" id="ddd">지금 바로 쿠폰 발급받기</button>
		</div>
		<div id="eee"></div>
	</div>
	
<!-- end	 -->
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/1d7c148109.js" crossorigin="anonymous"></script>
</body>
</html>