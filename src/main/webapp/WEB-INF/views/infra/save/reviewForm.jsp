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
			font-size: 20px;
		}
		.reviewStar2{
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
		.review{
			width: 40%;
			font-family: 'Happiness-Sans-Regular';
		}
		.review2{
			width: 37%;
			font-family: 'Happiness-Sans-Regular';
		}
		.star-rating {
		  display:flex;
		  flex-direction: row-reverse;
		  font-size:1.5em;
		  padding:0 .2em;
		  text-align:center;
		  width:5em;
		}
		
		.star-rating input {
		  display:none;
		}
		
		.star-rating label {
		  color:#ccc;
		  cursor:pointer;
		}
		
		.star-rating :checked ~ label {
		  color:#f90;
		}
		
		.star-rating label:hover,
		.star-rating label:hover ~ label {
		  color:#fc0;
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
				          <a class="nav-link" href="#" id="ListClass"><b>?????????</b></a>
				        </li>
				        <li class="nav-item">
				          <a class="nav-link" href="#" id="ListStore"><b>?????????</b></a>
				        </li>
				      </ul>
				    </div>
				      <form class="d-flex" role="search">
				        <input class="form-control me-2" type="search" placeholder="???????????? ???????????????." aria-label="Search" style="width: 400px;">
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
										<h5><b>?????????</b></h5>
									</div>
								</div>
								<a href="/member/mypage" class="dropdown-item text-center" style="color: #FF5600">??????????????? <i class="fa-solid fa-angle-right"></i></a> 
								<hr class="dropdown-divider">
								<div class="row justify-content-center"><a type="button" href="/member/memberLogin" class="btn btn-light rounded rounded-pill" id="logoutButton">Logout</a></div>
							</div>
						</div>
					</div>
				</div>	
			</div>	
		</div>
	</div>
	
	<!-- review -->
	
	<div class="container review">
		<div class="row text-center" style="margin-top: 2rem;"><h3><b>Review</b></h3></div>
		<div class="row justify-content-center" style="margin-top: 5rem;">
			<div class="col-3">
				<div class="reviewStar">
					<i class="fa-solid fa-star"></i>
					<i class="fa-solid fa-star"></i>
					<i class="fa-solid fa-star"></i>
					<i class="fa-solid fa-star"></i>
					<i class="fa-solid fa-star"></i>&emsp;
				</div>
			</div>
			<div class="col-1"><h4><b>4.9</b></h4></div>
			<div class="col-2" style="color: gray;"><span>??? 8???</span></div>
		</div>
		 <!-- Header -->
            <div class="row align-items-center">
              <div class="col-12 col-md-auto">

                <!-- Dropdown -->
                <div class="dropdown mb-4 mb-md-0">

                  <!-- Toggle -->
                  <a class="dropdown-toggle text-reset" data-bs-toggle="dropdown" href="#">
                    <strong>Sort by: ?????????</strong>
                  </a>

                  <!-- Menu -->
                  <div class="dropdown-menu mt-3">
                    <a class="dropdown-item" href="#!">?????????</a>
                    <a class="dropdown-item" href="#!">????????????</a>
                  </div>

                </div>

              </div>
              <div class="col-12 col-md text-md-center">

                <!-- Rating -->
                <div class="rating text-dark h6 mb-4 mb-md-0" data-value="4">
                </div>


              </div>
              <div class="col-12 col-md-auto">

                <!-- Button -->
                <a class="btn btn-dark collapsed" data-bs-toggle="collapse" href="#reviewForm" aria-expanded="false">
                  ?????? ????????????
                </a>

              </div>
            </div>

            <!-- New Review -->
            <div class="collapse" id="reviewForm" style="">

              <!-- Divider -->
              <hr class="my-8">

              <!-- Form -->
              <form>
                <div class="row">
                  <div class="col-12 mb-6">

                    <!-- Text -->
                    <p class="mb-1 fs-xs">
                      ??????:
                    </p>

                    <!-- Rating form -->
                    <div class="rating-form">
                    
                    	<div class="star-rating justify-content-center">
						  <input type="radio" id="5-stars" name="rating" value="5" />
						  <label for="5-stars" class="star">&#9733;</label>
						  <input type="radio" id="4-stars" name="rating" value="4" />
						  <label for="4-stars" class="star">&#9733;</label>
						  <input type="radio" id="3-stars" name="rating" value="3" />
						  <label for="3-stars" class="star">&#9733;</label>
						  <input type="radio" id="2-stars" name="rating" value="2" />
						  <label for="2-stars" class="star">&#9733;</label>
						  <input type="radio" id="1-star" name="rating" value="1" />
						  <label for="1-star" class="star">&#9733;</label>
						</div>

                    </div>

                  </div>
                  <div class="col-12" style="margin-top: 1rem;">

                    <!-- Name -->
                    <div class="form-group">
                      <label class="visually-hidden" for="reviewName">??????:</label>
                      <input class="form-control form-control-sm" id="reviewName" type="text" placeholder="????????? ??????????????????." required="">
                    </div>

                  </div>
                  <div class="col-12" style="margin-top: 1.5rem;">

                    <!-- Review -->
                    <div class="form-group">
                      <label class="visually-hidden" for="reviewText">??????</label>
                      <textarea class="form-control form-control-sm" id="reviewText" rows="5" placeholder="????????? ??????????????????." required=""></textarea>
                    </div>

                  </div>
                  <div class="col-12 text-center" style="margin-top: 3rem;">

                    <!-- Button -->
                    <a class="btn btn-outline-dark" type="button" href="#">?????? ????????????</a>

                  </div>
                </div>
              </form>
            </div>
       </div>
            
            
            
       <div class="container review2" style="margin-top: 2rem;">
           <div class="row">
				<div class="col-12" id="reviewID"><span><i class="fa-solid fa-circle-user"></i> yeriel</span></div>
				<div class="row justify-content-between">
					<div class="col-4 text-start">
						<div class="reviewStar2">
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>&emsp;
						</div>
					</div>
					<div class="col-8 text-end">
						<span class="reviewDate">2??? 17??? 12:01:50&emsp;<b>62% ?????? ??? ??????</b></span>
					</div>
				</div>
			<div class="reviewContent">
				<span>
					??????????????? ?????? ?????? ???????????? 2??? ???????????????????????? ?????? ???????????????. ???????????? ???????????? ?????????  
					<br>????????? ?????? ?????????????????? ????????? ?????? ???????????????. 
				</span>
			</div>
			<div class="row justify-content-between" style="margin-top: 1rem;">
					<div class="col-1 text-start"><i class="fa-solid fa-heart"></i> 5</div>
					<div class="col-11 text-end">
						<a type="button"  href="/review/reviewModForm" role="button" class="btn btn-outline-dark btn-small"><i class="fa-solid fa-pen"></i></a>
						<button type="button" href="#" role="button" class="btn btn-outline-dark btn-small"><i class="fa-solid fa-floppy-disk"></i></button>
					</div>
				</div>
			<div class="row justify-content-between" style="margin-top: 3rem;">
				<div class="col-12" id="reviewID"><span><i class="fa-solid fa-circle-user"></i> chacha</span></div>
					<div class="col-4 text-start">
						<div class="reviewStar2">
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>&emsp;
						</div>
					</div>
					<div class="col-8 text-end">
						<span class="reviewDate">4??? 9??? 20:50:12&emsp;<b>100% ?????? ??? ??????</b></span>
					</div>
				<div class="reviewContent">
					<span>
						????????? ?????? ??? ??????????????? ??????????????? ????????? ????????? ??????????????? ???????????? ??????????????????. ?????? ?????? 
						<br>??? ???????????? ??????????????? ?????????????????? ???????????? ?????? ????????????. ?????? ??????????????? ????????? ?????? ????????? 
						<br>?????? ????????? ??? ?????????. ??????????????? ????????? ???????????? ??????????????? ????????????.
					</span>
				</div>
			</div>
			<div class="row justify-content-between" style="margin-top: 1rem;">
				<div class="col-1 text-start"><i class="fa-solid fa-heart"></i> 5</div>
				<div class="col-11 text-end">
					<button type="button" href="#" role="button" class="btn btn-outline-dark btn-small"><i class="fa-solid fa-pen"></i></button>
					<button type="button" href="#" role="button" class="btn btn-outline-dark btn-small"><i class="fa-solid fa-floppy-disk"></i></button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- footer -->
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
</body>
</html>