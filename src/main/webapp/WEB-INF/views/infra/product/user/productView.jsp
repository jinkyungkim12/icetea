<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>
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
		.nav-link{
			color: black;
		}
		.avatar-rounded-circle{
			width: 50px;
			height: 50px;
			border-radius: 100%;
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
				    <div class="row">
						<select id="shOption" name="shOption" class="form-select" aria-label="Default select example" style="width: 150px;">
						  <option value="" <c:if test="${empty vo.shOption}">selected </c:if>>검색구분</option>
						  <option value="1" <c:if test="${vo.shOption eq 1}">selected </c:if>>카테고리</option>
						  <option value="2" <c:if test="${vo.shOption eq 2}">selected </c:if>>강의제목</option>
						</select>
				        <input class="form-control me-2" type="search" placeholder="검색어를 입력하세요." aria-label="Search" style="width: 300px;">
				        <button class="btn btn-outline-dark" id="btnSearch" style="width: 100px;">Search</button>
			        </div>
				    </div>
				 </nav>  
			</div>
	 	
			
			<!-- 로그인 전	 -->
			<c:if test="${sessSeq eq null}">
				<div class="col">
					<ul class="nav justify-content-end" id="leftList">
						<li class="nav-item"><a class="nav-link" aria-current="page"
							href="#">크리에이터 지원</a></li>
						<li class="nav-item"><a class="nav-link" href="#">기업교육</a></li>
						<li class="nav-item"><a class="nav-link" href="/member/memberLogin">로그인</a></li>
					</ul>
				</div>
			</c:if>
			
			<!-- 로그인 후 -->
			<c:if test="${sessSeq ne null}">
				<div class="col">
					<div class="row text-end">
						<div class="dropdown">
							<a href="#" id="sidebarAvatar" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<img alt="..." src="
								<c:choose>
									<c:when test = "${sessUserImage ne null}">${sessUserImage}</c:when>
									<c:otherwise>../resources/images/profileimg.png</c:otherwise>
								</c:choose>
								" class="avatar avatar-rounded-circle">  
							</a>
							<div class="dropdown-menu dropdown-menu-end" aria-labelledby="sidebarAvatar">
								<div class="container">
									<div class="row">
										<div class="col-4 text-center">
											<img alt="..." src="
											<c:choose>
												<c:when test = "${sessUserImage ne null}">${sessUserImage}</c:when>
												<c:otherwise>../resources/images/profileimg.png</c:otherwise>
											</c:choose>
											" class="avatar avatar-rounded-circle"> 
										</div>
										<div class="col-8 text-center" style="margin-top: 0.9rem;">
											<h5><b><c:out value="${sessName}"/></b></h5>
										</div>
									</div>
									<a href="/member/mypage" class="dropdown-item text-center" style="color: #FF5600">마이페이지 <i class="fa-solid fa-angle-right"></i></a> 
									<hr class="dropdown-divider">
									<div class="row justify-content-center"><button type="button" class="btn btn-light rounded rounded-pill" id="logoutButton">Logout</button></div>
								</div>
							</div>
						</div>
					</div>	
				</div>
			</c:if>
		</div>
	</div>
	
	<!-- 상세 메인 이미지 -->
	<form id="form" name="form" method="post" enctype="multipart/form-data">
	
	<div class="container" style="margin-top: 3rem;">
		<div class="row">
		
		<!-- 	top image 2ea -->	
			<div class="col">
				<img src="${listContent[1].path}${listContent[1].uuidName}" width="691px" height="500px">
			</div>
			<div class="col">
				<div><img src="${listContent[2].path}${listContent[2].uuidName}" width="550px" height="500px"></div>
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
					<div id="reviewHead"><h5>실제 수강생 후기</h5></div>
					<div class="text-end"><a type="button" href="/review/reviewForm" role="button" class="btn btn-outline-dark">후기 작성하기</a></div>
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
				
				
				<!-- 상품 상세 정보 image-->
				<div id="IF" style="margin-top: 3rem;">
					<img src="${listContent[3].path}${listContent[3].uuidName}" style="width: 870px;">
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
						<div id="orderTop"><c:out value="${item.category}"/></div>
						<div id="classTitle"><c:out value="${item.title}"/></div>
						<div>
							<a type="button" href="#" role="button" class="btn btn-light" id="buttonTop1">선물하기</a>
							<a type="button" href="#" role="button" class="btn btn-light" id="buttonTop2">바로수강가능</a>
						</div>
						<div class="text-end" id="coupon">쿠폰 적용 시, 5개월 할부</div>
						<div class="row justify-content-between">
							<div class="col" id="couponDC">쿠폰 할인가</div>
							<div class="col text-end" id="Price"><c:out value="${item.discountRate}"/>% 월 <fmt:formatNumber type="number" value="${item.price/5}" pattern="#,###"/>원</div>
						</div>
						<div class="row justify-content-between" id="totalDC">
							<div class="col">총 할인액</div>
							<div class="col text-end">- <fmt:formatNumber type="number" value="${item.price*((item.discountRate)*0.01)}" pattern="#,###"/>원</div>
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
							<a type="button" href="/order/orderRegFormOption" role="button" class="btn btn-danger" id="button3">구매하기 <i class="fa-solid fa-cart-shopping"></i></a>
						</div>	
					</div>
				</div>	
			</div>		
		</div>
	</div>
	</form>
	 
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script type="text/javascript">
	
		var goUrlList = "/product/productList"; 		/* #-> */
		
		var seq = $("input:hidden[name=seq]");			/* #-> */
		
		var form = $("form[name=form]");
		var formVo = $("form[name=formVo]");
		
	</script>
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
						location.href = "/member/memberLoginResult";
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
</body>
</html>