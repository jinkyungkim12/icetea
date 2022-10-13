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
								<a href="/member/mypage" class="dropdown-item text-center" style="color: #FF5600">마이페이지 <i class="fa-solid fa-angle-right"></i></a> 
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
				<img src="../../resources/images/head3_1.png" width="750px" height="519px">
			</div>
			<div class="col">
				<img src="../../resources/images/head3_2.png" width="510px" height="519px">
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
					<div class="col-4"><span class="class2"><b>클래스 분량</b> 9개 챕터, 27개 세부강의</span></div>
					<div class="col-3"><span class="class2"><b>수강 가능일</b> 바로 수강 가능</span></div>
					<div class="col-3"><span class="class2"><b>자막 포함 여부</b> 포함 안됨</span></div>
					<div class="col-2"><span></span></div>
				</div>
				
				
				
				 
				<!-- 후기 -->
				<div id="RV">
					<div id="reviewHead"><h3>실제 수강생들의<br>생생한 스토리</h3></div>
					<div style="margin-top: 3rem"><img src="../../resources/images/review_3.png" width="850px" height="410px"></div>
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
							<b>4.9</b>&emsp;<span>총 5개</span>
						</div>
					</div>
					<div class="row">
						<div class="col-6">
							<div id="reviewID"><span><i class="fa-solid fa-circle-user"></i> 신난다뿅</span></div>
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
									<span class="reviewDate">07월 05일 17:01:25&emsp;<b>35% 수강 후 작성</b></span>
								</div>
							</div>
							<div class="reviewContent">
								<span>
									마음만 앞서서 부업 강의를 몇 개째 듣는지 모르겠어요.
									<br>항상 초보자도 할 수 있다는 광고글에 혹해서 수강신청 후 강의를  
									<br>들으면 이론은 머릿속으로 이해는 되지만
									<br>제가 실천하기에는 무리가 있었습니다...
								</span>
							</div>
						</div>
						<div class="col-6">
							<div id="reviewID"><span><i class="fa-solid fa-circle-user"></i> 호두아빠</span></div>
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
									<span class="reviewDate">07월 15일 12:25:07&emsp;<b>70% 수강 후 작성</b></span>
								</div>
							</div>
							<div class="reviewContent">
								<span>
									저는 네이버 블로그만 8년 해오던 블로거였습니다. 
									<br>하지만 우연히 아로스님의 티스토리 블로그 강의를 접하게 
									<br>되었고 클래스101에서 아로스님의 소개 포트폴리오를  
									<br>보고서 "내가 찾던 강의가 이거다"
									<br>바로 강의 결제를 하였습니다. 큰 기대를 품고서 강의를 보게... 
								</span>
							</div>
						</div>
					</div> 
					<div class="row justify-content-center">
						<a type="button" href="#" role="button" class="btn btn-light" id="reviewButton">3개의 후기 더 보기</a>
					</div>
				</div>
				
				
				
				
				
				<!-- 상품 상세 정보 -->
				<div id="IF">
					<div style="margin-top:5rem;"><h2><b>입문자</b>분들을 위한 <br><b>수익형 블로그 만들기, 블로그 제작 방법, 애드센스 사용법</b> <br>클래스입니다.</h2></div>
					<div class="content1">
						<div class="row" style="margin-top: 5rem;">
							<div class="col">
								<div><h3><i class="fa-solid fa-calendar-days"></i></h3></div>
								<div><h3><b>20주 수강 가능</b></h3></div>
								<div><h5>수강 기간 내 무제한 수강 가능합니다</h5></div>
							</div>
							<div class="col">
								<div><h3><i class="fa-brands fa-youtube"></i></h3></div>
								<div><h3><b>35개 콘텐츠</b></h3></div>
								<div><h5>총 35개의 강의를 수강하실 수 있습니다</h5></div>
							</div>
						</div>
					</div>
					<div class="content1" style="margin-top: 5rem;"><h3><b>😲초보였던 제가,월 천 만원을 벌었다면 믿겨지시나요?</b></h3></div>
					<div style="margin-top: 1rem;">
						<img src="https://cdn.class101.net/images/8ba9d44f-9bec-4d77-82c3-44b5459ed15b/1920xauto.webp" width="776" height="452">
					</div>
					<div class="content1" style="margin-top: 1rem;">
						<span>저는 특별한 사람이 아닙니다. 평범한 사람이 블로그를 통해 돈을 벌고 꾸준히 수익을 내고 있는 과정을,. 
						<br>제가 아는 모든 것들을 담았습니다.
						<br>
						<br>잘난 사람만 달성할 수 있는 것처럼 보였던, 월 천 만원 수익의 기쁨을 여러분과 함께 공유하고 싶습니다.
						<br>
						<br>"저는 블로그 시작한지 <b>3개월만에 월 100만원 벌었고,</b> 지금은 <b>월 1,000만원 달성했습니다."</b>
						</span>
						<div style="margin-top: 2rem;">
							<img src="https://cdn.class101.net/images/9ae93203-a54b-4097-96f9-cb3b6bd1ec8f/1920xauto.webp" width="776" height="350">
						</div>
						<br>
						<span>간혹 총 매출 1억을 이야기하며, 순수익을 감추는 분이 계십니다. 하지만, 애드센스는 세금을 제외하고 모두 순수익입니다.
						<br>
						<br><b>무자본 투잡</b>이기에 실패해도 손해볼 게 없습니다. 
						<br>재고도 임대료도 없는 무자본 투잡, 지금 당장 시작하지 않을 이유가 없습니다.
						<br>
						<br><b>이렇게 말씀드리면 밤낮없이 바쁘게 포스팅 할 것 같지만,</b> 전혀 그렇지 않습니다. 
						<br>저도 여러분처럼 회사를 다니기에, <b>블로그에 투자하는 시간은 하루 2시간을 넘지 않는 걸 원칙</b>으로 하고 있습니다.
						</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h3><b>💵 강의를 통해 배울 수 있는 3가지</b></h3></div>
					<div style="margin-top: 1rem;">
						<img src="https://cdn.class101.net/images/87cab0e5-3748-4701-bd84-6d03a9212d47/1920xauto.webp" width="776" height="452">
					</div>
					<div class="content1" style="margin-top: 1rem;">
						<span><b>#1. 수익이 생깁니다!</b>
						<br> 티스토리 블로그로 돈 벌 수 있는 과정을 모두 알려드립니다.
						<br>제 강의를 완강하고 한 걸음씩 내딛다 보면, 어느새 월 100만원 수익을 벌고 있는 자신을 볼 수 있을거라 자신있게 말씀드립니다.
						<br>
						<br><b>#2. 하루 1시간으로 수익내는 방법을 배웁니다!</b>
						<br>애드센스는 부업으로 시작해서 본업으로 갈 수 있습니다. 
						<br> 하지만, 처음 시작은 투잡답게 하루 1시간만 투자해서 최고의 효율을 뽑아내는 방법을 알려드립니다.
						<br>단언컨대, 어떤 투잡보다 쉽게 돈 벌 수 있습니다.
						<br>
						<br><b>#3. 블로그 운영 순서를 알게 됩니다!</b>
						<br>짜여진 순서대로만 진행하면 됩니다. 
						<br>초보자도 쉽게 따라할 수 있도록 여러분 눈높이에 난이도를 맞췄습니다.
						<br>초등학생도 따라하고 돈 벌 수 있게 만든 쉬운 강의입니다.
						</span>
					</div>
					<div style="margin-top: 3rem;">
						<img src="https://cdn.class101.net/images/5649c4ea-16c3-4676-8057-dc0bce528faf/1920xauto.webp" width="776" height="1017">
					</div>
					<div class="content1" style="margin-top: 1rem;">
						<span><b>#1. 승인 챌린지 및 무료 컨설팅</b>
						<br>아로스 제자님들은 <b>작심삼일</b> 안 됩니다! <b>무료 챌린지를 참여권</b>을 드리며, 성공하시면 글 컨설팅까지 해드립니다.
						<br>
						<div style="margin-top: 3rem;"><img src="https://cdn.class101.net/images/a80bd845-6651-45a4-978c-882b22fb531e/1920xauto.webp" width="776" height="200"></div>
						<br><b>#2. 성공을 바라는 마음 "제자와 소통"</b>
						<br>학습에 필요한 <b>질문/댓글에 100% 응답</b>합니다. 제자들이 월 100만원 버는데 이만큼 진심입니다!
						<br>
						<div style="margin-top: 3rem;"><img src="https://cdn.class101.net/images/c1a1d368-a563-4ffe-9641-f20b6e3b1e99/1920xauto.webp" width="776" height="600"></div>
						<br><b>#3. 강의 퀄리티는 곧 "수강생 수익"</b>
						<br>짜여진 아로스는 부업 강사 중 유일하게, 수강생 수익 100% 공개합니다. 그만큼 자신 있습니다.
						<br>
						<div style="margin-top: 3rem;"><img src="../../resources/images/view_3.png" width="776" height="550"></div>
						<br><b>#4. 제자들끼리 파이팅하는 "1,500명 소통방"</b>
						<br>종이 한 장은 쉽게 찢어지지만, 종이 100장은 힘 쌘 사람도 찢기 힘듭니다.
						<br>파이팅 넘치는 1,500명 제자와 함께라면 당신도 덩달아 경제적 자유를 누릴 수 있습니다!
						<br>
						<div style="margin-top: 3rem;"><img src="https://cdn.class101.net/images/d05f311a-741a-4fec-8f5c-bcaa6fa4a157/1920xauto.webp" width="776" height="535"></div>
						<br><b>#5. 월 100만원 이상을 실현시킬 "아로스 칼럼"</b>
						<br>100만원을 벌고 나면, 더 많은 돈을 벌고 싶은 것이 당연합니다. 
						<br>아로스 제자들은 심화된 내용을 아백 홈페이지 칼럼에서 무료로 배울 수 있습니다.
						<br>
						</span>
					</div>
				</div>
				
				
				
				
				
				<!-- 커리큘럼 -->
				<div id="CR"> 
					<div class="content1" style="margin-top: 5rem;"><h4><b>커리큘럼</b></h4></div>
					<div class="content1" style="margin-top: 1rem;">
						<span>클래스를 신청하신 분들이 배우고 있는 커리큘럼입니다. 콘텐츠는 배우기 쉽게 영상, 수업노트, 첨부파일로 구성되어있습니다.</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>Welcome 안녕하세요, 아로스의 수익형 블로그입니다.</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 초보자도 애드센스로 월100만원 버는 방법 3가지</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 코칭권 200% 활용하기</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>1. 당신의 "두번째 월급"</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 애드센스가 "투잡 끝판왕인 3가지 이유"</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 모든 블로그 중 티스토리가 "돈 가장 많이 버는 이유"</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 돈 벌려면 블로그 최적화 세팅부터 해라</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>2. '하루만에' 신청하는 애드센스 승인 방법</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 가산점 받는 "애드센스 전용 글쓰기"</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 애드센스 2배 빨리 승인받는 "숨은 방법'"</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 이것 안하면 애드센스 승인 못받아요</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 애드센스 승인나는 "글 주제"는 따로 있습니다</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 구글 AI도 속이는 "애드센스 승인 꼼수"</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 작심삼일을 금지한다 "애드센스 챌린지"(feat. VIP 수강생 특별혜택)</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> [NEW] 애드센스 신청/비승인 나면 해야할 3가지</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 구글, 네이버, 줌에서 돈버는 방법</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 애드센스 광고 설정 잘못하면 "광고 정지" 당해요</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>3. 돈 되는 블로그 찾기</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 당신을 지치게 할 "롱테일 블로그"</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 모두가 찬양하는 "이슈 블로그 득과실"</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 고수익 끝판왕 "외부유입 블로그"</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 이것 모르면 뼈저리게 후회할 "블로그 운영 테크"</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>4. 무조건 상위노출 되는 "이슈블로그 100% 활용방법" ①</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 키워드가 전부다. "이슈키워드 찾는 방법"</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 초보자를 위한 "이슈블로그 쉽게 쓰는 노하우"</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 사람들이 열광하는 "이슈블로그 만드는 방법" (Tip. 다음 상위노출 100% 방법)</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> "제목" 하나로 200만원 벌었던 이야기</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> "사진"으로 인기 블로그 만드는 방법</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>5. 무조건 상위노출 되는 "이슈블로그 100% 활용방법" ②</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 저품질 걸리는 "진짜 이유 3가지"</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 저품질 정복하는 "3가지 방법"</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 저품질 역으로 활용하는 "필살기"</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> "1초만에 애드센스 승인" 받는 방법</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>6. 1시간으로 월 100만원 가능한 "NEW 블로그"</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> "고수 VS 하수" 차이는 외부유입 블로그에서 결정된다.</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> "하루 10만원"도 가능한 글쓰기 핵심 ①/span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> "하루 10만원"도 가능한 글쓰기 핵심 ②</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 외부유입으로 쉽게 돈 버는 방법</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>7. 광고대행사 영업비밀 "외부유입 블로그 운영방법 3가지"</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 아로스만 가르쳐 주는 "고수익 글주제 3가지"</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 지식인으로 돈 버는 "시크릿 노하우"(feat. 월3.3만원 프로그램 무료 제공)</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 네이버 카페에서 "글 1개로 200만원" 버는 비결</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>OUTRO 완강을 축하드립니다!</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 진짜 하고 싶었던 말</span>
					</div>
				</div>	
				
				
				
				
				
				
				<!-- 키트소개 -->
				<div id="KT">
					<div class="content1" style="margin-top: 5rem;"><h4><b>키트소개</b></h4></div>
					<div class="content1" style="margin-top: 5rem;"><h5><b>💌 애드센스 전문가 'AROS'가 알려주는 1:1코칭권</b></h5></div>
					<div style="margin-top: 3rem;">
						<img src="https://cdn.class101.net/images/8e7b9f93-b7ea-4486-b341-0689629c27d6/2048xauto.webp" width="776" height="1186">
					</div>
					<div class="content1">
						<ul style="margin-top: 3rem;">
							<li>1개의 코칭권은 1회 사용이 가능합니다. 1회 사용시 질문은 2개까지 할 수 있습니다.
							<li>1개의 질문 당 250자 내외의 답변을 해드립니다.
							<li>코칭은 질문 접수일 기준으로 답변 되며, 최대 1주일이 소요됩니다.
							<li>코칭권은 애드센스 비승인, 현재 수익형 블로그를 운영하는 과정에서 어려움이 있을 때 사용 가능합니다.
							<li>그 외 개인적으로 답변 할 수 있는 질문에 최대한 답변해드립니다.
							<li>코칭권은 구매일로부터 20주간 사용하실 수 있습니다.
							<li>기간 내 미사용 시 환불되지 않습니다.
						</ul>
					</div>
					<div class="content1" style="margin-top: 3rem;"><span><b>📩 키트는 일부 변동될 수 있으며, 변동될 시 충분히 안내됩니다.</b></span></div>
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
						<div id="orderTop">아로스</div>
						<div id="classTitle">하루 1시간 월 100만원, 애드센스 블로그로 만드는 법!</div>
						<div>
							<a type="button" href="#" role="button" class="btn btn-light" id="buttonTop1">선물하기</a>
							<a type="button" href="#" role="button" class="btn btn-light" id="buttonTop2">바로수강가능</a>
						</div>
						<div class="text-end" id="coupon">쿠폰 적용 시, 5개월 할부</div>
						<div class="row justify-content-between">
							<div class="col" id="couponDC">쿠폰 할인가</div>
							<div class="col text-end" id="Price">30% 월 35, 000원</div>
						</div>
						<div class="row justify-content-between" id="totalDC">
							<div class="col">총 할인액</div>
							<div class="col text-end">- 75,000원</div>
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
							<a type="button" href="#" role="button" class="btn btn-light"><i class="fa-solid fa-heart"></i> 7000</a>
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