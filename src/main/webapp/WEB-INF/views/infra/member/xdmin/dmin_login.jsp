<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>
<html>
<head>
	<title>loginForm</title>
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
	<link rel="shortcut icon" type="image/x-icon" href="https://cdn.icon-icons.com/icons2/2091/PNG/512/settings_icon_128522.png">
	<style type="text/css">
		#head{
			margin-top: 5rem;
		}
		@font-face {
		    font-family: 'Happiness-Sans-Bold';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2205@1.0/Happiness-Sans-Bold.woff2') format('woff2');
		    font-weight: 700;
		    font-style: normal;
		}
		#kakao{
			height: 40px;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 18px;
		}
		#other{
			height: 40px;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 18px;
			margin-top: 0.5rem;
		}
		#aaa{
			width: 500px;
		}
	</style>
</head>
<body>

<!-- start -->
	
		<div class="container-fluid" id="aaa">
			<div class="row text-center" id="head">
				<img src="../../resources/images/classLogo.png">
			</div>
			<div class="row justify-content-center" style="margin-top: 3rem;">
				<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="admin">
			</div>
			<div class="row justify-content-center" style="margin-top: 0.5rem;">
				<input type="password" class="form-control" id="inputPassword" placeholder="***">
			</div>
			<div class="row" style="margin-top: 1rem;">
				<div class="form-check form-switch">
				  <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDefault">
				  <label class="form-check-label" for="flexSwitchCheckDefault">Auto login</label>
				</div>
			</div>
			<div class="row justify-content-center">
				<a type="button" class="btn btn-secondary" href="/dmin_Home" id="other" style="margin-top: 1rem;">login</a>
			</div>
			<div class="text-center">
				<div class="row" id="btw">
					<a class="justify-content-center" href="/member/IdPassword" style="margin-top: 2rem;">Find ID/Password</a>
				</div>
			</div>
			<hr>
			<br>
			<p>cookie. seq:</p>
			<div class="row justify-content-center">
				<a type="button" class="btn btn-warning" href="#" id="kakao">
					<i class="fa-solid fa-comment-dots"></i> Kakao
				</a>
			</div>
			<div class="row justify-content-center">
				<a type="button" class="btn btn-success" href="#" id="other">Naver</a>
			</div>
			<div class="row justify-content-center">
				<a type="button" class="btn btn-danger" href="#" id="other">Google</a>
			</div>
			<div class="row justify-content-center">
				<a type="button" class="btn btn-primary" href="#" id="other">
					<i class="fa-brands fa-facebook-square"></i> Facebook
				</a>
			</div>
		</div>

<!-- end	 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/1d7c148109.js" crossorigin="anonymous"></script>
</body>
</html>