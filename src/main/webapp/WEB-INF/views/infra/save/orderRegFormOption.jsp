<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>
<html>
<head>
	<title>Class101</title>
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
		@font-face {
		    font-family: 'Happiness-Sans-Regular';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2205@1.0/Happiness-Sans-Regular.woff2') format('woff2');
		    font-weight: 400;
		    font-style: normal;
		}
		#logoutButton{
			width: 7rem;
			background-color: #FF5600;
			color: white;
		}
		#contentFont{
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
		}
		#freeship{
			color: #00B031;
			font-size: 20px;
		}
		#contentFont2{
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
		}
		.RC{
			background-color: #FF5600;
			color: white;
			font-weight: bold;
			width: 50px;
			text-align: center;
		}
		.head{
			font-weight: bold;
			font-size: 22px;
			margin-top: 1rem;
		}
		.classOption{
			margin-top: 1rem;
			font-size: 20px;
		}
		.discount{
			font-size: 15px;
			color: red;
			margin-left: 2rem;
			margin-top: 2rem;
		}
		.price{
			font-size: 15px;
			color: gray;
			margin-top: 2rem;
		}
		.price2{
			font-size: 20px;
			color: #A9A9A9;
			text-align: end;
			margin-right: 2rem;
			font-weight: bold;
		}
		.discount2{
			font-size: 30px;
			font-weight: bold;
			margin-left: 2rem;
			color: red;
		}
		.price3{
			font-size: 30px;
			text-align: end;
			margin-right: 2rem;
			font-weight: bold;
		}
		#button1{
			width: 450px;
			height: 40px;
			font-style: normal;
			background-color: #FF5600;
			margin-top: 1.5rem;
		}
		#button2{
			width: 450px;
			height: 40px;
			font-style: normal;
			background-color: #FF5600;
			margin-top: 1.5rem;
		}
		.endTitle{
			color: black;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 20px;
		}
		#endContent1{
			color: black;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			font-size: 17px;
		}
		.endContent2{
			color: black;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			font-size: 14px;
			margin-top: 2rem;
		}
		#endButton{
			color: black;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 20px;
			margin-top: 2rem;
			width: 20rem;
			background-color: #F5F5F5;
		}
		:root{
			 --bs-link-hover-color: #fd7e14;
		}
		.dropdown-menu{
			--bs-dropdown-link-active-bg: #FCC4A3;
		}
	</style>
</head>
<body>

