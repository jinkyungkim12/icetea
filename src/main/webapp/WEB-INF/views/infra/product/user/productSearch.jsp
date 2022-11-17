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
		.card-body{
			background-color: white;
		}
	</style>
</head>
<body>

<!-- start -->
	
	<!-- NAV bar	 -->
	<form method="post" name="form" id="form" enctype="multipart/form-data">
	<input type="hidden" name="seq">
	<%@include file="../../../common/xdmin/includeV1/loginNyMain.jsp"%>
	</form>
	
	<!-- 상단메뉴 -->
	
	<!-- <nav class="navbar navbar-expand-lg bg-white">
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
	</nav>	 -->
	 
	 
	 <!-- 오늘의 특가 -->
	
	<div class="container" style="margin-top: 3rem;">
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
						    <span class="price">월 <fmt:formatNumber type="number" value="${(listToday.price*((listToday.discountRate)*0.01))/5}" pattern="#,###"/>원</span>
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
	
	<!-- MD 추천 클래스 -->
		<br>
		<div class="row">
			<c:forEach items="${listMD}" var="listMD" varStatus="status" >	
				<div class="col-3">
					<a class="nav-link"  href="javascript:goForm('${listMD.seq }')"> 
						<div class="card" style="width: 18rem;">
						  <img src="${listMD.path}${listMD.uuidName}" class="card-img-top" alt="...">
						  <div class="card-body" style="height: 12rem;">
						    <p class="card-text" style="height: 6rem;"><b><c:out value="${listMD.category}"/></b><br>[✨MD 강추 클래스] <c:out value="${listMD.title}"/></p>
						    <hr>
						    <span class="discount"><c:out value="${listMD.discountRate}"/>%</span>
						    <span class="price">월 <fmt:formatNumber type="number" value="${(listMD.price*((listMD.discountRate)*0.01))/5}" pattern="#,###"/>원</span>
						    <span class="month">(<c:choose>
													<c:when test="${listMD.payMonth eq 16}">5개월</c:when>
													<c:otherwise>12개월</c:otherwise>
												</c:choose>)</span>
						  </div>
						</div>
					</a>
				</div>	
			</c:forEach>
		</div>
	
	
	<!-- 실시간 TOP10 클래스 -->
		<br>
		<div class="row">
			<c:forEach items="${listDC}" var="listDC" varStatus="status">
				<div class="col-3">
					<a class="nav-link"  href="javascript:goForm('${listDC.seq }')"> 
						<div class="card" style="width: 18rem;">
						  <img src="${listDC.path}${listDC.uuidName}" class="card-img-top" alt="...">
						  <div class="card-body" style="height: 12rem;">
						    <p class="card-text" style="height: 6rem;"><b><c:out value="${listDC.category}"/></b><br>[👍할인종료D-7] <c:out value="${listDC.title}"/></p>
						    <hr>
						    <span class="discount"><c:out value="${listDC.discountRate}"/>%</span>
						    <span class="price">월 <fmt:formatNumber type="number" value="${(listDC.price*((listDC.discountRate)*0.01))/5}" pattern="#,###"/>원</span>
						    <span class="month">(<c:choose>
													<c:when test="${listDC.payMonth eq 16}">5개월</c:when>
													<c:otherwise>12개월</c:otherwise>
												</c:choose>)</span>
						  </div>
						</div>
					</a>
				</div>	
			</c:forEach>
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> 
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/1d7c148109.js" crossorigin="anonymous"></script>
	<script type="text/javascript">
	
		var goUrlForm = "/product/productView"
		var goUrlSearch = "/product/productSearch"; 		/* #-> */
		
		var seq = $("input:hidden[name=seq]");			/* #-> */
		
		var form = $("form[name=form]");
		var formVo = $("form[name=formVo]");
		
		$("#btnSearch").on("click", function(){
			if(validationList() == false) return false;
			form.attr("action", goUrlSearch).submit();
		});
		
		goForm = function(pseq) {
	    	seq.val(pseq);
			form.attr("action", goUrlForm).submit();
		}
		
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