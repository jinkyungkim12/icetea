<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>
<html>
<head>
	<title>Product RegForm</title>
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
	<link rel="shortcut icon" type="image/x-icon" href="https://cdn.icon-icons.com/icons2/2091/PNG/512/settings_icon_128522.png">

	<style type="text/css">
		.container{
			font-family: 'Happiness-Sans-Regular';	
		}
		@font-face {
		    font-family: 'Happiness-Sans-Regular';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2205@1.0/Happiness-Sans-Regular.woff2') format('woff2');
		    font-weight: 400;
		    font-style: normal;
		}
		#head{
			color: black;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 30px;
			margin-top: 4rem;
		}
		#firstrow{
			margin-top: 2rem;
		}
		#Modification{
			width: 300px;
			height: 40px;
			font-style: normal;
			font-size: 18px;
			margin-top: 3rem;
			background-color: #FF5600;
			color: white;
		}
		#back{
			width: 300px;
			height: 40px;
			font-style: normal;
			font-size: 18px;
			margin-top: 3rem;
			background-color: black;
			color: white;
		}
		.bb{
			font-weight: bold;
			font-size: 20px;
		}
		.nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active {
		  color: #ffffff;
		  background-color: #f87320;
		}
		.nav-link:focus, .nav-link:hover {
		  color: #F7670E;
		}
	</style>
</head>
<body>

<!-- start -->
	
	<!-- nav bar -->
	
	<nav class="navbar navbar-dark bg-dark fixed-top">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="../member/dmin_List.html"><b>CLASS 101</b></a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
	      <div class="offcanvas-header">
	        <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel"><b>CLASS 101</b></h5>
	        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
	      </div>
	      <div class="offcanvas-body">
	        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
	          <li class="nav-item">
	            <a class="nav-link bbb" href="../member/dmin_List.html">회원관리</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link bbb" href="dmin_product.html">클래스관리</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link bbb" href="../review/dmin_review.html">리뷰관리</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link bbb" href="../order/dmin_order.html">주문관리</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link bbb" href="../../dmin/codeGroup.html">코드그룹관리</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link bbb" href="../../dmin/code.html">코드관리</a>
	          </li>
	        </ul>
	        <div class="text-center">
		         <ul class="navbar-nav" style="margin-top: 3rem;">
			      <li class="nav-item justify-content-end">
			        <a type="button" class="nav-link btn btn-warining" href="../../dmin/loginForm.html" style="background-color: #F87320; color: white;">logout</a>
			      </li>
			     </ul>
		     </div>
	      </div>
	    </div>
	  </div>
	</nav>

	<!-- 클래스 헤더 -->
	
	<div><img src="../../resources/images/back2.jpg"></div>
	<div class="container">
		<div class="row">
			<p id="head" class="text-center"><b>클래스 등록</b></p>			
		</div>
	</div>
	
	<!-- 회원등록 -->
	<div class="container">
		<div class="row gy-3" id="firstrow">
			<div class="col-12">
				<label class="form-label bb">대표 이미지(최소 3개 이상)</label>
	   			<input type="file" class="form-control" id="inputGroupFile01" multiple="multiple">
			</div>
			<div class="col-6">
				<label class="form-label bb">카테고리(크리에이트명)</label>
	   			<input type="text" class="form-control" value="" placeholder="크리에이트명이나 카테고리를 입력해주세요.">
			</div>
			<div class="col-6">
				<label class="form-label bb">구분</label>
	   			<select class="form-select col-2" aria-label="Default select example">
				  <option selected>구분</option>
				  <option value="1">오늘의 특가! TIME DEAL</option>
				  <option value="2">MD 추천 클래스</option>
				  <option value="3">오픈 예정 클래스</option>
				</select>
			</div>
			<div class="col-12">
				<label class="form-label bb">강의제목</label>
	   			<input type="text" class="form-control" value="" placeholder="타이틀">
			</div>
			<div class="col-12">
				<div class="row">
					<label class="form-label bb">가격 정보</label>
					<div class="col-3">
						<label class="form-label"><small>정가</small></label>
			   			<input type="text" class="form-control" value="" placeholder="ex) 300,000원">
					</div>
					<div class="col-3">
						<label class="form-label"><small>할인률</small></label>
			   			<input type="text" class="form-control" value="" placeholder="ex) 30%">
					</div>
					<div class="col-3">
						<label class="form-label"><small>할부</small></label>
			   			<input type="text" class="form-control" value="" placeholder="ex) 5개월">
					</div>
					<div class="col-3">
						<label class="form-label"><small>총 할인액</small></label>
			   			<input type="text" class="form-control" value="" placeholder="ex) -10,000원">
					</div>
				</div>
			</div>
			<div class="col-12">
				<label class="form-label bb">클래스 정보</label>
		   		<div class="row">
		   			<div class="col-6">
		   				<label class="form-label"><small>클래스 분량</small></label>
		   				<input type="text" class="form-control" value="" placeholder="ex) 12개 챕터, 44개 세부강의">
		   			</div>
	   				<div class="col-2">
		   				<label class="form-label"><small>수강 가능 여부</small></label>
		   				<select class="form-select col-2" aria-label="Default select example">
						  <option selected>선택</option>
						  <option value="1">Y</option>
						  <option value="2">N</option>
						</select>
					</div>
					<div class="col-2">
						<label class="form-label"><small>자막 포함 여부</small></label>
						<select class="form-select col-2" aria-label="Default select example">
						  <option selected>구분</option>
						  <option value="1">Y</option>
						  <option value="2">N</option>
						</select>
					</div>
					<div class="col-2">
						<label class="form-label"><small>키트 포함 여부</small></label>
						<select class="form-select col-2" aria-label="Default select example">
						  <option selected>구분</option>
						  <option value="1">Y</option>
						  <option value="2">N</option>
						</select>
					</div>
	   			</div>
			</div>
			<div class="col-12">
				<label class="form-label bb">강의 소개</label>
				<br><label class="form-label"><small>강의 한줄 소개</small></label>
		   		<input type="text" class="form-control" value="" placeholder="ex) 초급자분들을 위한 oo클래스입니다."> 
			</div>
			<div class="col-12">
				<label class="form-label"><small>강의정보 첨부파일</small></label>
	   			<input type="file" class="form-control" id="inputGroupFile01" multiple="multiple">
			</div>
			<div class="col-12">
				<label class="form-label bb">커리큘럼</label>
				<textarea class="form-control" placeholder="커리큘럼 형식에 맞게 작성해주시기 바랍니다." style="height: 150px"></textarea>
				<small style="color: gray;"><i class="fa-solid fa-circle-info"></i> WELCOME, OUTRO를 포함해서 작성해주시기 바랍니다.</small>
			</div>
			<div class="col-12">
				<label class="form-label bb">키트 소개</label>
	   			<input type="file" class="form-control" id="inputGroupFile01" multiple="multiple">
			</div>
		</div>
	</div>
	
	
	<!-- 버튼 -->
	
	<div class="container">
		<div class="row justify-content-center" style="margin-top: 3rem;">
			<div class="col-3 text-center"><a type="button" class="btn" href="dmin_product.html" id="Modification">등록하기</a></div>
			<div class="col-3 text-center"><a type="button" class="btn" href="dmin_product.html" id="back">뒤로가기</a></div>
		</div>
	</div>
	<br>
	<br>
	<br>

<!-- end	 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/1d7c148109.js" crossorigin="anonymous"></script>
</body>
</html>