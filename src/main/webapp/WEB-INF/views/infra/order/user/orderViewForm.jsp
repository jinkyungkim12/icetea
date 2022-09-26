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
		#containerFont{
			font-family: 'Happiness-Sans-Regular';
			width: 900px;
		}
		.hrstyle{
			border: 0;
		    height: 17px;
		    background: #616060;
		    margin-top: 2rem;
		}
		.down{
			color: #8F8F8F;
		}
		.input{
			width: 900px;
		}
		#gray{
			color: #8F8F8F;
		}
		#buttonPrice{
			width: 500px;
			height: 40px;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			background-color: #FF5600;
			margin-top: 2rem;
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
	
	<!-- content -->
	
	<div class="container" id="containerFont">
		<div class="row" style="margin-top: 5rem;"><h2><b>2022.07.22 결제 내역</b></h2></div>
		<hr class="hrstyle">
		<div class="row" style="margin-top: 3rem;"><h4><b>구매 정보</b></h4></div>
		<div class="row" style="margin-top: 0.5rem;"><span>유랑 온라인 수강권 (20주)</span></div>
		<div><img src="https://cdn.class101.net/images/27b658a7-53e1-47ca-a1bd-6c9bb5f7f93b/2048xauto.webp" width="150px" height="120px"></div>
		<div class="row" style="margin-top: 3rem;"><h4><b>선택한 구성품</b></h4></div>
		<div class="row" style="margin-top: 1rem;">
			<div class="col-3">
				<img src="https://cdn.class101.net/images/ff11d001-ede0-4559-8231-51ed204106b7/2048xauto.webp" width="148px" height="148px">
			</div>
			<div class="col-9">
				<div style="margin-top: 1rem;"><h5><b>iPad (구버전)</b></h5></div>
				<div>옵션: PRO 11형 (3세대)/ 128GB/ 스페이스그레이/ Wi-Fi</div>
				<div style="margin-top: 3rem;">수량 1개</div>
			</div>
		</div>	
		<div class="row" style="margin-top: 1rem;">
			<div class="col-3">
				<img src="https://cdn.class101.net/images/89a3f6c0-9ccb-4234-83c3-81b8162bc638/2048xauto.webp" width="148px" height="148px">
			</div>
			<div class="col-9">
				<div style="margin-top: 1rem;"><h5><b>애플펜슬</b></h5></div>
				<div>옵션: 애플펜슬 2세대</div>
				<div style="margin-top: 3rem;">수량 1개</div>
			</div>
		</div>
		<br>	
		<hr class="hrstyle">
		<div class="row" style="margin-top: 3rem;"><h4><b>구매자 배송 정보</b></h4></div>
		<div class="row" style="margin-top: 1rem;">
			<label class="form-label"><b>받으시는 분</b></label>
	   		<div class="input"><input type="text" class="form-control" value="김진경" placeholder="" disabled readonly></div>
	   		<div style="margin-top: 0.5rem;"><span class="down">배송시 수령인  확인을 위해 실명을 입력해 주세요.</span></div>
		</div>
		<div class="row" style="margin-top: 1rem;">
			<label class="form-label"><b>휴대폰 번호</b></label>
	   		<div class="input"><input type="text" class="form-control" value="010-0000-0000" placeholder="" disabled readonly></div>
		</div>
		<div class="row" style="margin-top: 1rem;">
			<label class="form-label"><b>배송주소</b></label>
		</div>
		<div class="row">
			<div class="input"><input type="text" class="form-control" value="12345" placeholder="" readonly></div>
		</div>
		<div class="row" style="margin-top: 1rem;">
			<div class="input"><input type="text" class="form-control" value="서울시 은평구 oo동" placeholder="" readonly></div>
		</div>
		<div class="row" style="margin-top: 1rem;">
			<div class="input"><input type="text" class="form-control" value="래미안 oo동 oo호" placeholder="" readonly></div>
		</div>
		<div class="row" style="margin-top: 1rem;">
			<label class="form-label"><b>배송 요청 사항</b></label>
	   		<div class="input"><input type="text" class="form-control" value="예) 경비실에 맡겨주세요." placeholder="" readonly></div>
		</div>
		<hr class="hrstyle">
		<div class="row" style="margin-top: 3rem;"><h4><b>결제 성공</b></h4></div>
		<div class="row" style="margin-top: 1.5rem;"><h6><b>결제 수단</b></h6></div>
		<hr style="margin-top: 1rem;">
		<div id="gray">
			<div class="row" style="margin-top: 1rem;">
				<div class="col-10"><span><b>총 상품금액</b></span></div>
				<div class="col-2 text-end"><span>1,300,000원</span></div>
			</div>
			<div class="row" style="margin-top: 1rem;">
				<div class="col-10"><span><b>상품 할인 금액</b></span></div>
				<div class="col-2 text-end"><span> - 220,000원</span></div>
			</div>
			<div class="row" style="margin-top: 1rem;">
				<div class="col-10"><span><b>쿠폰 할인 금액</b></span></div>
				<div class="col-2 text-end"><span> - 40,000원</span></div>
			</div>
			<div class="row" style="margin-top: 1rem;">
				<div class="col-10"><span><b>배송비</b></span></div>
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
		<div class="row justify-content-center" style="margin-top: 1rem;">
			<a type="button" href="/home" role="button" class="btn btn-danger" id="buttonPrice">완료 하기</a>
		</div>	
	</div>
	<div></div>
	<div></div>
	<div></div>
	
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