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
								<a href="../mypage/mypage.html" class="dropdown-item text-center" style="color: #FF5600">마이페이지 <i class="fa-solid fa-angle-right"></i></a> 
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
				<img src="https://cdn.class101.net/images/2b6fa0e3-d7a2-4f72-826f-3729309c61b8/750xauto.webp" width="691px" height="519px">
			</div>
			<div class="col">
				<img src="../../resources/images/head2.png">
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
					<div class="col-4"><span class="class2"><b>클래스 분량</b> 12개 챕터, 44개 세부강의</span></div>
					<div class="col-3"><span class="class2"><b>수강 가능일</b> 바로 수강 가능</span></div>
					<div class="col-3"><span class="class2"><b>자막 포함 여부</b> 포함</span></div>
					<div class="col-2"><span></span></div>
				</div>
				
				
				
				 
				<!-- 후기 -->
				<div id="RV">
					<div id="reviewHead"><h3>실제 수강생들의<br>생생한 스토리</h3></div>
					<div style="margin-top: 3rem"><img src="../../resources/images/review.png"></div>
					<div id="reviewHead"><h5>실제 수강생 후기</h5></div>
					<div class="text-end"><a type="button" href="../review/reviewRegForm.html" role="button" class="btn btn-outline-dark">후기 작성하기</a></div>
					<div class="row">
						<div class="col-3" id="star1">												
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>&emsp;
						</div>
						<div class="col-3" id="star2">
							<b>4.9</b>&emsp;<span>총 8개</span>
						</div>
					</div>
					<div class="row">
						<div class="col-6">
							<div id="reviewID"><span><i class="fa-solid fa-circle-user"></i> yeriel</span></div>
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
									<span class="reviewDate">1월 02일 10:05:01&emsp;<b>20% 수강 후 작성</b></span>
								</div>
							</div>
							<div class="reviewContent">
								<span>
									유랑 작가님 수업 처음 듣는데 매우 재밌습니다! 이모티콘 만드
									<br>는 법을 디테일있게 알려주셔서 너무 좋습니다!
									<br>아이패드 고물될 뻔했는데, 다행히 요즘 아주 유용하게
									<br>사용하고 있습니다!
								</span>
							</div>
							<div style="margin-top: 3rem;"><i class="fa-solid fa-heart"></i> 5</div>
						</div>
						<div class="col-6">
							<div id="reviewID"><span><i class="fa-solid fa-circle-user"></i> chacha</span></div>
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
									<span class="reviewDate">4월 9일 20:50:12&emsp;<b>100% 수강 후 작성</b></span>
								</div>
							</div>
							<div class="reviewContent">
								<span>
									해볼까 말까 꽤 오랜시간을 고민했는데 고민한 시간이 아까울
									<br>만큼 재미있는 수업이었어요. 정말 세세한 부분까지 알려주시
									<br>고 제공해주시는 자료들도 많이 유용해요. 
									<br>팁도 알려주셔서 나중에 혼자 공부할 때도 유익할 것 같아요.
									<br>고민하시는 분들이 계시다면 추천드리고 ... 
								</span>
							</div>
							<div style="margin-top: 1.5rem;"><i class="fa-solid fa-heart"></i> 12</div>
						</div>
					</div> 
					<div class="row justify-content-center">
						<a type="button" href="#" role="button" class="btn btn-light" id="reviewButton">6개의 후기 더 보기</a>
					</div>
				</div>
				
				
				
				
				
				<!-- 상품 상세 정보 -->
				<div id="IF">
					<div style="margin-top:5rem;"><h2><b>초급자</b>분들을 위한 <br><b>카카오톡 이모티콘 제작</b> <br>클래스입니다.</h2></div>
					<div class="productView" style="margin-top: 3rem;"><h3>프로크리에이트와 포토샵으로<br><b>총 8개의 작품</b> 만들기</h3></div>
					<div class="productView"><span>한 작품을 만들어보는 데에 <b>30분 ~ 2시간</b> 정도가 소요됩니다.</span></div>
					<div>
						<img src="../../resources/images/productView.png">
					</div>
					<div class="content1">
						<div class="row" style="margin-top: 5rem;">
							<div class="col">
								<div><h3><i class="fa-solid fa-calendar-days"></i></h3></div>
								<div><h3><b>20주 수강 가능</b></h3></div>
								<div><h5>수강 기간 내 무제한 수강 가능합니다</h5></div>
							</div>
							<div class="col">
								<div><h3><i class="fa-brands fa-youtube"></i></h3></div>
								<div><h3><b>44개 콘텐츠</b></h3></div>
								<div><h5>총 44개의 강의를 수강하실 수 있습니다</h5></div>
							</div>
						</div>
					</div>
					<div style="margin-top: 1rem;">
						<img src="https://cdn.class101.net/images/27fb416f-2ac0-48a0-bc35-dfb9d56c301b/2048xauto.webp" width="776" height="548">
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>안녕하세요! 이모티콘 작가 유랑입니다.</b></h5></div>
					<div style="margin-top: 1rem;">
						<img src="https://cdn.class101.net/images/6ee6b356-9b97-4d21-887f-b1d2f902a8de/1920xauto.webp" width="776" height="452">
					</div>
					<div class="content1" style="margin-top: 1rem;">
						<span>안녕하세요, 이모티콘 작가 유랑입니다. 저는 <b>"망그러진 곰", "대학생인데요", "파괴왕 오리"</b> 등 다양한 카카오 이모티콘을
						<br>출시하고, 이렇게 탄생한 이모티콘 캐릭터들로 재미있는 만화와 애니메이션들을 그리고 있어요.
						</span>
					</div>
					<div style="margin-top: 3rem;">
						<img src="https://cdn.class101.net/images/a05fc25d-69c1-498c-ad6e-d41bef1d8c0e/1920xauto.webp" width="776" height="582">
					</div>
					<div class="content1" style="margin-top: 1rem;">
						<span>이번 클래스에서는 저만의 <b>이모티콘 제작 노하우와 꿀팁</b>을 통해 여러분에게 좀 더 쉽고 빠른 이모티콘 성공의 길을 
							  <br>안내해드릴게요!
						</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h4><b>⭐️기존 강의와 차별화 된 3가지!⭐️</b></h4></div>
					<div class="content1" style="margin-top: 3rem;"><h4><b>1. 뻔한 거 말고, 매력적인 아이디어 찾는 법!</b></h4></div>
					<div style="margin-top: 3rem;">
						<img src="https://cdn.class101.net/images/81bfaecb-f9ba-4c1b-bfd5-5ab0f9913e11/1920xauto.webp" width="776" height="582">
					</div>
					<div class="content1" style="margin-top: 1rem;">
						<span>뻔한 이모티콘은 더 이상 팔리지 않아요! 비슷비슷한 이모티콘들 속에서 재치 있고 참신한 이모티콘 만드는 비법, 궁금하시죠? 
							  <br><b>제가 자세하고 다양한 예시들로 설명해드릴게요.</b>
						</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h4><b>2. 자연스러운 고퀄리티 모션 그리는 법 (+유랑 작가의 모션 가이드 파일 제공)</b></h4></div>
					<div style="margin-top: 3rem;">
						<img src="https://cdn.class101.net/images/7e16dc60-472f-4ef3-aa73-55c6093eac2a/1920xauto.webp" width="776" height="582">
					</div>
					<div class="content1" style="margin-top: 1rem;">
						<span>자연스러운 모션, 어렵게 느껴지시나요?
							  <br>간단한 원리만 알면 누구든 빠르고 쉽게 모션 천재가 될 수 있어요. <b>우리 가성비 있게 움직임을 그려봐요.</b>
						</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h4><b>3. 만든 이모티콘으로 재미있는 SNS 영상툰까지!</b></h4></div>
					<div style="margin-top: 3rem;">
						<img src="https://cdn.class101.net/images/15305c1b-7175-4a47-ad14-393bd7019ba3/1920xauto.webp" width="776" height="582">
					</div>
					<div class="content1" style="margin-top: 1rem;">
						<span><b>아이패드 동영상 편집 앱 하나로 무료로, 쉽고, 빠르게 영상툰을 만드는 법 알려드릴게요.</b>
							  <br>SNS에 업로드하고 캐릭터 팬층도 확보해 봐요.
						</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h4><b>그래서 어떻게 만드나요?</b></h4></div>
					<div style="margin-top: 3rem;">
						<img src="https://cdn.class101.net/images/9d16a382-891c-4138-ab8d-d17b4027c83a/1920xauto.webp" width="776" height="582">
					</div>
					<div class="content1" style="margin-top: 1rem;">
						<span>이 클래스에서는 아이패드 프로크리에이트와 PC 포토샵으로 이모티콘을 제작해 볼 거예요.
							  <br>이모티콘에 딱 필요한 기능들만 쏙쏙 뽑아 설명해드릴 테니 둘 중 편하신 프로그램을 선택해 보세요.
						</span>
					</div>
				</div>
				
				
				
				
				
				<!-- 커리큘럼 -->
				<div id="CR"> 
					<div class="content1" style="margin-top: 5rem;"><h4><b>커리큘럼</b></h4></div>
					<div class="content1" style="margin-top: 1rem;">
						<span>클래스를 신청하신 분들이 배우고 있는 커리큘럼입니다. 콘텐츠는 배우기 쉽게 영상, 수업노트, 첨부파일로 구성되어있습니다.</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>Welcome 승인되는 이모티콘 함께 만들어봐요!</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 안녕하세요, 이모티콘 작가 유랑입니다.</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 제 강의를 추천드리는 이유!</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 클래스 준비물을 알아볼까요?</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>1. 시장을 알고 나를 알면 백전 백승!</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 4년차 작가가 보는 요즘 이모티콘 시장과 트렌드는?</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 승인 율 높은 이모티콘 VS 승인율 낮은 이모티콘</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 작가의 승인 이모티콘 VS 미승인 이모티콘</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>2. 본격 작업 전, 디지털 드로잉 툴 알아봐요.</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 프로크리에이트 작업 환경 알아보기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 꿀 TIP: 작가님, 무슨 브러쉬 쓰세요? (+ 프로크리에이트 브러쉬 공유)</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 포토샵 작업 환경 알아보기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 꿀 TIP: 작업 속도를 줄여주는 포토샵의 액션 기능과 단축키 (+포토샵 브러쉬 공유)</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>3. 컨셉과 타겟에 맞춰 캐릭터 디자인하기</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 승인, 미승인을 가르는 가장 중요한 요소! ‘컨셉’과 '타겟' 정하기 (+컨셉, 타겟 리스트 제공)</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 승인 받는 캐릭터 vs 미승인 받는 캐릭터</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 쉽고 편하게 캐릭터 그리기 (+캐릭터 가이드 제공)</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 캐릭터 턴어라운드 그리기 (+턴어라운드 가이드 제공)</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>4. 개성만점! 참신한 이모티콘 기획하기</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 매력적인 아이디어를 찾기 위한 준비</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 이모티콘 메세지 구상하기 (+기획 가이드 제공)</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 돌려돌려, 비유를 활용한 이모티콘 기획법</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 밈(meme), 짤을 활용한 이모티콘 기획법</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>5. 멈춰있는 이모티콘 만들기</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 동작 가이드를 활용해 멈춘 이모티콘 그리기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 동그라미, 세모, 직선 세개로 모든 포즈 그리기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 꿀 TIP : 통일감 있게 24가지 멈춘 이모티콘 그리기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 효과와 폰트 알아보기</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>6. (기초) 움직이는 이모티콘 만들기 : 자주 쓰이는 이모티콘 모션</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 모션, 어렵지 않아요! 딱 이 원리만 알고 가세요.</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 모션 강의 진행 방법 (+모션 가이드 제공)</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> (프로크리에이트) 안녕~ 인사하는 움직임 만들기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> (포토샵) 폴짝! 뛰는 움직임 만들기</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>7. (심화) 움직이는 이모티콘 만들기 : 뻔한거 말고, 센스 넘치는 모션</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> (포토샵) 슉, 슈슉. 속도감 있는 움직임 만들기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> (프로크리에이트) 씰룩~! 엉덩이 흔드는 움직임 만들기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> (포토샵) 이모티콘의 꽃! 춤추는 움직임 만들기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 꿀 TIP : 효과 및 텍스트 애니메이션 (+효과 모션가이드 제공)</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>8. 이모티콘 제안하기</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 이모티콘 제안 파일 준비하고 제안 페이지 살펴보기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 이모티콘 제안 전 꿀팁!</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 미승인을 받았다면?</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>OUTRO 완강을 축하드립니다.</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 이제 여러분도 어엿한 이모티콘 작가!</span>
					</div>
				</div>	
				
				
				
				
				
				
				<!-- 키트소개 -->
				<div id="KT">
					<div class="content1" style="margin-top: 5rem;"><h4><b>키트소개</b></h4></div>
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
					<div style="margin-top: 1rem;">
						<img src="https://cdn.class101.net/images/8087d0a0-8f32-48b9-a312-e94ba5d77468/1920xauto.webp" width="776" height="272">
					</div>
					<div  class="content1" style="margin-top: 1rem;">
						<ul>
							<li>해당 클래스는 어도비 포토샵 프로그램을 이용해 진행됩니다.
							<li>원활한 수강을 위해 프로그램을 별도로 준비해주셔야 합니다.
							<li>프로그램의 가격 정보 등은 어도비 홈페이지에서 확인 가능합니다.
							<li>클래스는 포토샵, 일러스트레이터 CC 2021 버전으로 제작 되었습니다.
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
						<div id="orderTop"> 유랑 </div>
						<div id="classTitle">무명 이모티콘 작가가 인기 작가가 된 비결! 경쟁에서 살아남는 인기 이모티콘 만들기</div>
						<div>
							<a type="button" href="#" role="button" class="btn btn-light" id="buttonTop1">선물하기</a>
							<a type="button" href="#" role="button" class="btn btn-light" id="buttonTop2">바로수강가능</a>
						</div>
						<div class="text-end" id="coupon">쿠폰 적용 시, 5개월 할부</div>
						<div class="row justify-content-between">
							<div class="col" id="couponDC">쿠폰 할인가</div>
							<div class="col text-end" id="Price">40% 월 36,000원</div>
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
							<a type="button" href="#" role="button" class="btn btn-light"><i class="fa-solid fa-heart"></i> 11701</a>
							<a type="button" href="#" role="button" class="btn btn-light"><i class="fa-solid fa-arrow-up-from-bracket"></i> 공유하기</a>
							<a type="button" href="#" role="button" class="btn btn-light"><i class="fa-solid fa-gift"></i> 선물하기</a>
						</div>
						<div class="row justify-content-center">
							<a type="button" href="../order/orderRegForm_option.html" role="button" class="btn btn-danger" id="button3">구매하기 <i class="fa-solid fa-cart-shopping"></i></a>
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
				<div class="text-center"><a type="button" href="#" role="button" class="btn btn-light" id="endButton">문의하기</a></div>
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