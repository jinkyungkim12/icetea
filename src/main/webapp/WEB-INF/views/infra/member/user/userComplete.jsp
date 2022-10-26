<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<%@ page session="true"%>
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
			font-size: 70px;
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
			height: 30px;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 20px;
			margin-top: 3rem;
			background-color: #FF5600;
			color: white;
			verticla-align: middle;
		}
		#eee{
			height: 70px;
			background-color: black;
		}
		.nav-link{
			color: black;
		}
		.nav{
			--bs-nav-link-hover-color: #FF5600;
		}
		a{
			text-decoration: none;
		}
		.avatar-rounded-circle{
			width: 50px;
			height: 50px;
			border-radius: 100%;
		}
		#logoutButton{
			width: 7rem;
			background-color: #FF5600;
			color: white;
		}
	</style>

</head>
<body>

	<!-- start -->
		
	<%@include file="../../../common/xdmin/includeV1/loginNY.jsp"%>
	
	<div class="container-fluid" id="bg">
		<div class="row text-center">
			<p id="aaa">클래스 101에<br> 가입해 주셔서 감사합니다!</p>		
		</div>
		<div class="row text-center">
			<p id="bbb">신규회원 가입축하 10000원 쿠폰 증정</p>		
		</div>
		<div class="row justify-content-center">
			<img src="../../resources/images/coupon.png" alt="" id="ccc">
		</div>
		<div class="row justify-content-center text-center">
			<a type="button" href="/home" id="ddd">지금 바로 시작하기</a>
		</div>
		<div id="eee"></div>
	</div>
	
	
<!-- end	 -->
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/1d7c148109.js" crossorigin="anonymous"></script>
<script type="text/javascript">
		$("#logoutButton").on("click", function(){
			
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				,url: "/member/logoutProc"
				,data: {}
				,success: function(response) {
					if(response.rt == "success") {
						location.href = "/home";
					} else {
						// by pass
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		});
	</script>
	<script type="text/javascript">
	 $(document).ready(function () {
	        $(window).scroll(function () {
	            if ($(this).scrollTop() > 50) {
	                $('#back-to-top').fadeIn();
	            } else {
	                $('#back-to-top').fadeOut();
	            }
	        });
	        // scroll body to 0px on click
	        $('#back-to-top').click(function () {
	            $('#back-to-top').tooltip('hide');
	            $('body,html').animate({
	                scrollTop: 0
	            }, 100);
	            return false;
	        });


	    });
	</script>
</body>
</html>