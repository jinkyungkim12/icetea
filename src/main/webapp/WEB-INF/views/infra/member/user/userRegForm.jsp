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
		#login{
			width: 500px;
			height: 40px;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 18px;
			margin-top: 3rem;
			background-color: #FF5600;
			color: white;
		}
		#kakao{
			width: 500px;
			height: 40px;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 18px;
			background-color:#FEE500;
		}
		#other{
			width: 500px;
			height: 40px;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 18px;
			margin-top: 0.5rem;
			color: white;
		}
		#aaa{
			width: 500px;
		}
		#bbb{
			color: black;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			font-size: 14px;
			margin-top: 0.5rem;
		}
		.nav{
			--bs-nav-link-color: #000000;
    		--bs-nav-link-hover-color: #FF5600;
		}
		.form-check-input:checked {
		    background-color: #FF5600;
		    border-color: #FF5600;
		}
		.form-label{
			font-weight: bold;
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
				    <a class="navbar-brand" href="#">
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
				<ul class="nav justify-content-end" id="leftList">
				  <li class="nav-item">
				    <a class="nav-link" aria-current="page" href="#">크리에이터 지원</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">기업교육</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="/member/memberLogin">로그인</a>
				  </li>
				</ul>
			</div>	
		</div>
	</div>
	
	
	<!-- 회원가입 -->
	
	<div class="container">
		<div class="row">
			<p id="head" class="text-center">회원가입</p>			
		</div>
	</div>
	
	
	<!-- 회원가입 항목 -->
	
	<div class="container">
		<div class="row gy-3" id="firstrow">
			<div class="col-6">
				<label class="form-label">구분</label>
	   			<select class="form-select" aria-label="Default select example">
				  <option selected>구분</option>
				  <option value="1">수강생</option>
				  <option value="2">크리에이터</option>
			  	</select>
			</div>
			<div class="col-6"></div>
			<div class="col-6">
				<label class="form-label">이름</label>
	   			<input type="text" class="form-control" value="" placeholder="이름">
			</div>
			<div class="col-6">
				<label class="form-label">아이디</label>
	   			<input type="text" class="form-control" value="" placeholder="아이디">
			</div>
			<div class="col-6">
				<label class="form-label">비밀번호</label>
	   			<input type="password" class="form-control" value="" placeholder="비밀번호">
	   			<small style="color: gray;"><i class="fa-solid fa-circle-info"></i> 영문 대문자/영문 소문자/숫자/특수문자 중 2가지 이상 조합, 8자~32자</small>
			</div>
			<div class="col-6">
				<label class="form-label">비밀번호 확인</label>
	   			<input type="password" class="form-control" value="" placeholder="비밀번호 확인">
			</div>
			<div class="col-6">
				<label class="form-label">소속회사</label>
	   			<input type="text" class="form-control" value="" placeholder="소속회사">
			</div>
			<div class="col-6">
				<label class="form-label">크리에이터 활동명</label>
	   			<input type="text" class="form-control" value="" placeholder="크리에이터 활동명">
			</div>
			<div class="col-6">
				<label class="form-label">생년월일</label>
	   			<input type="date" class="form-control" value="">
			</div>
			<div class="col-6">
				<label class="form-label">성별</label>
				<div class="row" style="margin-left: 10px;">
					<div class="col-3 form-check">
					  <input class="form-check-input" type="radio" name="flexRadioDefault1" id="flexRadioDefault1" checked>
					  <label class="form-check-label" for="flexRadioDefault1">
					    남성
					  </label>
					</div>
					<div class="col-3 form-check">
					  <input class="form-check-input" type="radio" name="flexRadioDefault1" id="flexRadioDefault2">
					  <label class="form-check-label" for="flexRadioDefault2">
					    여성
					  </label>
					</div>
				</div>
			</div>
			<div class="col-6">
				<label class="form-label">연락처(필수)</label>
				<div class="input-group">
				  <select class="form-select col-2" aria-label="Default select example">
					  <option selected>통신사</option>
					  <option value="1">SKT</option>
					  <option value="2">LGT</option>
					  <option value="3">KT</option>
				  </select>
				  <input type="mobile" class="form-control" style="width: 50%" placeholder="010-0000-0000">
				</div>
			</div>
			<div class="col-6">
				<label class="form-label">연락처(선택)</label>
				<div class="input-group">
				  <select class="form-select col-2" aria-label="Default select example">
					  <option selected>통신사</option>
					  <option value="1">SKT</option>
					  <option value="2">LGT</option>
					  <option value="3">KT</option>
				  </select>
				  <input type="mobile" class="form-control" style="width: 50%" placeholder="010-0000-0000">
				</div>
			</div>
			<div class="col-6">
				<label class="form-label">이메일</label>
	   			<input type="text" class="form-control" value="" placeholder="example@naver.com">
			</div>
			<div class="col-6">
				<div class="row"><label class="form-label">주소</label></div>
				<div class="row">
					<div class="col-8">	
		   				<input type="text" class="form-control" value="" placeholder="우편번호">
		   			</div>
		   			<div class="col-4">
		   				<a class="btn btn-outline-secondary" type="button" id="button-addon2" style="width: 100%">우편번호 찾기</a>
	   				</div>
	   			</div>
			</div>
			<div class="col-6"></div>
			<div class="col-6"><input type="text" class="form-control" value="" placeholder="주소"></div>
			<div class="col-6"></div>
			<div class="col-6"><input type="text" class="form-control" value="" placeholder="상세주소"></div>
			<div class="col-3">
				<label class="form-label">모바일 수신동의</label>
				<div class="row" style="margin-left: 10px;">
					<div class="col-6 form-check">
					  <input class="form-check-input" type="radio" name="flexRadioDefault2" id="flexRadioDefault1" checked>
					  <label class="form-check-label" for="flexRadioDefault1">
					    동의
					  </label>
					</div>
					<div class="col-6 form-check">
					  <input class="form-check-input" type="radio" name="flexRadioDefault2" id="flexRadioDefault2">
					  <label class="form-check-label" for="flexRadioDefault2">
					    비동의
					  </label>
					</div>
				</div>
			</div>
			<div class="col-3">
				<label class="form-label">이메일 수신동의</label>
				<div class="row" style="margin-left: 10px;">
					<div class="col-6 form-check">
					  <input class="form-check-input" type="radio" name="flexRadioDefault3" id="flexRadioDefault1" checked>
					  <label class="form-check-label" for="flexRadioDefault1">
					    동의
					  </label>
					</div>
					<div class="col-6 form-check">
					  <input class="form-check-input" type="radio" name="flexRadioDefault3" id="flexRadioDefault2">
					  <label class="form-check-label" for="flexRadioDefault2">
					    비동의
					  </label>
					</div>
				</div>
			</div>
			<div class="col-6">
				<label class="form-label">개인정보 유효기간</label>
				<div class="row" style="margin-left: 10px;">
					<div class="col-3 form-check">
					  <input class="form-check-input" type="radio" name="flexRadioDefault4" id="flexRadioDefault1" checked>
					  <label class="form-check-label" for="flexRadioDefault1">
					    1년
					  </label>
					</div>
					<div class="col-3 form-check">
					  <input class="form-check-input" type="radio" name="flexRadioDefault4" id="flexRadioDefault2">
					  <label class="form-check-label" for="flexRadioDefault2">
					    3년
					  </label>
					</div>
					<div class="col-3 form-check">
					  <input class="form-check-input" type="radio" name="flexRadioDefault4" id="flexRadioDefault3">
					  <label class="form-check-label" for="flexRadioDefault3">
					    10년
					  </label>
					</div>
					<div class="col-3 form-check">
					  <input class="form-check-input" type="radio" name="flexRadioDefault4" id="flexRadioDefault4">
					  <label class="form-check-label" for="flexRadioDefault4">
					    평생회원
					  </label>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container" id="aaa">
		<div class="row">
			<a type="button" class="btn" href="RegFormComplete.html" id="login">동의하고 회원가입</a>
		</div>
		<div id="bbb">
			<a class="nav-link" href="#">이용약관, 개인정보 수집 및 이용, 개인정보 제공 내용을 확인하였고 동의합니다.</a>
		</div>
		<hr>
		<div class="row">
			<a type="button" class="btn btn-light" href="#" id="kakao" style="margin-top: 3rem;">
				<i class="fa-solid fa-comment-dots"></i> 카카오로 3초만에 시작하기
			</a>
		</div>
		<div class="row">
			<a type="button" class="btn btn-light" href="#" id="other" style="background-color: #2DB400;">
				<i class="fa-solid fa-n"></i> 네이버로 시작하기
			</a>
		</div>
		<div class="row">
			<a type="button" class="btn btn-light" href="#" id="other" style="background-color: #1877F2;">
				<i class="fa-brands fa-facebook-square"></i> 페이스북으로 시작하기
			</a>
		</div>
		<div class="row">
			<a type="button" class="btn btn-light" href="#" id="other" style="background-color: #EA4335;">
				<i class="fa-solid fa-g"></i> 구글로 시작하기
			</a>
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