<!-- start -->
	
	<!-- NAV bar	 -->
	<div class="container" style="margin-top: 3rem;">
		<div class="row">
			<div class="col-8">
				<nav class="navbar navbar-expand-lg bg-white">
				  <div class="container-fluid">
				    <a class="navbar-brand" href="/home">
      					<img src="../../resources/images/logo.png" alt="">
				    </a>
				    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				      <span class="navbar-toggler-icon"></span>
				    </button>
				    <div class="collapse navbar-collapse" id="navbarSupportedContent">
				      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
				        <li class="nav-item" id="">
				          <a class="nav-link" href="#" id="ListClass"><b>?????????</b></a>
				        </li>
				        <li class="nav-item">
				          <a class="nav-link" href="#" id="ListStore"><b>?????????</b></a>
				        </li>
				      </ul>
				    </div>
				      <form class="d-flex" role="search">
				        <input class="form-control me-2" type="search" placeholder="???????????? ???????????????." aria-label="Search" style="width: 400px;">
				        <button class="btn btn-outline-dark" type="submit">Search</button>
				      </form>
				    </div>
				 </nav>  
			</div>
			<div class="col">
				<div class="row text-end">
					<div class="dropdown">
						<a href="#" id="sidebarAvatar" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<img alt="..." src="../../resources/images/profile.png" class="avatar avatar- rounded-circle"> 
						</a>
						<div class="dropdown-menu dropdown-menu-end" aria-labelledby="sidebarAvatar">
							<div class="container">
								<div class="row">
									<div class="col-4 text-center">
										<img alt="..." src="../../resources/images/profile.png" class="avatar avatar- rounded-circle"> 
									</div>
									<div class="col-8 text-center" style="margin-top: 0.9rem;">
										<h5><b>?????????</b></h5>
									</div>
								</div>
								<a href="/member/mypage" class="dropdown-item text-center" style="color: #FF5600">??????????????? <i class="fa-solid fa-angle-right"></i></a> 
								<hr class="dropdown-divider">
								<div class="row justify-content-center"><a type="button" href="/member/memberLogin" class="btn btn-light rounded rounded-pill" id="logoutButton">Logout</a></div>
							</div>
						</div>
					</div>
				</div>	
			</div>	
		</div>
	</div>
	
	
	<!-- content 1 -->
	
	<div class="container" id="contentFont">
		<div class="row" style="margin-top: 3rem;"><h1><b>????????? ????????????</b></h1></div>
		<div class="row text-end" id="freeship"><span><i class="fa-solid fa-circle-check"></i> ????????????</span></div>
		<div class="shadow p-3 mb-5 bg-body rounded" style="margin-top: 1rem;">
			<div class="row"><h4><i class="fa-solid fa-circle-info"></i> <b>????????????</b></h4></div>
			<div style="margin-top: 1rem;">
				<span> 
					????????? ????????? ????????? ?????? ???, ?????? ??????????????? ???????????? ??????????????? 7?????? ?????? ???????????????. 
					??????/????????????????????? ?????? ???????????? ????????? ??? ?????????, ??? ?????? ????????? ????????? ???????????????.
					<br><br>
				</span>
			</div>
		</div>
	</div>
	
	<!-- content 2 -->
	
	<div class="container" id="contentFont2">
		<div class="row">
			<div class="col-5">
				<div class="shadow p-3 mb-5 bg-body rounded">
					<div style="margin-left: 2rem;">
						<div class="RC">??????</div>
						<div class="head">???????????? ???????????? ?????? ????????? Only</div>
						<div class="classOption"><i class="fa-solid fa-display"></i> ?????? ????????? ????????? (20???)</div>
						<div>
							<span class="discount">30%</span>
							<span class="price">180,000???</span>
						</div>
					</div>	
					<div class="row justify-content-center"><hr style="margin-top: 9.4rem; width: 450px;"></div>
					<div class="price2">
						<span class="text-decoration-line-through">300,000???</span>&emsp;
						<span>180,000???</span>
					</div>
					<div><span class="discount2">30%</span></div>
					<div class="text-end">
						<span class="month">5?????? ?????? ???</span>&emsp;
						<span class="price3">??? 36,000???</span>
					</div>
					<div class="row justify-content-center">
						<a type="button" href="/order/orderRegFormOther" role="button" class="btn btn-danger" id="button1">????????? ????????????</a>
					</div>
				</div>
			</div>
			<div class="col-5">
				<div class="shadow p-3 mb-5 bg-body rounded">
					<div style="margin-left: 2rem;">
						<div class="RC">??????</div>
						<div class="head">???????????? ???????????? ?????? ???????????? ?????? ?????????</div>
						<div class="classOption"><i class="fa-solid fa-display"></i> ?????? ????????? ????????? (20???)</div>
						<div>
							<span class="discount">30%</span>
							<span class="price">180,000???</span>
						</div>
						<div class="classOption"><i class="fa-solid fa-gift"></i> ???????????? (?????????) + ???????????? 2??????</div>
						
						<div>
							<span class="discount">10%</span>
							<span class="price">900,000???</span>
						</div>
					</div>	
					<div class="row justify-content-center"><hr style="margin-top: 5rem; width: 450px;"></div>
					<div class="price2">
						<span class="text-decoration-line-through">1,300,000???</span>&emsp;
						<span>1,080,000???</span>
					</div>
					<div><span class="discount2">9%</span></div>
					<div class="text-end">
						<span>5?????? ?????? ???</span>&emsp;
						<span class="price3">??? 216,000???</span>
					</div>
					<div class="row justify-content-center">
						<a type="button" href="/order/orderRegForm" role="button" class="btn btn-danger" id="button2">????????? ????????????</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- ??? -->
	<div class="container">
		<div class="row" style="margin-top: 5rem;">
			<div class="col-4">
				<div><img src="../../resources/images/classLogo.png" alt="" width="300" height="121"></div>
				<div><span id="endContent1">????????? 101??? ?????? ????????? ???????????? ?????? ??????<br>??? ??? ????????? ????????? ???????????? ?????????.</span></div>
				<br>
				<br>
				<div><span id="endContent1"><small>KR</small>&nbsp;?????????</span></div>
			</div>
			<div class="col-2">
				<div class="endTitle">????????? 101</div>
				<div class="endContent2">???</div>
				<div class="endContent2">????????????</div>
				<div class="endContent2">??????</div>
				<div class="endContent2">?????????</div>
			</div>
			<div class="col-2">
				<div class="endTitle">???????????????</div>
				<div class="endContent2">??????????????? ??????</div>
				<div class="endContent2">?????? ????????? ????????????</div>
				<div class="endContent2">?????????</div>
			</div>
			<div class="col-4">
				<div class="endTitle">????????????</div>
				<div class="text-center"><a type="button" role="button" class="btn btn-light" id="endButton">????????????</a></div>
				<div class="endContent2 text-center">?????? 10??? ~ ?????? 6??? (??????, ????????? ??????)</div> 
			</div>
		</div>
	</div>
	<br>
	<br>	

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/1d7c148109.js" crossorigin="anonymous"></script>
</body>
</html>