<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>
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
		#leftList{
			color: black;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			font-size: 15px;
		}
		@font-face {
		    font-family: 'Happiness-Sans-Regular';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2205@1.0/Happiness-Sans-Regular.woff2') format('woff2');
		    font-weight: 400;
		    font-style: normal;
		}
		.nav{
			--bs-nav-link-color: #000000;
    		--bs-nav-link-hover-color: #FF5600;
		}
		.container{
			font-family: 'Happiness-Sans-Regular';
		}
		.form-check-input:checked{
			background-color: #FF5600;
		    border-color: #FF5600;
		}
	</style>
</head>
<body>

<!-- start -->
	
	<!-- NAV bar	 -->
	<div class="container" style="margin-top: 3rem;"> 
		<div class="row">
			<div class="col-9">
				<nav class="navbar navbar-expand-lg bg-white">
				  <div class="container-fluid">
				    <a class="navbar-brand" href="/home">
      					<img src="../../resources/images/logo.png" alt="">
				    </a>
				    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				      <span class="navbar-toggler-icon"></span>
				    </button>
				    <div class="row">
						<select id="shOption" name="shOption" class="form-select" aria-label="Default select example" style="width: 150px;">
						  <option value="" <c:if test="${empty vo.shOption}">selected </c:if>>????????????</option>
						  <option value="1" <c:if test="${vo.shOption eq 1}">selected </c:if>>????????????</option>
						  <option value="2" <c:if test="${vo.shOption eq 2}">selected </c:if>>????????????</option>
						</select>
				        <input class="form-control me-2" type="search" name="shValue" value="<c:out value="${vo.shValue }"/>" placeholder="???????????? ???????????????." aria-label="Search" style="width: 300px;">
				        <button class="btn btn-outline-dark" id="btnSearch" style="width: 100px;">Search</button>
			        </div>
				    </div>
				 </nav>  
			</div>
	 	
			
			<!-- ????????? ???	 -->
			<c:if test="${sessSeq eq null}">
				<div class="col">
					<ul class="nav justify-content-end" id="leftList">
						<li class="nav-item"><a class="nav-link" aria-current="page"
							href="#">??????????????? ??????</a></li>
						<li class="nav-item"><a class="nav-link" href="#">????????????</a></li>
						<li class="nav-item"><a class="nav-link" href="/member/memberLogin">?????????</a></li>
					</ul>
				</div>
			</c:if>
			
			<!-- ????????? ??? -->
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
									<a href="/member/mypage" class="dropdown-item text-center" style="color: #FF5600">??????????????? <i class="fa-solid fa-angle-right"></i></a> 
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
	
	
	<div class="container" style="margin-top: 5rem;">
		<div class="row">
			
			<!-- ????????? ?????? -->
			<div class="col-6 ">
				<div class="shadow p-3 mb-5 bg-body rounded-4">
					<div style="padding: 30px;">
						<div><h2><b>????????? ??????</b></h2></div>
						<div style="margin-top: 5.7rem;"><h5>????????? ????????? ????????? ????????? ????????? ????????? ???????????? ????????????<br>????????? ???????????? ??????????????????.</h5></div>
						<div class="form-check" style="margin-top: 2rem;">
							<div style="margin-left: 2rem;">
								<input class="form-check-input" type="radio" name="flexRadioDefault3" id="flexRadioDefault1" checked>
								<label class="form-check-label" for="flexRadioDefault1">????????? ??????</label>
						  	</div>
							<div class="row"  style="margin-top: 1rem;">
								<div class="input-group">
									<div class="col-4">							
										<select class="form-select col-2" aria-label="Default select example">
										  <option selected>?????????</option>
										  <option value="1">SKT</option>
										  <option value="2">LGT</option>
										  <option value="3">KT</option>
										</select>
								  	</div>
								  	<div class="col-7"><input type="mobile" class="form-control" placeholder="010-0000-0000"></div>
								</div>
							 </div>
							 <div style="margin-left: 2rem; margin-top: 1rem;">
							 	<input class="form-check-input" type="radio" name="flexRadioDefault3" id="flexRadioDefault2">
								<label class="form-check-label" for="flexRadioDefault2">????????? ??????</label>
							 </div>
							 <div class="row" style="margin-top: 1rem;">
							 	<div class="col-11">
								   <input type="email" class="form-control" placeholder="example@naver.com">
							   	</div>
							 </div>
						</div>
						
						<!-- ?????? -->
						<div class="row justify-content-center" style="margin-top: 5rem;">
							<a type="button" class="btn btn-dark" style="width: 70%;"><b>????????? ??????</b></a>
						</div>
						
					</div>
				</div>
			</div>
			
			
			<!-- ?????? ?????? -->
			<div class="col-6 ">
				<div class="shadow p-3 mb-5 bg-body rounded-4">
					<div style="padding: 30px;">
						<div><h2><b>????????? ???????????????<br>??????????????????</b></h2></div>
						<div style="margin-top: 3rem;"><h5>????????? ????????? ????????? ????????? ???????????? ????????? ???????????? ??? ??????<br>????????? ???????????? ??????????????????.</h5></div>
						<div class="col" style="margin-top: 3rem;">
							<label class="form-label">?????????</label>
					   		<input type="text" class="form-control" value="" placeholder="example@naver.com">
						</div>	
										
						<!-- ?????? -->
						<div class="row justify-content-center" style="margin-top: 10.7rem;">
							<a type="button" class="btn btn-dark" style="width: 70%;"><b>?????? ?????? ????????????</b></a>
						</div>
					
					</div>
				</div>
			</div>
		</div>
	</div>

		
<!-- end	 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/1d7c148109.js" crossorigin="anonymous"></script>
</body>
</html>