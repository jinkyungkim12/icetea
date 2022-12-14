<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
<head>
	<title>Class101</title>
	<script src="https://kit.fontawesome.com/15c84217dd.js" crossorigin="anonymous"></script>
    <!-- jquery ui CSS -->    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="shortcut icon" type="image/x-icon" href="https://cdn-icons-png.flaticon.com/512/477/477796.png">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
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
	<%@include file="../../../common/xdmin/includeV1/loginNyMain.jsp"%>
	</form>
	<!-- ???????????? -->
	
	<!-- <nav class="navbar navbar-expand-lg bg-white">
	  <div class="container" id="aaa">
	    <div class="collapse navbar-collapse" id="navbarSupportedContent">
	      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	      	 <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            ?????? ????????????
	          </a>
	          <ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="/product/productBestList">??????/??????</a></li>
	            <li><a class="dropdown-item" href="/product/productBestList">??????</a></li>
	            <li><a class="dropdown-item" href="/product/productBestList">????????????</a></li>
	            <li><a class="dropdown-item" href="/product/productBestList">??????</a></li>
	            <li><a class="dropdown-item" href="/product/productBestList">??????/??????</a></li>
	            <li><a class="dropdown-item" href="/product/productBestList">??????</a></li>
	          </ul>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="/product/productBestList">BEST</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="#">98% ??????</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="#">?????????</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="#">?????? ??????</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="#">?????? ?????????</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="#">?????? ??????</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="#">????????????</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="#">??????</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="#">???????????? ?????????</a>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>	 -->

	<!-- ?????? -->
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

	<!-- ?????? -->
	
	<!-- ????????? ?????? -->
	
	<div class="container" style="margin-top: 5rem;">
		<div><h2 id="subtitle">????????? ??????! TIME DEAL</h2></div>
		<br>
		<div class="row">
		<c:forEach items="${listToday}" var="listToday" varStatus="status">	
			<div class="col-3">
				<a class="nav-link"  href="javascript:goForm('${listToday.seq }')"> 
					<div class="card" style="width: 18rem;">
					  <img src="${listToday.path}${listToday.uuidName}" class="card-img-top" alt="..." style="height: 212.5px;">
					  <div class="card-body" style="height: 12rem;">
					    <p class="card-text" style="height: 6rem;"><b><c:out value="${listToday.category}"/></b><br>[????24??????] <c:out value="${listToday.title}"/></p>
					    <hr>
					    <span class="discount"><c:out value="${listToday.discountRate}"/>%</span>
					    <span class="price">??? <fmt:formatNumber type="number" value="${(listToday.price*((100-listToday.discountRate)*0.01))/5}" pattern="#,###"/>???</span>
					    <span class="month">(<c:choose>
												<c:when test="${listToday.payMonth eq 16}">5??????</c:when>
												<c:otherwise>12??????</c:otherwise>
											</c:choose>)</span>
					  </div>
					</div>
				</a>
			</div>	
		</c:forEach>	
		</div>
	</div>
	
	<!-- MD ?????? ????????? -->
	<div class="container" style="margin-top: 5rem;">
		<div><h2 id="subtitle">MD ?????? ?????????</h2></div>
		<br>
		<div class="row">
		<c:forEach items="${listMD}" var="listMD" varStatus="status">	
			<div class="col-3">
				<a class="nav-link"  href="javascript:goForm('${listMD.seq }')"> 
					<div class="card" style="width: 18rem;">
					  <img src="${listMD.path}${listMD.uuidName}" class="card-img-top" alt="..." style="height: 381.6px;">
					  <div class="card-body" style="height: 12rem;">
					    <p class="card-text" style="height: 6rem;"><b><c:out value="${listMD.category}"/></b><br>[???MD ?????? ?????????] <c:out value="${listMD.title}"/></p>
					    <hr>
					    <span class="discount"><c:out value="${listMD.discountRate}"/>%</span>
					    <span class="price">??? <fmt:formatNumber type="number" value="${(listMD.price*((100-listMD.discountRate)*0.01))/5}" pattern="#,###"/>???</span>
					    <span class="month">(<c:choose>
												<c:when test="${listMD.payMonth eq 16}">5??????</c:when>
												<c:otherwise>12??????</c:otherwise>
											</c:choose>)</span>
					  </div>
					</div>
				</a>
			</div>	
		</c:forEach>
		</div>
	</div>
	
	
	<!-- ????????? TOP10 ????????? -->
	<div class="container" style="margin-top: 5rem;">
		<div><h2 id="subtitle">?????? ????????? ?????????</h2></div>
		<br>
		<div class="row">
		<c:forEach items="${listDC}" var="listDC" varStatus="status">
			<div class="col-3">
				<a class="nav-link"  href="javascript:goForm('${listDC.seq }')"> 
					<div class="card mb-3" style="width: 18rem;">
					  <img src="${listDC.path}${listDC.uuidName}" class="card-img-top" alt="...">
					  <div class="card-body" style="height: 12rem;">
					    <p class="card-text" style="height: 6rem;"><b><c:out value="${listDC.category}"/></b><br>[????????????????D-7] <c:out value="${listDC.title}"/></p>
					    <hr>
					    <span class="discount"><c:out value="${listDC.discountRate}"/>%</span>
					    <span class="price">??? <fmt:formatNumber type="number" value="${(listDC.price*((100-listDC.discountRate)*0.01))/5}" pattern="#,###"/>???</span>
					    <span class="month">(<c:choose>
												<c:when test="${listDC.payMonth eq 16}">5??????</c:when>
												<c:otherwise>12??????</c:otherwise>
											</c:choose>)</span>
					  </div>
					</div>
				</a>
			</div>	
		</c:forEach>	
		</div>
	</div>
	
	
	<!-- ????????? -->
	<!-- <div class="container" style="margin-top: 5rem;">
		<div><h2 id="subtitle">???????????? ?????? ?????????</h2></div>
		<div class="row" style="margin-top: 2rem;">
			<div class="col-4">
				<img src="../../resources/images/p3_1.png" class="card-img-top" alt="..."><br><br>
				<a class="ccc" href="/product/productEvent"><span class="eventTitle">???????????? ????????????! 3O?????? ????????? ????????????</span><br></a>
				<span class="eventDday">D-13</span>
				<span class="eventDate">7.18 (???) ~ 07.31 (???)</span>
			</div>
			<div class="col-4">
				<img src="../../resources/images/p3_2.png" class="card-img-top" alt="..."><br><br>
				<span class="eventTitle">??????????????? ??????????????? ???????????? 1?????? ???????????? ??????!</span><br>
				<span class="eventDday">D-13</span>
				<span class="eventDate">7.15 (???) ~ 07.31 (???)</span>
			</div>
			<div class="col-4">
				<img src="../../resources/images/p3_3.png" class="card-img-top" alt="..."><br><br>
				<span class="eventTitle">[????????????????] ?????? 60% ??????????????? BEST</span><br>
				<span class="eventDday">D-1</span>
				<span class="eventDate">7.12 (???) ~ 07.19 (???)</span>
			</div>
		</div>
	</div> -->
	
	<!-- ???????????? -->
	<!-- <div class="container" style="margin-top: 5rem;">
		<div><h2 id="subtitle">?????? ????????????</h2></div>
		<div class="row text-center" style="margin-top: 3rem;">
			<div class="col-3">
				<a type="button" class="btn btn-light btn-lg" style="width: 15rem;">
					<span class="eventDate">??????????????????</span><br>
					<span class="eventTitle">????????? ?????????</span>
				</a>
			</div>
			<div class="col-3">
				<a type="button" class="btn btn-light btn-lg" style="width: 15rem;">
					<span class="eventDate">??????????????????</span><br>
					<span class="eventTitle">??????</span>
				</a>
			</div>
			<div class="col-3">
				<a type="button" class="btn btn-light btn-lg" style="width: 15rem;">
					<span class="eventDate">??????????????????</span><br>
					<span class="eventTitle">?????????</span>
				</a>
			</div>
			<div class="col-3">
				<a type="button" class="btn btn-light btn-lg" style="width: 15rem;">
					<span class="eventDate">?????? ??????</span><br>
					<span class="eventTitle">?????? ?? ??????</span>
				</a>
			</div>
		</div>
		<div class="row text-center" style="margin-top: 3rem;">
			<div class="col-3">
				<a type="button" class="btn btn-light btn-lg" style="width: 15rem;">
					<span class="eventDate">??????????????????</span><br>
					<span class="eventTitle">????????? ?? ?????????</span>
				</a>
			</div>
			<div class="col-3">
				<a type="button" class="btn btn-light btn-lg" style="width: 15rem;">
					<span class="eventDate">?????????</span><br>
					<span class="eventTitle">?????????</span>
				</a>
			</div>
			<div class="col-3">
				<a type="button" class="btn btn-light btn-lg" style="width: 15rem;">
					<span class="eventDate">??????????????????</span><br>
					<span class="eventTitle">??????</span>
				</a>
			</div>
			<div class="col-3">
				<a type="button" class="btn btn-light btn-lg" style="width: 15rem;">
					<span class="eventDate">?????? ??????</span><br>
					<span class="eventTitle">????????? ?????? ??????</span>
				</a>
			</div>
		</div>
	</div> -->
	
	<!-- ??? -->
	<div class="container">
		<div class="row" style="margin-top: 5rem;">
			<div class="col-4">
				<div><img src="../../resources/images/classLogo.png" alt="" width="300" height="121"></div>
				<div><span id="endContent1">????????? 101??? ?????? ????????? ???????????? ?????? ??????<br>??? ??? ????????? ????????? ???????????? ?????????.</span></div>
				<br>
				<br>
				<div><span id="endContent1"><small>KR</small>&nbsp;?????????</span></div>
			</div>
			<div class="col-2">
				<div class="endTitle">????????? 101</div>
				<div class="endContent2">???</div>
				<div class="endContent2">????????????</div>
				<div class="endContent2">??????</div>
				<div class="endContent2">?????????</div>
			</div>
			<div class="col-2">
					<div class="endTitle">???????????????</div>
					<div class="endContent2">??????????????? ??????</div>
					<div class="endContent2">?????? ????????? ????????????</div>
					<div class="endContent2">?????????</div>
			</div>
			<div class="col-4">
					<div class="endTitle">????????????</div>
					<div class="text-center"><a type="button" role="button" class="btn btn-light" id="endButton">????????????</a></div>
					<div class="endContent2 text-center">?????? 10??? ~ ?????? 6??? (??????, ????????? ??????)</div> 
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
					if (response.rt == "success") {
						window.location.href = "home";
					} else {
						/* localStorage.clear(); */
						window.location.href = "home";
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
		var goUrlForm = "/product/productView"
		var goUrlSearch = "/product/productSearch"
			
		var form = $("form[name=formList]");
		var seq = $("input:hidden[name=seq]");
		
		$("#btnSearch").on("click", function(){
			form.attr("action", goUrlSearch).submit();
		});
		
		goForm = function(pseq) {
	    	seq.val(pseq);
			form.attr("action", goUrlForm).submit();
		}
	</script>
</body>
</html>