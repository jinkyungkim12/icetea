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
		#leftList{
			color: black;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			font-size: 15px;
		}
		#aaa{
			color: black;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			font-size: 20px;
			margin-top: 1rem;
		}
		#bbb{
			background-color: black;
			width: 100%;
			height: 250px;
		}
		.discount{
			color: red;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 17px;
		}
		.price{
			color: black;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 20px;
		}
		.month{
			color: gray;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			font-size: 12px;
		}
		#subtitle{
			color: black;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
		}
		#subtitle2{
			color: gray;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
		}
		.eventTitle{
			color: black;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 18px;
		}
		.eventDday{
			color: red;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 15px;
		}
		.eventDate{
			color: black;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			font-size: 15px;
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
		.nav-pills {
		    --bs-nav-pills-border-radius: 0.375rem;
		    --bs-nav-pills-link-active-color: #ffffff;
		    --bs-nav-pills-link-active-bg: #ff8200;
		}
		.nav {
	    --bs-nav-link-padding-x: 1rem;
	    --bs-nav-link-padding-y: 0.5rem;
	    --bs-nav-link-font-weight: ;
	    --bs-nav-link-color: #7f7f7f;
	    --bs-nav-link-hover-color: #000000;
	    --bs-nav-link-disabled-color: #6c757d;
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
							<img alt="..." src="../../resources/images/profile.png" class="avatar avatar-rounded-circle"> 
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
	
	<!-- 상단메뉴 -->
	
	<nav class="navbar navbar-expand-lg bg-white">
	  <div class="container" id="aaa">
	    <div class="collapse navbar-collapse" id="navbarSupportedContent">
	      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	      	 <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            전체 카테고리
	          </a>
	          <ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="/product/productBestList">창업/부업</a></li>
	            <li><a class="dropdown-item" href="/product/productBestList">투자</a></li>
	            <li><a class="dropdown-item" href="/product/productBestList">직무교육</a></li>
	            <li><a class="dropdown-item" href="/product/productBestList">미술</a></li>
	            <li><a class="dropdown-item" href="/product/productBestList">사진/영상</a></li>
	            <li><a class="dropdown-item" href="/product/productBestList">요리</a></li>
	          </ul>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="/product/productBestList">BEST</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="#">98% 할인</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="#">이벤트</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="#">바로 수강</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="#">신규 클래스</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="#">오픈 예정</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="#">시그니처</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="#">키즈</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="#">원포인트 클래스</a>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>	

	<!-- 배너 -->
	<div class="container" id="bbb">
		<br><br><br>
		<div class="text-white" style="margin-left: 2rem;"><h1><b>카테고리별 주간 BEST</b></h1></div>
		<div class="text-white" style="margin-left: 2rem;"><h5>지금 가장 인기있는 클래스 보기</h5></div>
	</div>

	<!-- 상품 -->
	
	<!-- Best 항목 -->
	
	<div class="container" style="margin-top: 3rem;">
		<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
		  <li class="nav-item" role="presentation">
		    <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">창업,부업</button>
		  </li>
		  <li class="nav-item" role="presentation">
		    <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">투자</button>
		  </li>
		  <li class="nav-item" role="presentation">
		    <button class="nav-link" id="pills-contact-tab" data-bs-toggle="pill" data-bs-target="#pills-contact" type="button" role="tab" aria-controls="pills-contact" aria-selected="false">직무교육</button>
		  </li>
		  <li class="nav-item" role="presentation">
		    <button class="nav-link" id="pills-contact2-tab" data-bs-toggle="pill" data-bs-target="#pills-contact2" type="button" role="tab" aria-controls="pills-contact2" aria-selected="false">미술</button>
		  </li>
		  <li class="nav-item" role="presentation">
		    <button class="nav-link" id="pills-contact3-tab" data-bs-toggle="pill" data-bs-target="#pills-contact3" type="button" role="tab" aria-controls="pills-contact3" aria-selected="false">사진,영상</button>
		  </li>
		  <li class="nav-item" role="presentation">
		    <button class="nav-link" id="pills-contact4-tab" data-bs-toggle="pill" data-bs-target="#pills-contact4" type="button" role="tab" aria-controls="pills-contact4" aria-selected="false">요리</button>
		  </li>
		</ul>
		<div class="tab-content" id="pills-tabContent">
		  
		
		<!-- 창업, 부업 -->
		  
			<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab" tabindex="0">
				<div class="row" style="margin-top: 2rem;">
					<div class="col-3">
						<a class="nav-link" href="#"> 
							<div class="card" style="width: 18rem;">
							  <img src="https://cdn.class101.net/images/ad53f654-9f05-4050-a68c-c876869992d5/750xauto.webp" class="card-img-top" alt="...">
							  <div class="card-body">
							    <p class="card-text"><b>주언규PD</b><br>(2022년 전면개정판) 가장 빠르게 돈 버는 유튜브 채널 만드는 방법<br><br></p>
							    <hr>
							    <span class="discount">20%</span>
							    <span class="price">월 48,000원</span>
							    <span class="month">(5개월)</span>
							  </div>
							</div>
						</a>
					</div>	
					<div class="col-3">
						<div class="card" style="width: 18rem;">
						  <img src="https://cdn.class101.net/images/cf96702c-677f-4c37-951d-69c9d40376ed/750xauto.webp" class="card-img-top" alt="...">
						  <div class="card-body">
						    <p class="card-text"><b>선한부자 오가닉</b><br>자동으로 매달 천만원씩 통장에 들어오는 <구글 온라인 자동화수익 만들기></p>
						    <hr>
						    <span class="discount">20%</span>
						    <span class="price">월 64,00원</span>
						    <span class="month">(5개월)</span>
						  </div>
						</div>
					</div>	
					<div class="col-3">
						<div class="card" style="width: 18rem;">
						  <img src="https://cdn.class101.net/images/d106f91b-e912-4d39-ae86-83c6907ce964/750xauto.webp" class="card-img-top" alt="...">
						  <div class="card-body">
						    <p class="card-text"><b>라이프해커 자청</b><br>월 999만원 자동수익, 경제적 자유 얻는 구체적 가이드라인<br><br></p>
						    <hr>
						    <span class="discount">10%</span>
						    <span class="price">월 117,000원</span>
						    <span class="month">(5개월)</span>
						  </div>
						</div>
					</div>	
					<div class="col-3">
						<div class="card" style="width: 18rem;">
						  <img src="https://cdn.class101.net/images/c9fe0bf1-e41d-4c82-8e79-c49163e7919f/750xauto.webp" class="card-img-top" alt="...">
						  <div class="card-body">
						    <p class="card-text"><b>아로스</b><br>[2022년 New 노하우] 하루 1시간 월 100만원, 애드센스 블로그로 만드는 법!</p>
						    <hr>
						    <span class="discount">40%</span>
						    <span class="price">월 48,000원</span>
						    <span class="month">(5개월)</span>
						  </div>
						</div>
					</div>	
				</div>
				
				<div class="row" style="margin-top: 3rem;">
					<div class="col-3">
						<a class="nav-link" href="#"> 
							<div class="card" style="width: 18rem;">
							  <img src="https://cdn.class101.net/images/325b62f3-e531-425f-b9b8-e53fdadfc9b2/750xauto.webp" class="card-img-top" alt="...">
							  <div class="card-body">
							    <p class="card-text"><b>주언규PD</b><br>최신 개정판! 스마트스토어로 월 100만원 만들기, 평범한 사람이 돈을 만드는 비법</p>
							    <hr>
							    <span class="discount">20%</span>
							    <span class="price">월 30,000원</span>
							    <span class="month">(5개월)</span>
							  </div>
							</div>
						</a>
					</div>	
					<div class="col-3">
						<div class="card" style="width: 18rem;">
						  <img src="https://cdn.class101.net/images/9e7ad358-cf6e-45b1-b925-c2a01b172932/750xauto.webp" class="card-img-top" alt="...">
						  <div class="card-body">
						    <p class="card-text"><b>데브런</b><br><게임앱 수익창출>코딩없이 돈만보고 빌드박스로 게임제작 월 500만원 이상 벌기</p>
						    <hr>
						    <span class="discount">20%</span>
						    <span class="price">월 70,000원</span>
						    <span class="month">(5개월)</span>
						  </div>
						</div>
					</div>	
					<div class="col-3">
						<div class="card" style="width: 18rem;">
						  <img src="https://cdn.class101.net/images/46fd928c-6f8b-4f58-b020-f203bc579a40/750xauto.webp" class="card-img-top" alt="...">
						  <div class="card-body">
						    <p class="card-text"><b>딩사장</b><br>월 매출 3억 유럽 시장?! 퍼스트클래스 딩사장의 EU♥ROPE 유럽구매대행 클래스!</p>
						    <hr>
						    <span class="discount">25%</span>
						    <span class="price">월 170,000원</span>
						    <span class="month">(5개월)</span>
						  </div>
						</div>
					</div>	
					<div class="col-3">
						<div class="card" style="width: 18rem;">
						  <img src="https://cdn.class101.net/images/dfd02760-c3e2-4ea7-8eb1-a93cf10fa746/750xauto.webp" class="card-img-top" alt="...">
						  <div class="card-body">
						    <p class="card-text"><b>드로우앤드류</b><br>인스타그램으로 세상에 나의 가치를 알려보자. 인스타그램 퍼스널 브랜딩</p>
						    <hr>
						    <span class="discount">20%</span>
						    <span class="price">월 30,000원</span>
						    <span class="month">(5개월)</span>
						  </div>
						</div>
					</div>	
				</div>
			</div>
		
		  <!-- 투자 -->
		  <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab" tabindex="0">
		  	<div class="row" style="margin-top: 2rem;">
				<div class="col-3">
					<a class="nav-link" href="#"> 
						<div class="card" style="width: 18rem;">
						  <img src="https://cdn.class101.net/images/b50a51a8-b06d-4bb6-97a1-1371a179573a/750xauto.webp" class="card-img-top" alt="...">
						  <div class="card-body">
						    <p class="card-text"><b>부동산읽어주는남자</b><br>똑똑한 부동산 투자 방법, 내 집 마련으로 안정적인 삶까지 한 번에! 80만 유튜버 부읽남</p>
						    <hr>
						    <span class="discount">15%</span>
						    <span class="price">월 45,000원</span>
						    <span class="month">(5개월)</span>
						  </div>
						</div>
					</a>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/5586fe6a-dd52-438f-9f84-b8433b437313/750xauto.webp" class="card-img-top" alt="...">
					  <div class="card-body">
					    <p class="card-text"><b>JB 김종봉</b><br>돈을 이기는 탑트레이더들의 절대 기준은 분명히 존재합니다.<br><br></p>
					    <hr>
					    <span class="discount">20%</span>
					    <span class="price">월 150,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/4f71517b-279a-4b63-be49-3cc7a28c548d/750xauto.webp" class="card-img-top" alt="...">
					  <div class="card-body">
					    <p class="card-text"><b>마라스톡</b><br>아직도 미국주식 하세요? '중국 찐전문가'가 알려주는 <중국 주식에 자발적 장투하기></p>
					    <hr>
					    <span class="discount">20%</span>
					    <span class="price">월 46,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/855c8d66-0513-4fcb-aab2-441c72dac5ed/750xauto.webp" class="card-img-top" alt="...">
					  <div class="card-body">
					    <p class="card-text"><b>쿠자</b><br>내가 찍은 스마트폰 사진으로 블루오션에서 부수입 만드는 법 : NFT제작/마케팅/투자노하우</p>
					    <hr>
					    <span class="discount">20%</span>
					    <span class="price">월 58,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
			 </div>
		     <div class="row" style="margin-top: 3rem;">
				<div class="col-3">
					<a class="nav-link" href="#"> 
						<div class="card" style="width: 18rem;">
						  <img src="https://cdn.class101.net/images/811f18d4-8af6-4b1e-8bf2-df1dcd3b2e44/750xauto.webp" class="card-img-top" alt="...">
						  <div class="card-body">
						    <p class="card-text"><b>JB 김종봉</b><br>2000만원으로 5년 만에 경제적 자유를! 세상에 공개되지 않는 진짜 이야기!</p>
						    <hr>
						    <span class="discount">17%</span>
						    <span class="price">월 55,000원</span>
						    <span class="month">(5개월)</span>
						  </div>
						</div>
					</a>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/98404546-21f5-4654-9194-28f6a0c2c4f0/750xauto.webp" class="card-img-top" alt="..." width="286" height="215">
					  <div class="card-body">
					    <p class="card-text"><b>게임만드는아빠 (게만아)</b><br>하락장에도 수익나는 '비트코인 자동매매 봇' 만들기!(feat.업비트 현물•바이낸스 선물)</p>
					    <hr>
					    <span class="discount">19%</span>
					    <span class="price">월 60,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/bbe5928b-4c53-4d73-976b-aa8d39a08bf2/750xauto.webp" class="card-img-top" alt="...">
					  <div class="card-body">
					    <p class="card-text"><b>레오</b><br>금리 껑충? 전세대출 주담대 절약법! <레오의 1:1 대출 솔루션, 금융사 매칭까지!></p>
					    <hr>
					    <span class="discount">20%</span>
					    <span class="price">월 48,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/465527f2-55dd-463f-885e-72f4505e2a28/750xauto.webp" class="card-img-top" alt="...">
					  <div class="card-body">
					    <p class="card-text"><b>북극성주</b><br><새부동산 정책 완벽반영> 조정장에도 수익 올리는 부동산 투자매매법 [투자툴 제공</p>
					    <hr>
					    <span class="discount">30%</span>
					    <span class="price">월 58,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
			 </div>
		  </div>
		  
		  
		  
		  
		  <!-- 직무교육  -->
		  <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab" tabindex="0">
		  	<div class="row" style="margin-top: 2rem;">
				<div class="col-3">
					<a class="nav-link" href="#"> 
						<div class="card" style="width: 18rem;">
						  <img src="https://cdn.class101.net/images/381b2abc-9876-43c4-8194-adef24b6fc44/750xauto.webp" class="card-img-top" alt="...">
						  <div class="card-body">
						    <p class="card-text"><b>감성필</b><br>🧠 대중의 뇌를 사로잡는 스토리창작의 비밀(웹툰,웹소설,시나리오,메타버스)</p>
						    <hr>
						    <span class="discount">19%</span>
						    <span class="price">월 41,000원</span>
						    <span class="month">(5개월)</span>
						  </div>
						</div>
					</a>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/177ff548-9fb8-4319-b68a-632fccc8834d/750xauto.webp" class="card-img-top" alt="...">
					  <div class="card-body">
					    <p class="card-text"><b>디자이너 지인</b><br>재미있게 핵심만 쏙쏙! 포토샵 x 일러스트 디자인 클래스<br><br></p>
					    <hr>
					    <span class="discount">25%</span>
					    <span class="price">월 45,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/bb549ac0-36ab-467b-9109-e2aff549aa55/750xauto.webp" class="card-img-top" alt="...">
					  <div class="card-body">
					    <p class="card-text"><b>호야초</b><br>현직 10년차 디자이너의 블렌더로 완성하는 3D 애니메이션<br><br></p>
					    <hr>
					    <span class="discount">23%</span>
					    <span class="price">월 45,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/5e0efb21-ae0d-42c7-ba71-4f295592c80c/750xauto.webp" class="card-img-top" alt="...">
					  <div class="card-body">
					    <p class="card-text"><b>디자이너 지인</b><br>[중급반] 툴은 알지만, 디자인 못하는 사람 모여라!! 포토샵 x 일러스트 클래스</p>
					    <hr>
					    <span class="discount">19%</span>
					    <span class="price">월 55,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
			 </div>
		     <div class="row" style="margin-top: 3rem;">
				<div class="col-3">
					<a class="nav-link" href="#"> 
						<div class="card" style="width: 18rem;">
						  <img src="https://cdn.class101.net/images/4e4fe97f-c6e4-4831-a696-a3614a34d022/750xauto.webp" class="card-img-top" alt="..." width="286" height="215">
						  <div class="card-body">
						    <p class="card-text"><b>존코바</b><br>당신도 할 수 있다! 베테랑 실무자가 알려주는 모션그래픽의 모든 것<br><br></p>
						    <hr>
						    <span class="discount">34%</span>
						    <span class="price">월 39,000원</span>
						    <span class="month">(5개월)</span>
						  </div>
						</div>
					</a>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/03e5db01-7223-4e0e-ab79-b78df7d92bd6/750xauto.webp" class="card-img-top" alt="...">
					  <div class="card-body">
					    <p class="card-text"><b>존코바</b><br>26만 유튜버 존코바의 감각까지 더하는 포토샵 배우기<br><br></p>
					    <hr>
					    <span class="discount">19%</span>
					    <span class="price">월 46,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/5a2e21d2-a897-4f86-9da8-7df748f0165f/750xauto.webp" class="card-img-top" alt="...">
					  <div class="card-body">
					    <p class="card-text"><b>리베하얀</b><br>[교재 / 신규도서 무료 증정] 커리어 코스 - 리베하얀 프로의 웹 퍼블리셔 양성 과정</p>
					    <hr>
					    <span class="discount">28%</span>
					    <span class="price">월 208,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/c1902c00-4dca-4afc-86e9-f16c549cdde3/750xauto.webp" class="card-img-top" alt="...">
					  <div class="card-body">
					    <p class="card-text"><b>momographic</b><br>건축/인테리어 실무에서 쓰이는 스케치업 (모델링/렌더링) 마스터 과정</p>
					    <hr>
					    <span class="discount">20%</span>
					    <span class="price">월 48,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
			 </div>
		  </div>
		  
		  
		  
		  
		  <!-- 미술 -->
		  <div class="tab-pane fade" id="pills-contact2" role="tabpanel" aria-labelledby="pills-contact2-tab" tabindex="0">
		  	<div class="row" style="margin-top: 2rem;">
				<div class="col-3">
					<a class="nav-link" href="#"> 
						<div class="card" style="width: 18rem;">
						  <img src="https://cdn.class101.net/images/d1a0eadd-65c7-4aa0-bc2f-5ac09aa5f984/750xauto.webp" class="card-img-top" alt="..." width="286" height="215">
						  <div class="card-body">
						    <p class="card-text"><b>이연</b><br>70만 유튜버 이연이 알려주는 스케치 없이 완벽한 실루엣 드로잉<br><br></p>
						    <hr>
						    <span class="discount">21%</span>
						    <span class="price">월 63,000원</span>
						    <span class="month">(5개월)</span>
						  </div>
						</div>
					</a>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/3505bbce-6bb1-4e7b-8247-1a2993372ef1/750xauto.webp" class="card-img-top" alt="...">
					  <div class="card-body">
					    <p class="card-text"><b>둡</b><br>연필 하나만으로 모든 분위기를 담아내요, 둡의 연필 드로잉<br><br></p>
					    <hr>
					    <span class="discount">33%</span>
					    <span class="price">월 49,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/6758e56b-4a66-4ea2-9d91-cfec0602e7ea/750xauto.webp" class="card-img-top" alt="..." width="286" height="215">
					  <div class="card-body">
					    <p class="card-text"><b>미꽃</b><br>폰트보다 더 폰트같은 손글씨. 미꽃체 배워보세요<br><br></p>
					    <hr>
					    <span class="discount">21%</span>
					    <span class="price">월 52,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/a4d7dd5d-90ff-4461-a5f8-c303039e058c/750xauto.webp" class="card-img-top" alt="...">
					  <div class="card-body">
					    <p class="card-text"><b>리니</b><br>어색한 그림은 이제 안녕! 드로잉 기초부터 시작하는 리니의 펜드로잉</p>
					    <hr>
					    <span class="discount">41%</span>
					    <span class="price">월 59,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
			 </div>
		     <div class="row" style="margin-top: 3rem;">
				<div class="col-3">
					<a class="nav-link" href="#"> 
						<div class="card" style="width: 18rem;">
						  <img src="https://cdn.class101.net/images/fb3fa3bd-d3cb-4cc6-bba8-9d0eba4ad75a/750xauto.webp" class="card-img-top" alt="..." width="286" height="215">
						  <div class="card-body">
						    <p class="card-text"><b>초록담쟁이</b><br>'소삭 소삭' 그리움을 그리는 초록담쟁이의 색연필 드로잉</p>
						    <hr>
						    <span class="discount">21%</span>
						    <span class="price">월 83,000원</span>
						    <span class="month">(5개월)</span>
						  </div>
						</div>
					</a>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/c4166547-2517-49e6-b1df-f0baa53aeab8/750xauto.webp" class="card-img-top" alt="...">
					  <div class="card-body">
					    <p class="card-text"><b>둡</b><br>종이를 가득 채우는 부드럽고 감각적인 색감, 둡의 채색 인물화</p>
					    <hr>
					    <span class="discount">32%</span>
					    <span class="price">월 64,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/3b790ec2-54a2-45d6-bd45-5b971e776016/750xauto.webp" class="card-img-top" alt="..." width="286" height="215">
					  <div class="card-body">
					    <p class="card-text"><b>약국</b><br>약국과 함께 펜 하나로 그리는 분위기 있는 인물, 나만의 세계</p>
					    <hr>
					    <span class="discount">30%</span>
					    <span class="price">월 54,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/dcb19795-f722-472a-9a24-3850e49b4625/750xauto.webp" class="card-img-top" alt="...">
					  <div class="card-body">
					    <p class="card-text"><b>조맹</b><br>크로키로 찾아가는 나만의 선, 나만의 드로잉</p>
					    <hr>
					    <span class="discount">25%</span>
					    <span class="price">월 50,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
			 </div>
		  </div>
		  
		  
		  
		  
		  <!-- 사진영상  -->
		  <div class="tab-pane fade" id="pills-contact3" role="tabpanel" aria-labelledby="pills-contact3-tab" tabindex="0">
		  	<div class="row" style="margin-top: 2rem;">
				<div class="col-3">
					<a class="nav-link" href="#"> 
						<div class="card" style="width: 18rem;">
						  <img src="https://cdn.class101.net/images/fb85e06f-d17b-4af3-9016-8f917774f4b3/750xauto.webp" class="card-img-top" alt="...">
						  <div class="card-body">
						    <p class="card-text"><b>마세슾</b><br>기술보단 감각 배우기, 스마트폰으로 일상을 감성적으로 기록하는 법<br><br></p>
						    <hr>
						    <span class="discount">19%</span>
						    <span class="price">월 52,000원</span>
						    <span class="month">(5개월)</span>
						  </div>
						</div>
					</a>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/56573ce7-ab44-4b67-a244-0468f635f5d8/750xauto.webp" class="card-img-top" alt="...">
					  <div class="card-body">
					    <p class="card-text"><b>WANTHOW</b><br>15초 영상으로 나를 폭발적으로 알리는법, 숏폼 콘텐츠 크리에이터 되기!</p>
					    <hr>
					    <span class="discount">19%</span>
					    <span class="price">월 49,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/755b046b-2594-464f-a43d-41d95afa3e28/750xauto.webp" class="card-img-top" alt="...">
					  <div class="card-body">
					    <p class="card-text"><b>사진공원</b><br>꿈꾸던 색감을 그대로, 실패를 줄이는 촬영법부터 감성 보정까지!<br><br></p>
					    <hr>
					    <span class="discount">19%</span>
					    <span class="price">월 47,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/46280569-6949-4210-b6e6-c67b9469bc58/750xauto.webp" class="card-img-top" alt="..." width="286" height="215">
					  <div class="card-body">
					    <p class="card-text"><b>정멜멜</b><br>사진가 정멜멜의 가까워지고 멀어지며 나의 세계 편집하기<br><br></p>
					    <hr>
					    <span class="discount">35%</span>
					    <span class="price">월 47,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
			 </div>
		     <div class="row" style="margin-top: 3rem;">
				<div class="col-3">
					<a class="nav-link" href="#"> 
						<div class="card" style="width: 18rem;">
						  <img src="https://cdn.class101.net/images/a30c24b0-f7ff-4d3c-8b6e-811bc4f8a50a/750xauto.webp" class="card-img-top" alt="...">
						  <div class="card-body">
						    <p class="card-text"><b>kyung6film</b><br>금손남친 경식스가 알려주는 스마트폰 하나로 영상 만들기<br><br></p>
						    <hr>
						    <span class="discount">22%</span>
						    <span class="price">월 47,000원</span>
						    <span class="month">(5개월)</span>
						  </div>
						</div>
					</a>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/4a644867-e2a2-49f1-8168-7060d0c50410/750xauto.webp" class="card-img-top" alt="..." width="286" height="215">
					  <div class="card-body">
					    <p class="card-text"><b>민썸 minsome</b><br>8만 명을 사로잡은 감성 보정법 , 스마트폰 하나로 '팔로우를 부르는 색감 만들기'</p>
					    <hr>
					    <span class="discount">19%</span>
					    <span class="price">월 47,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/f1858d5c-0248-421b-8261-aae9c5a3e529/750xauto.webp" class="card-img-top" alt="..." width="286" height="215">
					  <div class="card-body">
					    <p class="card-text"><b>디어무이</b><br>감성 스타일리스트가 알려주는 영상 촬영, 연출, 그리고 편집<br><br></p>
					    <hr>
					    <span class="discount">22%</span>
					    <span class="price">월 48,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/480905ca-ebdb-47b8-97ed-09d20b0eb592/750xauto.webp" class="card-img-top" alt="...">
					  <div class="card-body">
					    <p class="card-text"><b>괴짜</b><br>스마트폰 카메라 300% 활용법 <기종 상관 없이 DSLR같은 풍경 사진 찍기></p>
					    <hr>
					    <span class="discount">19%</span>
					    <span class="price">월 47,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
			 </div>
		  </div>
		  
		  
		  
		  
		  <!-- 요리  -->
		  <div class="tab-pane fade" id="pills-contact4" role="tabpanel" aria-labelledby="pills-contact4-tab" tabindex="0">
		  	<div class="row" style="margin-top: 2rem;">
				<div class="col-3">
					<a class="nav-link" href="#"> 
						<div class="card" style="width: 18rem;">
						  <img src="https://cdn.class101.net/images/449f22c4-aeed-4209-9fe2-c65a629e1523/750xauto.webp" class="card-img-top" alt="...">
						  <div class="card-body">
						    <p class="card-text"><b>와인마시는 아톰</b><br>20년 경력의 와인 고수가 알려주는 샴페인의 모든 것<br><br></p>
						    <hr>
						    <span class="discount">19%</span>
						    <span class="price">월 57,000원</span>
						    <span class="month">(5개월)</span>
						  </div>
						</div>
					</a>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/95bfdae0-765d-4629-81c3-5f681f640283/750xauto.webp" class="card-img-top" alt="...">
					  <div class="card-body">
					    <p class="card-text"><b>포마이숑</b><br>요즘 대세! K-디저트란? 빵같이 폭신폭신한 이색 떡디저트<br><br></p>
					    <hr>
					    <span class="discount">41%</span>
					    <span class="price">월 63,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/a905b65f-bdea-4419-a447-43506aed6b59/750xauto.webp" class="card-img-top" alt="..." width="286" height="215">
					  <div class="card-body">
					    <p class="card-text"><b>브루어스커피</b><br>누구나 쉽고 재밌게 배우는 브루어스 구움과자 레시피의 모든 것.<br><br></p>
					    <hr>
					    <span class="discount">25%</span>
					    <span class="price">월 45,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/c32c2d94-a15d-4d9f-b82f-08d2981dc999/750xauto.webp" class="card-img-top" alt="...">
					  <div class="card-body">
					    <p class="card-text"><b>아하부장</b><br>58만 유튜버 아하부장의 <20만원으로 2000만원 아끼는 식당 창업 가이드 A to Z></p>
					    <hr>
					    <span class="discount">19%</span>
					    <span class="price">월 48,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
			 </div>
		     <div class="row" style="margin-top: 3rem;">
				<div class="col-3">
					<a class="nav-link" href="#"> 
						<div class="card" style="width: 18rem;">
						  <img src="https://cdn.class101.net/images/83152970-c7b0-487c-9b7a-b997d9908855/750xauto.webp" class="card-img-top" alt="...">
						  <div class="card-body">
						    <p class="card-text"><b>가토주니</b><br>1평에서 100평 건물주 신화! 청와대까지 입성한 가토주니의 <생크림 꽃케이크 클래스></p>
						    <hr>
						    <span class="discount">15%</span>
						    <span class="price">월 60,000원</span>
						    <span class="month">(5개월)</span>
						  </div>
						</div>
					</a>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/7ad59a68-ef7d-4769-8b2c-bcf7411badc6/750xauto.webp" class="card-img-top" alt="...">
					  <div class="card-body">
					    <p class="card-text"><b>리화쌤</b><br>샐러드만으로 맛과 양 모두 즐기는 샐러드 레시피 & 드레싱 클래스<br><br></p>
					    <hr>
					    <span class="discount">24%</span>
					    <span class="price">월 46,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/4721b28c-b625-4039-9583-f792e2d4461d/750xauto.webp" class="card-img-top" alt="...">
					  <div class="card-body">
					    <p class="card-text"><b>김밀란</b><br>이탈리아 현지 미슐랭 요리사에게 배우는 파스타, 뇨끼, 리조또! 프리미 피아띠 정복하기</p>
					    <hr>
					    <span class="discount">19%</span>
					    <span class="price">월 47,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
				<div class="col-3">
					<div class="card" style="width: 18rem;">
					  <img src="https://cdn.class101.net/images/9bbf24a7-0adf-44d1-96a4-ad4285364388/750xauto.webp" class="card-img-top" alt="...">
					  <div class="card-body">
					    <p class="card-text"><b>쥬쥬레시피</b><br>쇼케이스 가득 채우는 행복한 맛의 비밀, '매일 완판되는 타르트 만들기'</p>
					    <hr>
					    <span class="discount">19%</span>
					    <span class="price">월 47,000원</span>
					    <span class="month">(5개월)</span>
					  </div>
					</div>
				</div>	
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
	<br>
	<br>
	
<!-- end	 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/1d7c148109.js" crossorigin="anonymous"></script>
</body>
</html>