<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

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
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

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
		.ccc{
			 color: black;
    		text-decoration: none;
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

	<form method="post" name="formList" id="formList" enctype="multipart/form-data">
	<input type="hidden" name="seq">
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
	</form>
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
	<div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
	  <div class="carousel-inner">
	    <div class="carousel-item active" data-bs-interval="3000">
	      <img src="../../resources/images/b1.png" class="d-block w-100" alt="...">
	    </div>
	    <div class="carousel-item" data-bs-interval="3000">
	      <img src="../../resources/images/b2.png" class="d-block w-100" alt="...">
	    </div>
	    <div class="carousel-item">
	      <img src="../../resources/images/b3.png" class="d-block w-100" alt="...">
	    </div>
	  </div>
	  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Previous</span>
	  </button>
	  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Next</span>
	  </button>
	</div>

	<!-- 상품 -->
	
	<!-- 오늘의 특가 -->
	
	<div class="container" style="margin-top: 5rem;">
		<div><h2 id="subtitle">오늘의 특가! TIME DEAL</h2></div>
		<br>
		<div class="row">
		<c:forEach items="${listToday}" var="listToday" varStatus="status">	
			<div class="col-3">
				<a class="nav-link"  href="javascript:goForm('${listToday.seq }')"> 
					<div class="card" style="width: 18rem;">
					  <img src="${listToday.path}${listToday.uuidName}" class="card-img-top" alt="...">
					  <div class="card-body" style="height: 12rem;">
					    <p class="card-text" style="height: 6rem;"><b><c:out value="${listToday.category}"/></b><br>[💣24시간] <c:out value="${listToday.title}"/></p>
					    <hr>
					    <span class="discount"><c:out value="${listToday.discountRate}"/>%</span>
					    <span class="price">월 <fmt:formatNumber type="number" value="${listToday.price/5}" pattern="#,###"/>원</span>
					    <span class="month">(<c:choose>
												<c:when test="${listToday.payMonth eq 16}">5개월</c:when>
												<c:otherwise>12개월</c:otherwise>
											</c:choose>)</span>
					  </div>
					</div>
				</a>
			</div>	
		</c:forEach>	
		</div>
	</div>
	
	<!-- MD 추천 클래스 -->
	<div class="container" style="margin-top: 5rem;">
		<div><h2 id="subtitle">MD 추천 클래스</h2></div>
		<br>
		<div class="row">
		<c:forEach items="${listMD}" var="listMD" varStatus="status">	
			<div class="col-3">
				<div class="card" style="width: 18rem;">
				  <img src="${listMD.path}${listMD.uuidName}" class="card-img-top" alt="...">
				  <div class="card-body" style="height: 12rem;">
				    <p class="card-text" style="height: 6rem;"><b><c:out value="${listMD.category}"/></b><br>[✨MD 강추 클래스] <c:out value="${listMD.title}"/></p>
				    <hr>
				    <span class="discount"><c:out value="${listMD.discountRate}"/>%</span>
				    <span class="price">월 <fmt:formatNumber type="number" value="${listMD.price/5}" pattern="#,###"/>원</span>
				    <span class="month">(<c:choose>
											<c:when test="${listMD.payMonth eq 16}">5개월</c:when>
											<c:otherwise>12개월</c:otherwise>
										</c:choose>)</span>
				  </div>
				</div>
			</div>	
		</c:forEach>
		</div>
	</div>
	
	
	<!-- 실시간 TOP10 클래스 -->
	<div class="container" style="margin-top: 5rem;">
		<div><h2 id="subtitle">할인 이벤트 클래스</h2></div>
		<br>
		<div class="row">
		<c:forEach items="${listDC}" var="listDC" varStatus="status">
			<div class="col-3">
				<div class="card" style="width: 18rem;">
				  <img src="${listDC.path}${listDC.uuidName}" class="card-img-top" alt="...">
				  <div class="card-body" style="height: 12rem;">
				    <p class="card-text" style="height: 6rem;"><b><c:out value="${listDC.category}"/></b><br>[👍할인종료D-7] <c:out value="${listDC.title}"/></p>
				    <hr>
				    <span class="discount"><c:out value="${listDC.discountRate}"/>%</span>
				    <span class="price">월 <fmt:formatNumber type="number" value="${listDC.price/5}" pattern="#,###"/>원</span>
				    <span class="month">(<c:choose>
											<c:when test="${listDC.payMonth eq 16}">5개월</c:when>
											<c:otherwise>12개월</c:otherwise>
										</c:choose>)</span>
				  </div>
				</div>
			</div>	
		</c:forEach>	
		</div>
	</div>
	
	<!-- 오픈 예정 클래스 -->
	<div class="container" style="margin-top: 5rem;">
		<div><h2 id="subtitle">오픈 예정 클래스</h2></div>
		<div><h5 id="subtitle2">오픈 예정인 클래스를 응원하면 얼리버드 오픈 시 알려드려요!</h5></div>
		<br>
		<div class="row">
		<c:forEach items="${listOpen}" var="listOpen" varStatus="status">
			<div class="col-3">
				<div class="card" style="width: 18rem;">
				  <img src="${listOpen.path}${listOpen.uuidName}" class="card-img-top" alt="...">
				  <div class="card-body" style="height: 12rem;">
				    <p class="card-text" style="height: 6rem;"><b><c:out value="${listOpen.category}"/></b><br><c:out value="${listOpen.title}"/><br</p>
				    <hr>
				    <span class="eventDate">응원 마감까지 <b>7일 남음</b></span>
				  </div>
				</div>
			</div>	
		</c:forEach>	
		</div>
	</div>
	
	<!-- 최근 업데이트 클래스 -->
	<!-- <div class="container" style="margin-top: 5rem;">
		<div><h2 id="subtitle">최근업데이트 클래스</h2></div>
		<div><h5 id="subtitle2">크리에이터가 최근 활동한 클래스예요.</h5></div>
		<br>
		<div class="row">
			<div class="col-3">
				<div class="card" style="width: 18rem;">
				  <img src="../../resources/images/p6_1.png" class="card-img-top" alt="...">
				  <div class="card-body">
				    <p class="card-text"><b>그래픽디자인・제이슨</b><br>[🔥오늘할인끝] 제이슨과 함께, 포토샵으로 만드는 나만의 판타지 세상</p>
				    <hr>
					<span class="eventDate">미션 답변 작성</span>
					<span class="eventDday">22분전</span>
				  </div>
				</div>
			</div>	
			<div class="col-3">
				<div class="card" style="width: 18rem;">
				  <img src="../../resources/images/p6_2.png" class="card-img-top" alt="...">
				  <div class="card-body">
				    <p class="card-text"><b>특별활동・오안쌤</b><br>[🔥오늘할인끝] [1차 마감] 수학 문제집 큐레이터 오안쌤의 맘 편한 "유아 수학 로드맵"</p>
				    <hr>
				    <span class="eventDate">미션 답변 작성</span>
					<span class="eventDday">25분전</span>
				  </div>
				</div>
			</div>	
			<div class="col-3">
				<div class="card" style="width: 18rem;">
				  <img src="../../resources/images/p6_3.png" class="card-img-top" alt="...">
				  <div class="card-body">
				    <p class="card-text"><b>비건・채소・하루비건</b><br>[🔥오늘할인끝] 비건도 치즈와 크림을 즐길 수 있어요. '하루비건'의 일상 비건 요리</p>
				    <hr>
				    <span class="eventDate">미션 답변 작성</span>
					<span class="eventDday">28분전</span>
				  </div>
				</div>
			</div>	
			<div class="col-3">
				<div class="card" style="width: 18rem;">
				  <img src="../../resources/images/p6_4.png" class="card-img-top" alt="...">
				  <div class="card-body">
				    <p class="card-text"><b>캘리그라피・캘리스마인드(캘마)</b><br>[🔥오늘할인끝] 아이패드로 영문 레터링 해볼래?<br><br></p>
				    <hr>
				    <span class="eventDate">미션 답변 작성</span>
					<span class="eventDday">21분전</span>
				  </div>
				</div>
			</div>	
		</div>
	</div> -->
	
	<!-- 이벤트 -->
	<div class="container" style="margin-top: 5rem;">
		<div><h2 id="subtitle">진행중인 인기 이벤트</h2></div>
		<div class="row" style="margin-top: 2rem;">
			<div class="col-4">
				<img src="../../resources/images/p3_1.png" class="card-img-top" alt="..."><br><br>
				<a class="ccc" href="/product/productEvent"><span class="eventTitle">여름내내 시원하게! 3O만원 쿠폰팩 드립니다</span><br></a>
				<span class="eventDday">D-13</span>
				<span class="eventDate">7.18 (월) ~ 07.31 (일)</span>
			</div>
			<div class="col-4">
				<img src="../../resources/images/p3_2.png" class="card-img-top" alt="..."><br><br>
				<span class="eventTitle">카카오페이 농협카드로 결제하고 1만원 추가할인 받자!</span><br>
				<span class="eventDday">D-13</span>
				<span class="eventDate">7.15 (금) ~ 07.31 (일)</span>
			</div>
			<div class="col-4">
				<img src="../../resources/images/p3_3.png" class="card-img-top" alt="..."><br><br>
				<span class="eventTitle">[내일종료🔥] 최대 60% 창업∙부업 BEST</span><br>
				<span class="eventDday">D-1</span>
				<span class="eventDate">7.12 (화) ~ 07.19 (화)</span>
			</div>
		</div>
	</div>
	
	<!-- 카테고리 -->
	<div class="container" style="margin-top: 5rem;">
		<div><h2 id="subtitle">인기 카테고리</h2></div>
		<div class="row text-center" style="margin-top: 3rem;">
			<div class="col-3">
				<a type="button" href="#" role="button" class="btn btn-light btn-lg" style="width: 15rem;">
					<span class="eventDate">크리에이티브</span><br>
					<span class="eventTitle">디지털 드로잉</span>
				</a>
			</div>
			<div class="col-3">
				<a type="button" href="#" role="button" class="btn btn-light btn-lg" style="width: 15rem;">
					<span class="eventDate">크리에이티브</span><br>
					<span class="eventTitle">공예</span>
				</a>
			</div>
			<div class="col-3">
				<a type="button" href="#" role="button" class="btn btn-light btn-lg" style="width: 15rem;">
					<span class="eventDate">크리에이티브</span><br>
					<span class="eventTitle">드로잉</span>
				</a>
			</div>
			<div class="col-3">
				<a type="button" href="#" role="button" class="btn btn-light btn-lg" style="width: 15rem;">
					<span class="eventDate">수익 창출</span><br>
					<span class="eventTitle">창업 · 부업</span>
				</a>
			</div>
		</div>
		<div class="row text-center" style="margin-top: 3rem;">
			<div class="col-3">
				<a type="button" href="#" role="button" class="btn btn-light btn-lg" style="width: 15rem;">
					<span class="eventDate">크리에이티브</span><br>
					<span class="eventTitle">베이킹 · 디저트</span>
				</a>
			</div>
			<div class="col-3">
				<a type="button" href="#" role="button" class="btn btn-light btn-lg" style="width: 15rem;">
					<span class="eventDate">커리어</span><br>
					<span class="eventTitle">디자인</span>
				</a>
			</div>
			<div class="col-3">
				<a type="button" href="#" role="button" class="btn btn-light btn-lg" style="width: 15rem;">
					<span class="eventDate">크리에이티브</span><br>
					<span class="eventTitle">운동</span>
				</a>
			</div>
			<div class="col-3">
				<a type="button" href="#" role="button" class="btn btn-light btn-lg" style="width: 15rem;">
					<span class="eventDate">내게 맞는</span><br>
					<span class="eventTitle">클래스 추천 받기</span>
				</a>
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
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
	<script type="text/javascript">
		var goUrlList = "/home";
		var goUrlForm = "/product/productView"
			
		var form = $("form[name=formList]");
		var seq = $("input:hidden[name=seq]");
		
		$("#btnSearch").on("click", function(){
			if(validationList() == false) return false;
			form.attr("action", goUrlList).submit();
		});
		
		goForm = function(pseq) {
	    	seq.val(pseq);
			form.attr("action", goUrlForm).submit();
		}
	</script>
</body>
</html>