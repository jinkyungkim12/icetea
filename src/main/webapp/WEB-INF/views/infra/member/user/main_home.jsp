<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>
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
		#leftList{
			color: black;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			font-size: 15px;
		}
		@font-face {
		    font-family: 'Happiness-Sans-Regular';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2205@1.0/Happiness-Sans-Regular.woff2') format('woff2');
		    font-weight: 400;
		    font-style: normal;
		}
		a:link {
		  color : black;
		}
		a:visited {
		  color : black;
		}
		.container{
			font-family: 'Happiness-Sans-Regular';
		}
		body{
			background-image: url(../../resources/images/homemain1.jpg);
			
		}
		.bg-body {
		    --bs-bg-opacity: 0.6;
		    background-color: rgba(var(--bs-body-bg-rgb),var(--bs-bg-opacity))!important;
		    --bs-body-bg-rgb: 0,0,0;
		}
	</style>

</head>
<body>

<!-- start -->

	<!-- nav bar -->
	
	<!-- <nav class="navbar navbar-expand-lg bg-white">
	  <div class="container" style="margin-top: 3rem;">
	    <a class="navbar-brand" href="/home"><img src="./image/logo.png" alt=""></a>
	    <ul class="navbar-nav">
	      <li class="nav-item justify-content-end">
	        <button type="button" class="nav-link btn btn-warining" id="logoutButton" style="background-color: #F87320;color: white;">Logout</button>
	      </li>
	     </ul>
	  </div>
	</nav> -->

	<div class="container" style="margin-top: 7rem;">
		<div class="row">
			
			<!-- 클래스 구매 -->
			
			<div class="col-6">
				<div class="shadow p-3 mb-5 bg-body rounded-4">
					<div style="padding: 50px;">
						<div class="text-center" style="color: white;"><h1><b>회원</b></h1></div>
						
						<!-- 이미지 -->
						<div class="row justify-content-center" style="margin-top: 5rem;">
							<img src="../../resources/images/main_home2.jpg" width="504" height="350">						
						</div>
						
						<!-- 버튼 -->
						<div class="row justify-content-center" style="margin-top: 3rem;">
							<a type="button" class="btn btn-light" href="/home" style="width: 70%; background-color: #FF5600; color: white; border: 0px solid transparent;"><b>입장하기</b></a>
						</div>
						
					</div>
				</div>
			</div>
			
			
			<!-- 회원 관리 -->
			
			<div class="col-6">
				<div class="shadow p-3 mb-5 bg-body rounded-4">
					<div style="padding: 50px;">
						<div class="text-center" style="color: white;"><h1><b>관리자</b></h1></div>
						
						<!-- 이미지 -->
						<div style="margin-top: 5rem;">
							<img src="../../resources/images/main_home1.jpg" width="504" height="350">					
						</div>
										
						<!-- 버튼 -->
						<div class="row justify-content-center" style="margin-top: 3rem;">
							<a type="button" class="btn btn-light" href="/member/memberLoginResult" style="width: 70%; background-color: #FF5600; color: white; border: 0px solid transparent;"><b>입장하기</b></a>
						</div>
					
					</div>
				</div>
			</div>
		</div>
	</div>
	
<!-- end	 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/1d7c148109.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</body>
</html>