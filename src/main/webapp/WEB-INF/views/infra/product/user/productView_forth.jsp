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
		#aaa{
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			font-size: 20px;
			margin-top: 1rem;
		}
		.class1{
			color: black;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 20px;
		}
		.class2{
			color: black;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			font-size: 17px;
		}
		#buttonTop1{
			color: #FD3049;
			font-family: 'Happiness-Sans-Bold';
			margin-top: 1rem;
		}
		#buttonTop2{
			color: gray;
			font-family: 'Happiness-Sans-Bold';
			margin-top: 1rem;
		}
		#coupon{
			color: gray;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 14px;
			margin-top: 2rem;
		}
		#couponDC{
			color: black;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 16px;
			margin-top: 1rem;
		}
		#Price{
			color: black;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 18px;
			margin-top: 1rem;
		}
		#totalDC{
			color: #FD3049;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 18px;
			margin-top: 1rem;
		}
		#button1{
			width: 350px;
			height: 40px;
			background-color: #FD3049;
			margin-top: 1.5rem;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			margin-top: 2rem;
		}
		#bbb{
			color: black;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			margin-top: 2rem;
		}
		#ccc{
			color: black;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			margin-top: 1rem;
		}
		#ddd{
			color: black;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			margin-top: 1.5rem;
		}
		#button2{
			width: 100px;
			height: 40px;
			background-color: #EFEFEF;
			margin-top: 1.5rem;
		}
		#button3{
			width: 350px;
			height: 40px;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			background-color: #FF5600;
			margin-top: 1.5rem;
		}
		#orderTop{
			color: #5A5757;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 17px;
		}
		#classTitle{
			color: black;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 20px;
			margin-top: 1rem;
		}
		#reviewHead{
			margin-top: 5rem;
			font-family: 'Happiness-Sans-Bold';
		}
		#star1{
			color: #F8B136;
			font-size: 25px;
		}
		#star2{
			font-size: 25px;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
		}
		#reviewID{
			font-size: 25px;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			color: #5A5757;
		}
		.reviewStar{
			color: #F8B136;
			font-size: 15px;
		}
		.reviewDate{
			font-size: 15px;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			color: gray;
		}
		.reviewContent{
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
		}
		#reviewButton{
			width: 500px;
			height: 40px;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			background-color: #EFEFEF;
			margin-top: 3rem;
		}
		.productView{
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
		}
		.content1{
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
		}
		.card{
			background-color: #EDEDED;
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
		.aaa:hover{
			color: #FD3049 !important;
		}
		.mypage{
			color: #FF5600;
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
										<h5><b>김진경</b></h5>
									</div>
								</div>
								<a href="/member/mypage" class="dropdown-item text-center mypage">마이페이지 <i class="fa-solid fa-angle-right"></i></a> 
								<hr class="dropdown-divider">
								<div class="row justify-content-center"><a type="button" href="/member/memberLogin" class="btn btn-light rounded rounded-pill" id="logoutButton">Logout</a></div>
							</div>
						</div>
					</div>
				</div>	
			</div>	
		</div>
	</div>
	
	<!-- 상세 메인 이미지 -->
	
	<div class="container">
		<div class="row">
			<div class="col">
				<img src="https://cdn.class101.net/images/a29bfb36-5e03-4de9-b5ec-0bb32a974863/1440xauto.webp" width="750px" height="519px">
			</div>
			<div class="col">
				<img src="../../resources/images/head_4.png" width="510px" height="519px">
			</div>
		</div>
	</div>
	
	<!-- 페이지 -->
	<div class="container">
		<div class="row">
			<div class="col-8">
				
				<!-- 목차 -->
				<div class="sticky-top">
					<div class="row fw-semibold" id="aaa">
						<nav class="navbar navbar-expand-lg bg-white">
							<div class="collapse navbar-collapse" id="navbarSupportedContent">
								<ul class="navbar-nav me-auto mb-2 mb-lg-0">
									<li class="nav-item">
							          <a class="nav-link aaa" aria-current="page" href="#RV" id="review">후기</a>
							        </li>
							        <li class="nav-item">
							          <a class="nav-link aaa" aria-current="page" href="#IF" id="classinfo">클래스 소개</a>
							        </li>
							        <li class="nav-item">
							          <a class="nav-link aaa" aria-current="page" href="#CR" id="curriculum">커리큘럼</a>
							        </li>
							        <li class="nav-item">
							          <a class="nav-link aaa" aria-current="page" href="#KT" id="kit">키트소개</a>
							        </li>
							        <li class="nav-item">
							          <a class="nav-link aaa" aria-current="page" href="#RF" id="refund">환불정책</a>
							        </li>
								</ul>
							</div>
						</nav>	
					</div>
				</div>
				
				
				<!-- 쿠폰이미지 -->
				<div class="row">
					<img src="../../resources/images/banner.png">
				</div> 
				
				
				<!-- 클래스 정보 -->
				<div class="row" style="margin-top: 5rem;">
					<div><span class="class1" id="classinfo">클래스 정보</span></div>
				</div>
				<div class="row" style="margin-top: 2rem;">
					<div class="col-4"><span class="class2"><b>클래스 분량</b> 11개 챕터, 53개 세부강의</span></div>
					<div class="col-3"><span class="class2"><b>수강 가능일</b> 바로 수강 가능</span></div>
					<div class="col-3"><span class="class2"><b>자막 포함 여부</b> 포함</span></div>
					<div class="col-2"><span></span></div>
				</div>
				
				
				
				 
				<!-- 후기 -->
				<div id="RV">
					<div id="reviewHead"><h3>실제 수강생들의<br>생생한 스토리</h3></div>
					<div style="margin-top: 3rem"><img src="../../resources/images/review_4.png" width="850px" height="410px"></div>
					<div id="reviewHead"><h5>실제 수강생 후기</h5></div>
					<div class="text-end"><a type="button" href="#" role="button" class="btn btn-outline-dark">후기 작성하기</a></div>
					<div class="row">
						<div class="col-3" id="star1">												
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>&emsp;
						</div>
						<div class="col-3" id="star2">
							<b>4.9</b>&emsp;<span>총 9개</span>
						</div>
					</div>
					<div class="row">
						<div class="col-6">
							<div id="reviewID"><span><i class="fa-solid fa-circle-user"></i> 김진숙</span></div>
							<div class="row">
								<div class="col-4">
									<div class="reviewStar">
										<i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i>&emsp;
									</div>
								</div>
								<div class="col-8">
									<span class="reviewDate">05월 25일 09:15:07&emsp;<b>59% 수강 후 작성</b></span>
								</div>
							</div>
							<div class="reviewContent">
								<span>
									미대생인 딸의 디지털드로잉 하는 모습을 보며 부러워만
									<br>하다가 문득 늦은 나이지만 도전해보자는 용기가 
									<br>생겼어요. 맨땅에 헤딩하는 기분^^
									<br>아이패드 캡처도 모르던 제가 차근차근 늦은 속도지만 
									<br>반복해 수업을 들으며 이제 조금 익숙해지고 있고...
								</span>
							</div>
						</div>
						<div class="col-6">
							<div id="reviewID"><span><i class="fa-solid fa-circle-user"></i> 문선</span></div>
							<div class="row">
								<div class="col-4">
									<div class="reviewStar">
										<i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i>&emsp;
									</div>
								</div>
								<div class="col-8">
									<span class="reviewDate">12월 12일 15:15:09&emsp;<b>97% 수강 후 작성</b></span>
								</div>
							</div>
							<div class="reviewContent">
								<span>
									세상을 바라보는 시선이 바뀝니다. 
									<br>이 곳은 내가 어떻게 그리면 좋을지 생각하고 고민하게 돼요.
									<br>그리고 그림에 집중하는 시간은 다른 잡생각 없이
									<br>머리를 비울 수 있어 좋습니다. 
									<br>
								</span>
							</div>
						</div>
					</div> 
					<div class="row justify-content-center">
						<a type="button" href="#" role="button" class="btn btn-light" id="reviewButton">7개의 후기 더 보기</a>
					</div>
				</div>
				
				
				
				
				
				<!-- 상품 상세 정보 -->
				<div id="IF">
					<div style="margin-top:5rem;"><h2><b>초급자</b>분들을 위한 <br><b>풍경 일러스트 그리기</b> <br>클래스입니다.</h2></div>
					<div class="content1">
						<div class="row" style="margin-top: 5rem;">
							<div class="col">
								<div><h3><i class="fa-solid fa-calendar-days"></i></h3></div>
								<div><h3><b>20주 수강 가능</b></h3></div>
								<div><h5>수강 기간 내 무제한 수강 가능합니다</h5></div>
							</div>
							<div class="col">
								<div><h3><i class="fa-brands fa-youtube"></i></h3></div>
								<div><h3><b>53개 콘텐츠</b></h3></div>
								<div><h5>총 53개의 강의를 수강하실 수 있습니다</h5></div>
							</div>
						</div>
					</div>
					<div class="content1" style="margin-top: 5rem;"><h3><b>그림을 사랑하는 일러스트레이터, 반지수입니다.</b></h3></div>
					<div class="content1" style="margin-top: 2rem;">
						<span>안녕하세요, 저는 눈을 떠서 자기 전까지 매일 그림을 끄적이는 <b>그림 애호가</b>입니다. 
						<br>대학을 거의 졸업할 즈음 그림이 너무 좋아서 취미로 그림을 시작하였다가 <b>일러스트레이터가</b> 되었어요.
						</span>
					</div>
					<div style="margin-top: 2rem;">
						<img src="https://cdn.class101.net/images/0644c588-3713-4513-b073-5b06583b15d2/2048xauto.webp" width="776" height="755">
					</div>
					<div class="content1" style="margin-top: 3rem;"><h3><b>지루한 일상에 따듯한 숨결을 불어넣어요</b></h3></div>
					<div class="content1" style="margin-top: 2rem;">
						<span>저는 항상 날씨가 좋은 날에 서울 곳곳을 돌아다니며 산책하는 취미가 있었어요. 한적한 길가의 고양이나,
						<br>예쁜 건축물들, 데이트를 나온 커플, 하교하는 학생들 등 사람 사는 모습을 구경하는 걸 재밌어하는 사람이었어요.
						<br><b>무엇을 그릴까?</b> 하며 휴대폰 사진첩을 보다가 제가 산책하며 찍은 사진들이 눈에 들어왔고, <b>‘그리고 싶다'</b>는 생각이 들었어요.
						</span>
					</div>
					<div style="margin-top: 2rem;">
						<img src="https://cdn.class101.net/images/c08eb984-ad95-4954-940a-060769514d8c/1920xauto.webp" width="776" height="755">
					</div>
					<div class="content1" style="margin-top: 2rem;">
						<span>이렇게 주변 풍경을 그리다 보면 자신이 <b>살고 있는 세계</b>를 더욱 사랑하게 되는 것 같아요.
						<br> 그리고 그냥 매일 다니는 길도 새로워보여요. 멀리 나가지 않아도, 엄청난 곳에 가지 않아도
						<br>그림으로 그려낼 <b>소재</b>가 내 주변에 얼마든지 많다는 걸 알게 되는 것 같아요.
						</span>
					</div>
					<div style="margin-top: 2rem;">
						<img src="https://cdn.class101.net/images/cb201b5b-bfab-4953-8af7-6fda121038a8/1920xauto.webp" width="776" height="755">
					</div>
					<div class="content1" style="margin-top: 2rem;">
						<span>그렇게 <b>일상과 예술이 끊임없이 만날 수 있는 것</b>이 바로 풍경 그림이라고 생각해요. 
						<br> 저는 수강생 여러분들과 주변에서 소재를 찾는 것을 시작해 그림에 더욱 가까워지는 느낌을 <b>공유</b>하고 싶어요!
						</span>
					</div>
					<div class="content1" style="margin-top: 5rem;"><h3><b>어떤 걸 배우나요?<br>아이패드 드로잉의 모든 것</b></h3></div>
					<div style="margin-top: 2rem;">
						<img src="https://cdn.class101.net/images/394a7cab-5374-403e-a84b-44afc7abcc66/1920xauto.webp" width="776" height="550">
					</div>
					<div class="content1" style="margin-top: 2rem;">
						<span>아이패드 드로잉에는 아주 많은 <b>장점</b>이 있어요. 홈버튼만 누르면 언제 어디서든 그림을 시작할 수 있고, 
						<br>수정이 용이하고 어플에서 제공하는 <b>다양한 테크닉</b>을 엄청나게 많은 방식으로 활용할 수 있거든요.
						</span>
					</div> 
					<div style="margin-top: 2rem;">
						<img src="https://cdn.class101.net/images/ce5cfa21-6b21-430d-aea0-2f0e0960d02f/1920xauto.webp" width="776" height="700">
					</div>
					<div class="content1" style="margin-top: 2rem;">
						<span>요즘은 브러쉬도 다양하게 나와서, <b>아이패드 하나로 색연필부터 물감, 펜의 느낌</b>까지 모두 구현할 수 있다는 게 좋은 것  
						<br>같아요. 저는 애니메이션 배경을 그리는 일을 했는데, 그때에도 모두 아이패드로 작업했어요. <b>제가 그동안 쌓아온 노하우를</b>
						<br>자세하게 알려드릴게요!
						</span>
					</div> 
					<div class="content1" style="margin-top: 5rem;"><h3><b>섬세한 스케치부터 명암 표현법까지</b></h3></div>
					<div style="margin-top: 2rem;">
						<img src="https://cdn.class101.net/images/a978f868-29ed-4a29-90aa-fa14c19996cb/1920xauto.webp" width="776" height="280">
					</div>
					<div class="content1" style="margin-top: 2rem;">
						<span>사실 풍경 그림의 <b>60%는 스케치</b>에서 결정된다고 생각해요. 스케치를 꼼꼼하게 해두면 절반 이상은 성공이에요! 
						<br>섬세하게 다져진 스케치를 완성하고 나면, <b>어떤 색</b>을 쓰느냐에 따라 무궁무진한 가능성이 열려있는 것 같아요.
						</span>
					</div> 
					<div style="margin-top: 2rem;">
						<img src="https://cdn.class101.net/images/b432d008-1332-48ea-835f-53a5820b1b25/1920xauto.webp" width="776" height="280">
					</div>
					<div class="content1" style="margin-top: 2rem;">
						<span>스케치를 완료했다면, <b>포인트</b>를 주는 색칠하기에 대해서 따라 해볼 거예요! 현실의 색을 있는 그대로 칠하기보다는
						<br>예뻐 보이는 색을 골라서 색칠을 하면 그림이 더 멋져보여요! 제가 그동안 그림을 그리며 쌓아온 <b>컬러 세트</b>를 공유해드릴게요!
						</span>
					</div>
					<div style="margin-top: 2rem;">
						<img src="https://cdn.class101.net/images/ff1b022f-9344-4e4b-981e-6a4a3996f161/1920xauto.webp" width="776" height="280">
					</div>
					<div class="content1" style="margin-top: 2rem;">
						<span>그 다음 제가 가장 중요하게 생각하는 것은 <b>'빛'</b>이에요! 그림을 그리면서 '빛'과 '어둠' 즉 <b>햇빛과 그림자,</b> 
						<br>혹은 <b>조명빛과 그림자</b>를 잘 주기만 하여도 그림이 완성되어 보여요. 이런 <b>명암 표현법</b>을 알려드릴게요!
						</span>
					</div>
					<div class="content1" style="margin-top: 5rem;"><h3><b>나만의 감성을 담은 풍경화를 완성해요</b></h3></div>
					<div class="content1" style="margin-top: 2rem;">
						<span>저는 그림이 주는 '긍정적인 에너지'를 추구하는 편이에요. <b>'따스함', '사랑스러움', '편안함', '추억', '아름다움'</b>과 같은,
						<br>사람을 기분 좋게 하는 키워드가 담긴 그림을 좋아해요. 이를 위해서 너무 사진 같거나 딱딱한 느낌이 아니라,
						<br>하나의 <b>그림엽서</b>같이 표현하려고 노력하고 있어요.
						</span>
					</div> 
					<div style="margin-top: 2rem;">
						<img src="https://cdn.class101.net/images/e87be52c-8733-4119-a948-83926e8965ff/1920xauto.webp" width="776" height="700">
					</div>
					<div class="content1" style="margin-top: 2rem;">
						<span>저와 함께 차근차근 하나의 프레임에 내가 <b>마주한 일상</b>들을 담아보아요! 길을 걷다 만난 길냥이를, 
						<br> 웃음소리 가득한 어느 한 골목을. 
						<br><b>애정을 담아</b> 그림을 그리다보면 그 그림이 바로 곧 <b>자신만의 감성이 담긴 풍경화</b>가 될거예요.
						</span>
					</div>
					
					
				</div>
				
				
				
				
				
				<!-- 커리큘럼 -->
				<div id="CR"> 
					<div class="content1" style="margin-top: 5rem;"><h4><b>커리큘럼</b></h4></div>
					<div class="content1" style="margin-top: 1rem;">
						<span>클래스를 신청하신 분들이 배우고 있는 커리큘럼입니다. 콘텐츠는 배우기 쉽게 영상, 수업노트, 첨부파일로 구성되어있습니다.</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>Welcome 환영합니다!</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 안녕하세요, 반지수입니다</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 반지수의 디지털 드로잉 클래스를 소개합니다</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 프로크리에이트 어플을 살펴보아요</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> [참고] 아이패드에서 멀티태스킹(Split View) 기능 이용하기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> [참고] 프로크리에이트 5.2 업데이트 내용 안내</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 자주 묻는 질문 Q&A</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>1. 프로크리에이트의 기초 기능 배우기</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 작업을 위한 기본 세팅하기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 자주 사용하는 그리기 툴 배우기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 자주 사용하는 설정 툴과 제스쳐 배우기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 자주 사용하는 레이어와 레이어 기능 배우기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 그림 레퍼런스를 찾아보고 편집해보기</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>2. 풍경 스케치에 다가가기</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 일상과 풍경 그림에 대한 이야기 나누어보기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 원근감의 최소화, 세밀하면서도 쉽게 그려보기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 원근감이 있는 풍경 기초 배우기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 풍경에 활용되는 여러가지 요소 분석하고 그려보기 (1)</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 풍경에 활용되는 여러가지 요소 분석하고 그려보기 (2)</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 풍경 그리기의 기초: 덩어리를 나누어 보기</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>3. 화분과 나무, 풍경 전체 스케치하기</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 화분이 있는 풍경 드로잉하기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 화분이 있는 풍경 채색하기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 풍경 속 작은 인물 그려넣기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 가로수가 있는 풍경 드로잉하기(1)</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 가로수가 있는 풍경 드로잉하기(2)</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 완성도를 높이는 나무 채색법 알아보기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> [BONUS] 디지털에 스케치가 어렵다면? 종이에 그려서 스캔하는 법 알아보기</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>4. 도쿄 카페의 낮 풍경 그리기</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 깔끔하고 따스한 카페 풍경 스케치하기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 깔끔하고 따스한 카페 풍경 라인 그리기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 낮의 풍경 기본 채색하기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 낮의 특징을 살려 빛과 그림자, 조명 넣기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 색보정과 아날로그 느낌 내기</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>5. 밤의 서점 풍경 그리기</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 안과 밖이 보이는 상점 풍경 스케치하기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 안과 밖이 보이는 상점 풍경 라인 그리기(1)</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 안과 밖이 보이는 상점 풍경 라인 그리기(2)</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 밤의 풍경 기본 채색하기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 밤의 특징을 살려 빛과 그림자, 조명 넣기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 밤 풍경 조명의 여러가지 예시 더 알아보기</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>6. 비가 내리는 우리나라 풍경 그리기</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 비가 내리는 우리나라 풍경 스케치하기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 비가 내리는 우리나라 풍경 라인 그리기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 비가 내리는 우리나라 풍경 기본 채색하기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 젖은 느낌을 살려 빛과 그림자, 조명 넣기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 색보정과 아날로그 느낌 내보기</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>7. 영화 속 일본 잡화점과 뉴욕 센트럴파크 그려보기</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 일본 잡화점 드로잉하기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 일본 잡화점 채색하고 완성하기(1)</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 일본 잡화점 채색하고 완성하기(2)</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 뉴욕 센트럴 파크 스케치해보기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 뉴욕 센트럴 파크 채색하고 완성하기</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>8. 풍경 그림의 다양한 활용법 알아보기</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 응용1 - 햇빛이 들어오는 실내풍경 그리기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 응용2 - 스탠드 조명이 빛나는 밤의 실내풍경 그리기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 응용3 - 야외에서 스피드 풍경 드로잉하기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 이제 혼자서 무엇을 그려볼까요?</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> [BONUS] 엽서나 굿즈 만들어보기</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>OUTRO 완강을 축하드립니다!</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> [핵심내용정리] 지금까지 배운 내용을 복습해봐요!</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 완강을 축하드려요!</span>
					</div>
				</div>	
				
				
				
				
				
				
				<!-- 키트소개 -->
				<div id="KT">
					<div class="content1" style="margin-top: 5rem;"><h4><b>키트소개</b></h4></div>
					<div class="content1" style="margin-top: 3rem;"><h4><b>【소가죽 펜슬 홀더 패키지】</b></h4></div>
					<div class="content1" style="margin-top: 1rem;">
						<span>1만원 상당의 <b>소가죽 펜슬 홀더</b>를 구매할 수 있는 패키지입니다. 가방안에 굴러다녀서 잃어버리기 쉬웠던 
						<br>애플펜슬을 이제 안전하게 보관해보세요!
						</span>
					</div>
					<div style="margin-top: 3rem;">
						<img src="https://cdn.class101.net/images/52ee8f1c-7824-415b-86bb-83c61b8c28c6/2048xauto.webp" width="776" height="986">
					</div>
					<div style="margin-top: 3rem;">
						<img src="https://cdn.class101.net/images/1c93e07c-8b29-406a-8659-75fbac7a7613/1920xauto.webp" width="776" height="555">
					</div>
					<div style="margin-top: 3rem;">
						<img src="https://cdn.class101.net/images/f4e31aa6-fdbd-4a60-94da-1e7f9ac9b793/2048xauto.webp" width="776" height="847">
					</div>
					<div style="margin-top: 1rem;">
						<img src="https://cdn.class101.net/images/c9a3822e-a353-41dd-a544-739303f5c6d6/1920xauto.webp" width="776" height="3563">
					</div>
					<div style="margin-top: 1rem;">
						<img src="https://cdn.class101.net/images/74ba524b-497a-4ac8-9250-6255263db88c/1920xauto.webp" width="776" height="1609">
					</div>
					<div class="content1">
						<span><b>애플 제품에 대한 환불 특약 안내</b></span>
						<ul style="margin-top: 1rem;">
							<li>애플 제품은 발송예정일 전 입고될 시, 예정일보다 더 빠르게 발송해드릴 수 있습니다.
							<li>애플 아이패드 제품의 환불 및 A/S는 애플 코리아의 정책을 따릅니다. 다만 제품 가치가 훼손 됐을 경우, 자사 유료서비스
								<br>이용약관을 기준으로 환불을 처리합니다.
							<li>애플 아이패드 패키지 최저가 혜택은 패키지로 구매할 경우에 한해 적용됩니다.
							<li>애플 아이패드 패키지 구매 후 기기 단독 환불 시, 본 페이지 내의 상품 가격 기준으로 금액을 공제하고 환불합니다.
							<li>애플 아이패드 패키지 구매 후 아이패드 패키지를 제외하고 환불 시, 기기의 공식판매가격을 기준으로 금액을 공제한 후, 
								<br>아래의 환불 정책에 따라 환불이 진행됩니다.
						</ul>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>사용 프로그램 안내</b></h5></div>
					<div class="content1" style="margin-top: 1rem;"><span>프로크리에이트 Procreate 어플</span></div>
					<div style="margin-top: 1rem;">
						<img src="https://cdn.class101.net/images/0ae343b7-4b8c-4628-af66-c34e49f937b0/1920xauto.webp" width="776" height="441">
					</div>
					<div  class="content1" style="margin-top: 1rem;">
						<ul>
							<li>클래스에서 활용하는 프로크리에이트(Procreate) 어플은 유료 입니다.
							<li>강의는 프로크리에이트 5 버전으로 진행됩니다.
							<li>원활한 강의 수강을 위해서는 필수로 갖춰주셔야 합니다!
							<li>패키지에 포함 되어있지 않으므로 개별 구매 해주셔야 합니다.
							<li>어플 사용법, 활용법은 클래스에서 충분히 알려드립니다.
						</ul>
					</div>
				</div>
				
				
				
				
				<!-- 환불정책 -->
				<div id="RF">
					<div class="content1" style="margin-top: 5rem;"><h4><b>환불정책</b></h4></div>
					<div class="content1" style="margin-top: 1.5rem;">
						<div class="card">
						  <div class="card-body">
						    <span>환불 정책에 따라 구매일로부터 90일까지 환불 요청이 가능하며, <b>7일 까지</b> 전액 환불이 가능합니다.</span>
						    <div class="bd-example" style="margin-top: 1.5rem;">
							  <button type="button" class="btn btn-dark" data-bs-toggle="modal" data-bs-target="#exampleModalLg">환불 정책</button>
							</div>
							<div class="modal fade" id="exampleModalLg" tabindex="-1" aria-labelledby="exampleModalLgLabel" aria-hidden="true">
							  <div class="modal-dialog modal-lg">
							    <div class="modal-content">
							      <div class="modal-header">							      
							        <h5 class="modal-title h4" id="exampleModalLgLabel">환불정책</h5>
							        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							      </div>
							      <div class="modal-body text-center">
							        <img src="../../resources/images/refund.png">
							      </div>
							      <div class="modal-body text-center">
							        <img src="../../resources/images/refund2.png">
							      </div>
							       <div class="modal-footer">
								       <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
								   </div>
							    </div>
							  </div>
							</div>
						  </div>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 구매창 -->
			<div class="col-4" style="margin-top: 2rem;">
				<div class="sticky-top">
					<div class="shadow p-3 mb-5 bg-body rounded">
						<div id="orderTop">banzisu</div>
						<div id="classTitle">일상에 따뜻한 숨결을 불어넣어요, 반지수와 함께하는 아이패드 드로잉</div>
						<div>
							<a type="button" href="#" role="button" class="btn btn-light" id="buttonTop1">선물하기</a>
							<a type="button" href="#" role="button" class="btn btn-light" id="buttonTop2">바로수강가능</a>
						</div>
						<div class="text-end" id="coupon">쿠폰 적용 시, 5개월 할부</div>
						<div class="row justify-content-between">
							<div class="col" id="couponDC">쿠폰 할인가</div>
							<div class="col text-end" id="Price">40% 월 36, 000원</div>
						</div>
						<div class="row justify-content-between" id="totalDC">
							<div class="col">총 할인액</div>
							<div class="col text-end">- 120,000원</div>
						</div>
						<div class="row" id="bbb">
							<div class="col-6"><i class="fa-brands fa-youtube"></i> 콘텐츠 이용권</div>
							<div class="col-6"><i class="fa-solid fa-gifts"></i> 준비물 키트</div>
						</div>
						<div class="row" id="ccc">
							<div class="col-6"><i class="fa-solid fa-user"></i> 초급자 대상</div>
							<div class="col-6"><i class="fa-solid fa-thumbs-up"></i> 강의 만족도 99%</div>
						</div>
						<div class="text-center" id="ddd">
							<a type="button" href="#" role="button" class="btn btn-light"><i class="fa-solid fa-heart"></i> 3210</a>
							<a type="button" href="#" role="button" class="btn btn-light"><i class="fa-solid fa-arrow-up-from-bracket"></i> 공유하기</a>
							<a type="button" href="#" role="button" class="btn btn-light"><i class="fa-solid fa-gift"></i> 선물하기</a>
						</div>
						<div class="row justify-content-center">
							<a type="button" href="#" role="button" class="btn btn-danger" id="button3">구매하기 <i class="fa-solid fa-cart-shopping"></i></a>
						</div>	
					</div>
				</div>	
			</div>		
		</div>
	</div>
	
	
	<!-- 끝 -->
	<div class="container">
		<div class="row" style="margin-top: 5rem;">
			<div class="col-4">
				<div><img src="../../resources/images/classLogo.png" alt="" width="300" height="121"></div>
				<div><span id="endContent1">클래스 101은 모든 사람이 사랑하는 일을 하며<br>살 수 있도록 세상을 바꾸고자 합니다.</span></div>
				<br>
				<br>
				<div><span id="endContent1"><small>KR</small>&nbsp;한국어</span></div>
			</div>
			<div class="col-2">
				<div class="endTitle">클래스 101</div>
				<div class="endContent2">홈</div>
				<div class="endContent2">기업교육</div>
				<div class="endContent2">채용</div>
				<div class="endContent2">도움말</div>
			</div>
			<div class="col-2">
				<div class="endTitle">크리에이터</div>
				<div class="endContent2">크리에이터 센터</div>
				<div class="endContent2">정규 클래스 지원하기</div>
				<div class="endContent2">도움말</div>
			</div>
			<div class="col-4">
				<div class="endTitle">고객센터</div>
				<div class="text-center"><a type="button" role="button" class="btn btn-light" id="endButton">문의하기</a></div>
				<div class="endContent2 text-center">오전 10시 ~ 오후 6시 (주말, 공휴일 제외)</div> 
			</div>
		</div>
	</div>
	<div class="col text-end sticky-bottom">
		<a id="back-to-top" href="#" class="btn btn-outline-dark back-to-top-css rounded-circle" role="button" title="Move Top" data-toggle="tooltip" data-placement="left" style= "width:55px; height: 55px;">
			<span class="glyphicon glyphicon-chevron-up"><small><i class="fa-solid fa-angles-up"></i><br>TOP</small></span>
		</a>
	</div>
	<br>
	<br>	

<!-- end	 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/1d7c148109.js" crossorigin="anonymous"></script>
	<script type="text/javascript">
	const myModal = document.getElementById('myModal')
	const myInput = document.getElementById('myInput')

	myModal.addEventListener('shown.bs.modal', () => {
	  myInput.focus()
	})
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
	            }, 800);
	            return false;
	        });

	        $('#back-to-top').tooltip('show');

	    });
	</script> 
</body>
</html>