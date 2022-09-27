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
		@font-face {
		    font-family: 'Happiness-Sans-Regular';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2205@1.0/Happiness-Sans-Regular.woff2') format('woff2');
		    font-weight: 400;
		    font-style: normal;
		}
		#leftList{
			color: black;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			font-size: 15px;
		}
		#logoutButton{
			width: 7rem;
			background-color: #FF5600;
			color: white;
		}
		#containerFont{
			font-family: 'Happiness-Sans-Regular';
		}
		#containerFont2{
			font-family: 'Happiness-Sans-Regular';
		}
		#leveltap{
			background-color: #00B031;
			color: white;
		}
		.hrStyle{
			background: #ffffff;
			height: 2px;
			margin-top: 3rem;
		}
		.progressRate{
			color: red;
		}
		#button1{
			width: 100%;
			font-size: 20px;
			margin-top: 2rem;
			background-color: #F5F5F5;
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
		.nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active {
		    color: black;
		    background-color: var(--bs-nav-tabs-link-active-bg);
		    border-color: var(--bs-nav-tabs-link-active-border-color);
		}
		
		.nav-link {
		    display: block;
		    padding: var(--bs-nav-link-padding-y) var(--bs-nav-link-padding-x);
		    font-size: var(--bs-nav-link-font-size);
		    font-weight: var(--bs-nav-link-font-weight);
		    color: gray;
		    text-decoration: none;
		    transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out;
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
										<h5><b><c:out value="${sessName}"/></b></h5>
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
	
	<!-- 상단 -->
	<div class="container" id="containerFont">
		<div style="margin-top: 3rem;"><h3><b><a type="button" href="/member/mypage" class="nav-link"><c:out value="${sessName}"/></a></b></h3></div>
		<div><a type="button" href="/member/mypageModForm" class="nav-link"><h6><c:out value="${sessEmail}"/></h6></a></div>
	</div>
	<!-- 중간 -->
	<div class="container" id="containerFont2">
		<div class="row">
			<!-- 왼쪽 -->
			<div class="col-4">
				<div style="margin-top: 3rem;"><h5><b>내등급</b></h5></div>
				<div class="shadow p-3 mb-5 rounded" style="margin-top: 1rem;" id="leveltap">
					<div class="row justify-content-between">
						<div class="col-5"><h5><b><a type=button class="nav-link text-white" href="/member/mypageGrade">Lv. Amateur</a></b></h5></div>
						<div class="col-4 text-end"><span><a type=button class="nav-link text-white" href="/member/mypageGrade">혜택보기</a></soan></div>
					</div>
					<hr class="hrStyle">
					<div><b>10,000P</b>&emsp;<span>추가 적립시 다음 달 &nbsp; Lv. Professtional</span></div>
				</div>
				<div style="margin-top: 3rem;"></div>
				<div><h5><b>내정보</b></h5></div>
				<div style="margin-top: 2rem;">내 캐시</div>
				<div style="margin-top: 1rem;">내 포인트</div>
				<div style="margin-top: 1rem;">내 쿠폰</div>
				<div style="margin-top: 1rem;">주문 내역</div>
				<div style="margin-top: 1rem;">후기</div>
				<div style="margin-top: 3rem;"></div>
				<div><h5><b>맴버쉽</b></h5></div>
				<div style="margin-top: 2rem;">101 Prime</div>
				<div style="margin-top: 1rem;">Money+</div>
				<div style="margin-top: 3rem;"></div>
				<div><h5><b>메뉴</b></h5></div>
				<div style="margin-top: 2rem;">클래스 101앱 설치하기</div>
				<div style="margin-top: 1rem;">크리에이터 지원하기</div>
			</div>


			<!-- 오른쪽 -->
			<div class="col-8">
				
				<ul class="nav nav-tabs" id="myTab" role="tablist">
				  <li class="nav-item" role="presentation">
				    <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home-tab-pane" type="button" role="tab" aria-controls="home-tab-pane" aria-selected="true">마이페이지</button>
				  </li>
				  &emsp;
				  <li class="nav-item" role="presentation">
				    <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-tab-pane" type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false">주문 목록</button>
				  </li>
				  &emsp;
				  <li class="nav-item" role="presentation">
				    <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact-tab-pane" type="button" role="tab" aria-controls="contact-tab-pane" aria-selected="false">주문 상세</button>
				  </li>
				</ul>
				<div class="tab-content" id="myTabContent">
				  
				  
				  <!-- 첫 번째 탭 -->	
				  
				  <div class="tab-pane fade show active" id="home-tab-pane" role="tabpanel" aria-labelledby="home-tab" tabindex="0">
				  	<div style="margin-top: 2rem;"><h5><b>내 스토어 상품</b></h5></div>
					<div class="row">
						<div class="col-4">
							<img src="https://cdn.class101.net/images/dfd02760-c3e2-4ea7-8eb1-a93cf10fa746/375xauto.webp" width="260" height="200">
						</div>
						<div class="col-4">
							<img src="https://cdn.class101.net/images/cb2119ec-b977-49e3-a1a4-b674081ed809/750xauto.webp" width="260" height="200">
						</div>
						<div class="col-4">
							<img src="../../resources/images/mypage3.png" width="260" height="200">
						</div>
						<div class="col-4" style="margin-top: 1rem;">
							<span><b>인스타그램으로 세상에 나의 가치를 알려<br>보자. 인스타그램 퍼스널 브랜딩</b></span>
						</div>
						<div class="col-4" style="margin-top: 1rem;">
							<span><b>초보 그림러가 인기 작가가 되는 법, 콕스<br>의 독학비법서</b></span>
						</div>
						<div class="col-4" style="margin-top: 1rem;">
							<span><b>무명 이모티콘 작가가 인기 작가가 된 비<br>결!경쟁에서 살아남는 인기 이모티콘 만들기</b></span>
						</div>
						<div class="col-4" style="margin-top: 0.5rem;">
							<div class="row">
								<div class="col-4"><span class="progressRate"><small>50% 수강중</small></span></div>
								<div class="col-8 progress" style="margin-top: 0.7rem; width: 170px; height: 3px; padding-left: 0px; padding-right: 0px;">
								  <div class="progress-bar bg-danger" role="progressbar" aria-label="Example 1px high" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
						</div>
						<div class="col-4" style="margin-top: 0.5rem;">
							<div class="row">
								<div class="col-4"><span class="progressRate"><small>75% 수강중</small></span></div>
								<div class="col-8 progress" style="margin-top: 0.7rem; width: 170px; height: 3px; padding-left: 0px; padding-right: 0px;">
								  <div class="progress-bar bg-danger" role="progressbar" aria-label="Example 1px high" style="width: 75%;" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
						</div>
						<div class="col-4" style="margin-top: 0.5rem;">
							<div class="row">
								<div class="col-4"><span class="progressRate"><small>90% 수강중</small></span></div>
								<div class="col-8 progress" style="margin-top: 0.7rem; width: 170px; height: 3px; padding-left: 0px; padding-right: 0px;">
								  <div class="progress-bar bg-danger" role="progressbar" aria-label="Example 1px high" style="width: 90%;" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
						</div>
						<div class="col-4"><span style="color: gray; margin-top: 0.5rem;">수강기간 20일 남음</span></div>
						<div class="col-4"><span style="color: gray; margin-top: 0.5rem;">수강기간 50일 남음</span></div>
						<div class="col-4"><span style="color: gray; margin-top: 0.5rem;">수강기간 10일 남음</span></div>
					</div>
					<div style="margin-top: 2rem;"><h5><b>내가 본 상품</b></h5></div>
					<div class="row">
						<div class="col-4">
							<div class="card" style="width: 17rem;">
							  <img src="../../resources/images/p2.png" class="card-img-top" alt="...">
							  <div class="card-body">
							    <p class="card-text"><b>토익독학길잡이</b><br>[💣24시간] 국내 1위 토익 유튜버의 '해석을 위한 문법'<br><br></p>
							    <hr>
							    <span class="discount">46%</span>
							    <span class="price">월 24,200원</span>
							    <span class="month">(5개월)</span>
							  </div>
							</div>
						</div>	
						<div class="col-4">
							<div class="card" style="width: 17rem;">
							  <img src="../../resources/images/p3.png" class="card-img-top" alt="...">
							  <div class="card-body">
							    <p class="card-text"><b>아로스</b><br>[💣24시간] [2022년 New 노하우] 하루 1시간 월 100만원, 애드센스 블로그로 만드는 법!</p>
							    <hr>
							    <span class="discount">33%</span>
							    <span class="price">월 45,800원</span>
							    <span class="month">(5개월)</span>
							  </div>
							</div>
						</div>
					</div>
					<div>
						<a type="button" class="btn btn-light" id="button1"><b><i class="fa-solid fa-ticket"></i> 수강권 코드 등록하기</b></a>
					</div>	
				  </div>
				 
				<!-- 두 번째 탭 -->	
				  
				  <div class="tab-pane fade" id="profile-tab-pane" role="tabpanel" aria-labelledby="profile-tab" tabindex="0">
				  	<div class="row justify-content-between" style="margin-top: 2rem;">
					<div class="col-2"><span>2022.07.22</span></div>
					<div class="col-2 text-end"><span><a class="nav-link" type="button" href="#" style="color: #FF5600">주문 상세 보기</a></span></div>
					</div>
					<hr>
					<div class="row" style="margin-top: 2rem;"><h5><b>배송 완료</b></h5></div>
					<div class="row">
						<div class="col-3">
							<img src="https://cdn.class101.net/images/27b658a7-53e1-47ca-a1bd-6c9bb5f7f93b/2048xauto.webp" width="200px" height="140px">
						</div>
						<div class="col-9">
							<div><h5>[유랑] 무명 이모티콘 작가가 인기 작가가 된 비결! 경쟁에서 살아...</h5></div>
							<div><span>20주 수강권</span></div>
						</div>
					</div>	
					<div>
						<a type="button" class="btn btn-light" id="button1"><b><i class="fa-solid fa-ticket"></i> 지금 바로 수강하기</b></a>
					</div>
					<hr>
					<div style="margin-top: 1rem; color: #A9A9A9;"><h5><i class="fa-solid fa-truck"></i> 배송이 완료되었습니다.</h5></div>
					<div class="row" style="margin-top: 1rem;">
						<div class="col-3">
							<img src="https://cdn.class101.net/images/ff11d001-ede0-4559-8231-51ed204106b7/2048xauto.webp" width="148px" height="148px">
						</div>
						<div class="col-9">
							<div style="margin-top: 1rem;"><h6>iPad (구버전)</h6></div>
							<div style="color: #A9A9A9;"><span>옵션: PRO 11형 (3세대)/ 128GB/ 스페이스그레이/ Wi-Fi</span></div>
							<div style="margin-top: 3rem; color: #A9A9A9;"><span>수량 1개</span></div>
						</div>
					</div>
					<div class="row" style="margin-top: 1rem;">
						<div class="col-3">
							<img src="https://cdn.class101.net/images/89a3f6c0-9ccb-4234-83c3-81b8162bc638/2048xauto.webp" width="148px" height="148px">
						</div>
						<div class="col-9">
							<div style="margin-top: 1rem;"><h6>애플펜슬</h6></div>
							<div style="color: #A9A9A9;"><span>옵션: 애플펜슬 2세대</span></div>
							<div style="margin-top: 3rem; color: #A9A9A9;"><span>수량 1개</span></div>
						</div>
					</div>
					<div class="row justify-content-between" style="margin-top: 2rem;">
						<div class="col-2"><span>2022.05.17</span></div>
						<div class="col-2 text-end"><span><a class="nav-link" type="button" href="#" style="color: #FF5600">주문 상세 보기</a></span></div>
					</div>
					<hr>
					<div class="row" style="margin-top: 2rem;"><h5><b>배송 완료</b></h5></div>
					<div class="row">
						<div class="col-3">
							<img src="https://cdn.class101.net/images/dfd02760-c3e2-4ea7-8eb1-a93cf10fa746/375xauto.webp" width="200px" height="140px">
						</div>
						<div class="col-9">
							<div><h5>[드로우 앤드류] 인스타그램으로 세상에 나의 가치를 알려보자. 인스타...</h5></div>
							<div><span>20주 수강권</span></div>
						</div>
					</div>	
					<div>
						<a type="button" class="btn btn-light" id="button1"><b><i class="fa-solid fa-ticket"></i> 지금 바로 수강하기</b></a>
					</div>
					<div class="row justify-content-between" style="margin-top: 2rem;">
						<div class="col-2"><span>2022.01.01</span></div>
						<div class="col-2 text-end"><span><a class="nav-link" type="button" href="#" style="color: #FF5600">주문 상세 보기</a></span></div>
					</div>
					<hr>
					<div class="row" style="margin-top: 2rem;"><h5><b>배송 완료</b></h5></div>
					<div class="row">
						<div class="col-3">
							<img src="https://cdn.class101.net/images/cb2119ec-b977-49e3-a1a4-b674081ed809/750xauto.webp" width="200px" height="140px">
						</div>
						<div class="col-9">
							<div><h5>[콕스] 초보 그림러가 인기 작가가 되는 법, 콕스의 독학비법서</h5></div>
							<div><span>1년 수강권</span></div>
						</div>
					</div>	
					<div>
						<a type="button" class="btn btn-light" id="button1"><b><i class="fa-solid fa-ticket"></i> 지금 바로 수강하기</b></a>
					</div>
				  </div>
				  
				  <!-- 세 번째 -->
				  <div class="tab-pane fade" id="contact-tab-pane" role="tabpanel" aria-labelledby="contact-tab" tabindex="0">
				  	<div style="margin-top: 3rem;"><h4><b>2022.07.22 주문 상세 내역</b></h4></div>
					<hr class="hrstyle">
					<div style="margin-top: 2rem;"><h4><b>배송 완료</b></h4></div>
					<div style="margin-top: 2rem;"><span>결제수단</span></div>
					<hr>
					<div id="gray">
						<div class="row" style="margin-top: 1rem;">
							<div class="col-10"><span>총 상품금액</span></div>
							<div class="col-2 text-end"><span>1,300,000원</span></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<div class="col-10"><span>상품 할인 금액</span></div>
							<div class="col-2 text-end"><span> - 220,000원</span></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<div class="col-10"><span>쿠폰 할인 금액</span></div>
							<div class="col-2 text-end"><span> - 40,000원</span></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<div class="col-10"><span>배송비</span></div>
							<div class="col-2 text-end"><span> 0원</span></div>
						</div>
					</div>
					<hr style="margin-top: 1rem;">
					<div class="row justify-content-between" style="margin-top: 1rem;">
						<div class="col-2" id="finalPrice"><h5><b>총 결제 금액</b></h5></div>
						<div class="col-2 text-end" id="finalPrice"><span><h5><b>1,040,000원</b></h5></span></div>
					</div>
					<div class="row justify-content-between">
						<div class="col-3"><span>카카오 페이 결제 금액</span></div>
						<div class="col-2 text-end" id="finalPrice"><span>1,040,000원</span></div>
					</div>
					<hr class="hrstyle">
					<div style="margin-top: 2rem;"><h4><b>구매 물품</b></h4></div>	
					<div class="row">
						<div class="col-3">
							<img src="https://cdn.class101.net/images/27b658a7-53e1-47ca-a1bd-6c9bb5f7f93b/2048xauto.webp" width="200px" height="140px">
						</div>
						<div class="col-9">
							<div><h5>[유랑] 무명 이모티콘 작가가 인기 작가가 된 비결! 경쟁에서 살아...</h5></div>
							<div><span>20주 수강권</span></div>
						</div>
					</div>	
					<div>
						<a type="button" class="btn btn-light" id="button1"><b>환불하기</b></a>
					</div>
					<div style="margin-top: 3rem;"><h4><b>2022.05.17 주문 상세 내역</b></h4></div>
					<hr class="hrstyle">
					<div style="margin-top: 2rem;"><h4><b>배송 완료</b></h4></div>
					<div style="margin-top: 2rem;"><span>결제수단</span></div>
					<hr>
					<div id="gray">
						<div class="row" style="margin-top: 1rem;">
							<div class="col-10"><span>총 상품금액</span></div>
							<div class="col-2 text-end"><span>187,500원</span></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<div class="col-10"><span>상품 할인 금액</span></div>
							<div class="col-2 text-end"><span> - 37.500원</span></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<div class="col-10"><span>쿠폰 할인 금액</span></div>
							<div class="col-2 text-end"><span> - 0원</span></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<div class="col-10"><span>배송비</span></div>
							<div class="col-2 text-end"><span> 0원</span></div>
						</div>
					</div>
					<hr style="margin-top: 1rem;">
					<div class="row justify-content-between" style="margin-top: 1rem;">
						<div class="col-2" id="finalPrice"><h5><b>총 결제 금액</b></h5></div>
						<div class="col-2 text-end" id="finalPrice"><span><h5><b>150,000원</b></h5></span></div>
					</div>
					<div class="row justify-content-between">
						<div class="col-3"><span>카카오 페이 결제 금액</span></div>
						<div class="col-2 text-end" id="finalPrice"><span>150,000원</span></div>
					</div>
					<hr class="hrstyle">
					<div style="margin-top: 2rem;"><h4><b>구매 물품</b></h4></div>	
					<div class="row">
						<div class="col-3">
							<img src="https://cdn.class101.net/images/dfd02760-c3e2-4ea7-8eb1-a93cf10fa746/375xauto.webp" width="200px" height="140px">
						</div>
						<div class="col-9">
							<div><h5>[드로우 앤드류] 인스타그램으로 세상에 나의 가치를 알려보자. 인스타...</h5></div>
							<div><span>20주 수강권</span></div>
						</div>
					</div>	
					<div>
						<a type="button" class="btn btn-light" id="button1"><b>환불하기</b></a>
					</div>
					<div style="margin-top: 3rem;"><h4><b>2022.01.01 주문 상세 내역</b></h4></div>
					<hr class="hrstyle">
					<div style="margin-top: 2rem;"><h4><b>배송 완료</b></h4></div>
					<div style="margin-top: 2rem;"><span>결제수단</span></div>
					<hr>
					<div id="gray">
						<div class="row" style="margin-top: 1rem;">
							<div class="col-10"><span>총 상품금액</span></div>
							<div class="col-2 text-end"><span>375,000원</span></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<div class="col-10"><span>상품 할인 금액</span></div>
							<div class="col-2 text-end"><span> - 112,500원</span></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<div class="col-10"><span>쿠폰 할인 금액</span></div>
							<div class="col-2 text-end"><span> - 0원</span></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<div class="col-10"><span>배송비</span></div>
							<div class="col-2 text-end"><span> 0원</span></div>
						</div>
					</div>
					<hr style="margin-top: 1rem;">
					<div class="row justify-content-between" style="margin-top: 1rem;">
						<div class="col-2" id="finalPrice"><h5><b>총 결제 금액</b></h5></div>
						<div class="col-2 text-end" id="finalPrice"><span><h5><b>262,500</b></h5></span></div>
					</div>
					<div class="row justify-content-between">
						<div class="col-3"><span>카카오 페이 결제 금액</span></div>
						<div class="col-2 text-end" id="finalPrice"><span>262,500원</span></div>
					</div>
					<hr class="hrstyle">
					<div style="margin-top: 2rem;"><h4><b>구매 물품</b></h4></div>	
					<div class="row">
						<div class="col-3">
							<img src="https://cdn.class101.net/images/cb2119ec-b977-49e3-a1a4-b674081ed809/750xauto.webp" width="200px" height="140px">
						</div>
						<div class="col-9">
							<div><h5>[콕스] 초보 그림러가 인기 작가가 되는 법, 콕스의 독학비법서</h5></div>
							<div><span>1년 수강권</span></div>
						</div>
					</div>	
					<div>
						<a type="button" class="btn btn-light" id="button1"><b>환불하기</b></a>
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