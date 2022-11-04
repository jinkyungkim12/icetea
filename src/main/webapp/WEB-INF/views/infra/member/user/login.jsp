<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

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
	<form name="form">
		<input type="hidden" name="name"/>
		<input type="hidden" name="snsId"/>
		<input type="hidden" name="phone"/>
		<input type="hidden" name="email"/>
		<input type="hidden" name="gender"/>
		<input type="hidden" name="dob"/>
		<input type="hidden" name="snsImg"/>
		<input type="hidden" name="token"/>
	</form>
	
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
					<button type="button" class="btn btn-light" id="kakao">
						<i class="fa-solid fa-comment-dots"></i> 카카오로 3초만에 시작하기
					</button>
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
	<script src="https://code.jquery.com/jquery-3.6.0.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script type="text/javascript">
		Kakao.init('59b27a41bdecd470671d4f9be366d1b3'); // test 용
    	console.log(Kakao.isInitialized());
/*     	Kakao.init('ec2655da82c3779d622f0aff959060e6');
    	console.log(Kakao.isInitialized()); */
    	
    	$("#kakao").on("click", function() {
    		/* Kakao.Auth.authorize({
   		      redirectUri: 'http://localhost:8080/member/kakaoCallback',
   		    }); */
    		
    		Kakao.Auth.login({
   		      success: function (response) {
   		        Kakao.API.request({
   		          url: '/v2/user/me',
   		          success: function (response) {
   		        	  
   		        	  var accessToken = Kakao.Auth.getAccessToken();
   		        	  Kakao.Auth.setAccessToken(accessToken);

   		        	  var account = response.kakao_account;
   		        	  
   		        	  console.log(response)
   		        	  console.log("email : " + account.email);
   		        	  console.log("name : " + account.name);
   		        	  console.log("nickname : " + account.profile.nickname);
   		        	  console.log("picture : " + account.profile.thumbnail_image_url);
   		        	  console.log("picture : " + account.gender);
   		        	  console.log("picture : " + account.birthday);
   		        	  console.log("picture : " + account.birthday.substring(0,2) + "-" + account.birthday.substring(2,account.birthday.length));
  	        	  
	  	        	  $("input[name=snsId]").val("카카오로그인");
	  	        	  $("input[name=name]").val(account.profile.nickname);
	  	        	  $("input[name=phone]").val(account.profile.phone_number);
	  	        	  $("input[name=email]").val(account.email);
	  	        	  $("input[name=dob]").val(account.birthday.substring(0,2) + "-" + account.birthday.substring(2,account.birthday.length));
	  	        	  $("input[name=snsImg]").val(account.profile.thumbnail_image_url);
	  	        	  $("input[name=token]").val(accessToken);
	  	        	  
	  	        	  if (account.gender === "male") {
	  	        		  $("input[name=gender]").val(4);
	          		  } else {
	          			  $("input[name=gender]").val(5);
         			  } 
	  	        	  
	  	        	 /*  $("form[name=form]").attr("action", "/member/kakaoLoginProc").submit(); */
					
	  	        	  $.ajax({
						async: true
						,cache: false
						,type:"POST"
						,url: "/member/kakaoLoginProc"
						,data: {"name": $("input[name=name]").val(), "snsId": $("input[name=snsId]").val(), "phone": $("input[name=phone]").val(), "email": $("input[name=email]").val(), "gender": $("input[name=gender]").val(), "dob": $("input[name=dob]").val(), "snsImg": $("input[name=snsImg]").val(), "token": $("input[name=token]").val()}
						,success : function(response) {
							if (response.rt == "fail") {
								alert("아이디와 비밀번호를 다시 확인 후 시도해 주세요.");
								return false;
							} else {
								window.location.href = "/home";
							}
						},
						error : function(jqXHR, status, error) {
							alert("알 수 없는 에러 [ " + error + " ]");
						}
					});
   		          },
   		          fail: function (error) {
   		            console.log(error)
   		          },
   		        })
   		      },
   		      fail: function (error) {
   		        console.log(error)
   		      },
   		    })
		});
	
	</script>
</body>
</html>