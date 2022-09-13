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
				    <a class="navbar-brand" href="../product/productList.html">
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
								<div class="row justify-content-center"><a type="button" href="../member/member_loginForm.html" class="btn btn-light rounded rounded-pill" id="logoutButton">Logout</a></div>
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
				<img src="https://cdn.class101.net/images/5bcceead-8c68-4ff4-beae-5a085a11e349/960xauto.webp" width="750px" height="519px">
			</div>
			<div class="col">
				<img src="https://cdn.class101.net/images/08f2d8f1-7c35-4738-ac16-5fab48493fcb/960xauto.webp" width="500px" height="519px">
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
					<div style="margin-top: 3rem"><img src="../../resources/images/review_2.png" width="850px" height="410px"></div>
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
							<b>4.9</b>&emsp;<span>총 7개</span>
						</div>
					</div>
					<div class="row">
						<div class="col-6">
							<div id="reviewID"><span><i class="fa-solid fa-circle-user"></i> Hyoam</span></div>
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
									<span class="reviewDate">10월 26일 12:01:50&emsp;<b>100% 수강 후 작성</b></span>
								</div>
							</div>
							<div class="reviewContent">
								<span>
									토익 노베이스중의 노베이스로 시작했어요.
									<br>중고등학교때도 영어시간이 제일 싫었구요, 무슨말인지 
									<br>도저히 못알아듣겠어서 포기했습니다.
									<br>고등학교 졸업하고 영어는 완전 놓고 살았으니 영어
									<br>기본도 없이 백지 상태로 시작한거죠...
								</span>
							</div>
						</div>
						<div class="col-6">
							<div id="reviewID"><span><i class="fa-solid fa-circle-user"></i> 수여니</span></div>
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
									<span class="reviewDate">10월 7일 20:50:12&emsp;<b>100% 수강 후 작성</b></span>
								</div>
							</div>
							<div class="reviewContent">
								<span>
									정말.. 제가 쓴 10만원대 중 가장 가치 있게 쓴 돈이 아닐까 
									<br>싶습니다.. 와.. 감탄 밖에 안나오더라구요.
									<br>10년이 뭐야.. 20년이 넘게 영어공부하면서도 이해하지 못했던  
									<br>문법을 드뎌 이해를 했습니다..ㅠ
									<br>영어구조가 눈에 보이기 시작하니 그 다음 공부는  ... 
								</span>
							</div>
						</div>
					</div> 
					<div class="row justify-content-center">
						<a type="button" href="#" role="button" class="btn btn-light" id="reviewButton">5개의 후기 더 보기</a>
					</div>
				</div>
				
				
				
				
				
				<!-- 상품 상세 정보 -->
				<div id="IF">
					<div style="margin-top:5rem;"><h2><b>초급자</b>분들을 위한 <br><b>토익 문법</b> <br>클래스입니다.</h2></div>
					<div class="content1">
						<div class="row" style="margin-top: 5rem;">
							<div class="col">
								<div><h3><i class="fa-solid fa-calendar-days"></i></h3></div>
								<div><h3><b>20주 수강 가능</b></h3></div>
								<div><h5>수강 기간 내 무제한 수강 가능합니다</h5></div>
							</div>
							<div class="col">
								<div><h3><i class="fa-brands fa-youtube"></i></h3></div>
								<div><h3><b>27개 콘텐츠</b></h3></div>
								<div><h5>총 27개의 강의를 수강하실 수 있습니다</h5></div>
							</div>
						</div>
					</div>
					<div style="margin-top: 3rem;">
						<img src="https://cdn.class101.net/images/d6672b86-371d-45c2-b7af-36a5ad0172f8/1920xauto.webp" width="776" height="125">
					</div>
					<div class="content1" style="margin-top: 3rem;"><h3><b>1. '해석을 위한 문법'은 국내에 없습니다.</b></h3></div>
					<div style="margin-top: 1rem;">
						<img src="https://cdn.class101.net/images/1acd04ad-8817-467f-b9c7-97c9348ebecb/1920xauto.webp" width="776" height="452">
					</div>
					<div class="content1" style="margin-top: 1rem;">
						<span>앞서 언급했듯이 <b>고득점을 받기 위해서는 '해석 실력'</b>을 키워야 합니다. 
						<br>그러나 '해석을 위한 문법'은 국내에 없습니다. 왜 없을까요?
						<br>
						<br>제가 뛰어나서 최초로 시작하는 게 아닙니다. 토익 스타 강사님이나 토익 유튜버 분들도 고득점을 위해선 
						<br>'해석을 위한 문법'의 중요성을 알고 있을 것입니다. 
						<br>그렇다면 왜 해당 강의를 찍지 않을까요? <b>수요가 적어서 돈이 안 되기 때문입니다.</b>
						<br>
						<br>문법은 '재미없고 별로 도움이 안 되는 것'이라는 인식이 있습니다. 
						<br>그렇다 보니 문법 강의는 수요가 별로 없어서 돈이 안 됩니다.
						<br>따라서 강사님들도 어쩔 수 없이 사람들이 많이 찾는 '스킬' 위주의 강의만 찍게 되는 것입니다.
						<br>
						<br><b>하지만 저는 '스킬' 위주의 공부만 한 사람은 절대 고득점을 받지 못할 것이라고 확신합니다.</b> 
						<br>그래서 지금도 많은 학생들에게 해석을 위한 문법의 중요성을 강조하고 있고, 
						<br>수요가 적더라도 해석 때문에 고생하고 있을 학생을 위해 이 강의를 찍게 되었습니다.
						</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h3><b>2. 저는 노잼이고 유머 감각도 없지만, 제 수업은 재밌습니다.</b></h3></div>
					<div style="margin-top: 1rem;">
						<img src="https://cdn.class101.net/images/ec339bbc-1161-47a6-9d38-b046a8fe0c65/1920xauto.webp" width="776" height="452">
					</div>
					<div class="content1" style="margin-top: 1rem;">
						<span><b>"선생님, 문법 이렇게 재밌게 배운 적 처음이에요." 제가 문법 수업할 때 자주 듣는 말입니다.</b>
						<br> 저는 노잼이고 유머 감각도 없는데 왜 제 수업을 재미있어할까요?
						<br>
						<br>대부분의 사람들은 문법을 재미없는 것으로 생각합니다. 그렇다면 왜 재미가 없을까요?
						<br>대부분의 사람들은 이렇게 답합니다. “외울 게 너무 많고, 아 그냥 재미없어”.
						<br>
						<br><b>문법은 잘 가르치면 재밌습니다. 문법을 어려워하는 당신은 이 수업을 들으면 놀라게 될지도 모릅니다.</b>
						</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h3><b>3. 제 수업에 ‘가정법’은 없습니다.</b></h3></div>
					<div style="margin-top: 1rem;">
						<img src="https://cdn.class101.net/images/4a0c741d-223d-4838-a526-9cd70e388126/1920xauto.webp" width="776" height="452">
					</div>
					<div class="content1" style="margin-top: 1rem;">
						<span>토익 해석을 위한 문법의 커리큘럼에는 가정법이 없습니다. 토익은 비즈니스 영어라서 ‘가정’ 따위 하지 않습니다.
						<br>
						<br><b>토익에 자주 안 나오거나 필요 없는 문법들은 목차에서 과감히 지웠습니다.</b> 
						<br>토익 시험 10번을 보면 한 번 나올까 말까 한 내용을 위해 모든 토익 문법을 다루는 것은 시간 낭비입니다.
						<br>
						<br>대부분의 시중 토익 교재나 인강 강사님들은 가정법을 포함한 문법을 모두 다룹니다.
						<br>"왜 교재에 없는 이 문제가 나왔느냐?"와 같은 비난을 방지하기 위해서라도 어쩔 수 없이 모두 다루는 것이죠.
						<br>
						</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h3><b>4. 1시간의 공부로 3시간의 효과를 내는 수업 방식입니다.</b></h3></div>
					<div style="margin-top: 1rem;">
						<img src="https://cdn.class101.net/images/40c05595-8d04-4895-b890-f9501489ac69/1920xauto.webp" width="776" height="452">
					</div>
					<div class="content1" style="margin-top: 1rem;">
						<span><b>저는 공부법 컨설팅 1인 기업 운영, 공부법 베스트셀러 책 집필의 경험이 있습니다.</b>
						<br>따라서 어떻게 하면 학생들이 효율적으로 학습할 수 있는 지를 알고 있습니다. 
						<br>또한 어떻게 가르쳐야 학생들이 잘 받아들이는지 알고 있습니다.
						<br>
						<br>제 강의에서 수강생분들이 가장 만족하는 부분 중 하나가 수업 방식입니다.
						<br><b>단순히 ppt를 켜고 설명하는 노잼 방식으로 수업하지 않습니다.</b>
						<br>실시간으로 타이핑하면서 수강생분의 능동적인 참여를 이끌어냅니다. 때문에 수업의 몰입도와 흥미도가 상당히 높습니다.
						<br>
						<br>이 같은 노하우들을 수업에 적용하니, 수업 만족도가 높으며 문법 수업 이후에도 해당 내용을 오래 기억하는 분들이 많습니다.
						</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h3><b>5. 미친듯이 체계적입니다.</b></h3></div>
					<div style="margin-top: 1rem;">
						<img src="https://cdn.class101.net/images/65b1f8b2-d3b3-4cbb-b3c6-a7f7113df502/1920xauto.webp" width="776" height="452">
					</div>
					<div class="content1" style="margin-top: 1rem;">
						<span>해석을 위한 문법의 강의자료는 총 네 가지가 제공됩니다.
						<br>
						<br>1. 수업 자료
						<br>2. 복습 시험지
						<br>3. 복습 시험지 - 응용 파트
						<br>4. 복습 시험 답지
						<br>
						<br><b>네 가지 자료를 모두 활용해 수업만 잘 따라온다면, 아무런 걱정을 할 필요가 없습니다. </b>
						<br>해석 실력은 엄청나게 향상될 것이고, 토익 고득점 또한 가능할 것입니다.
						<br>
						<br>네 가지 자료에는 공부법, 뇌과학, 심리학적인 노하우들이 모두 적용되어 있습니다.
						<br><b>어디에서도 접하기 힘든, 최고의 공부 효율을 내는 방식이 모두 적용되어 있는, 매우 공들여 만들어진 자료입니다.</b> 
						<br>이 강의 자료만으로도 학습 효율을 최소 2배 이상은 높일 수 있다고 자부합니다.
						</span>
					</div>
				</div>
				
				
				
				
				
				<!-- 커리큘럼 -->
				<div id="CR"> 
					<div class="content1" style="margin-top: 5rem;"><h4><b>커리큘럼</b></h4></div>
					<div class="content1" style="margin-top: 1rem;">
						<span>클래스를 신청하신 분들이 배우고 있는 커리큘럼입니다. 콘텐츠는 배우기 쉽게 영상, 수업노트, 첨부파일로 구성되어있습니다.</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>Welcome 안녕하세요, 토익독학 길잡이입니다.</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 토익 해석을 위한 문법을 수업할 토익독학 길잡이 입니다</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 이 강의가 10만 원대인 이유</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 강의를 듣지 말아야 할 유형</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 강의를 만든 이유와 목표</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 3배 효율적인 수업 방식</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 며칠 안에 완강해야 할까요?</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 1:1 코칭권 200% 활용법</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>1. 문장의 뼈대 / 문장의 형식</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 1형식, 2형식, 3형식</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 4형식</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 5형식 part1</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 5형식 part2</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>2. 문장의 살 / 수식어</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 수식어</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>3. 동사의 변신 / 시제와 수동태</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 시제의 기본</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 현재완료</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 과거완료</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 미래완료</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 수동태</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>4. 시제의 끝판왕 / 혼합시제</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 혼합시제</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 혼합시제 연습</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>5. 동사를 돕는 동사 / 조동사</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 조동사 기본</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 앞선시제와 조동사 과거</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>6. 동사의 변신 / 준동사</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 동명사</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> to 부정사</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 동사를 형용사로! 분사</span>
						<br>
						<span><i class="fa-solid fa-circle-check"></i> 분사구문</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>7. 문법의 마지막 / 관계사</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 관계사</span>
					</div>
					<div class="content1" style="margin-top: 3rem;"><h5><b>OUTRO 완강을 축하드립니다!</b></h5></div>
					<div class="content1" style="margin-top: 1rem;">
						<span><i class="fa-solid fa-circle-check"></i> 해석을 위한 문법, 그 이후</span>
					</div>
				</div>	
				
				
				
				
				
				
				<!-- 키트소개 -->
				<div id="KT">
					<div class="content1" style="margin-top: 5rem;"><h4><b>키트소개</b></h4></div>
					<div style="margin-top: 3rem;">
						<img src="https://cdn.class101.net/images/189b3684-1863-4309-9fa8-1eb21c701c51/1920xauto.webp" width="776" height="6446">
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
						<div id="orderTop">토익독학길잡이</div>
						<div id="classTitle">국내 1위 토익 유튜버의 '해석을 위한 문법'</div>
						<div>
							<a type="button" href="#" role="button" class="btn btn-light" id="buttonTop1">선물하기</a>
							<a type="button" href="#" role="button" class="btn btn-light" id="buttonTop2">바로수강가능</a>
						</div>
						<div class="text-end" id="coupon">쿠폰 적용 시, 5개월 할부</div>
						<div class="row justify-content-between">
							<div class="col" id="couponDC">쿠폰 할인가</div>
							<div class="col text-end" id="Price">20% 월 40, 000원</div>
						</div>
						<div class="row justify-content-between" id="totalDC">
							<div class="col">총 할인액</div>
							<div class="col text-end">- 50,000원</div>
						</div>
						<div class="row" id="bbb">
							<div class="col-6"><i class="fa-brands fa-youtube"></i> 콘텐츠 이용권</div>
							<div class="col-6"><i class="fa-solid fa-gifts"></i> 준비물 키트</div>
						</div>
						<div class="row" id="ccc">
							<div class="col-6"><i class="fa-solid fa-user"></i> 초급자 대상</div>
							<div class="col-6"><i class="fa-solid fa-thumbs-up"></i> 강의 만족도 98%</div>
						</div>
						<div class="text-center" id="ddd">
							<a type="button" href="#" role="button" class="btn btn-light"><i class="fa-solid fa-heart"></i> 1250</a>
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