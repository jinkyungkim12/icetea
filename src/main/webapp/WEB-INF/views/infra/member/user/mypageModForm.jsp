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
		#logoutButton{
			width: 7rem;
			background-color: #FF5600;
			color: white;
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
			width: 500px;
			height: 40px;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 18px;
			margin-top: 3rem;
			background-color: #FF5600;
			color: white;
		}
		#bbb{
			color: black;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			font-size: 14px;
			margin-top: 0.5rem;
		}
		.profile{
			width: 100px;
			height: 100px;
			border-radius: 100%;
			overflow: hidden;
		}
		.profile_user{
			width: 100%;
			height: 100%;
			object-fit: cover;
		}
		.form-check-input:checked {
		    background-color: #FF5600;
		    border-color: #FF5600;
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
								<a href="mypage.html" class="dropdown-item text-center" style="color: #FF5600">마이페이지 <i class="fa-solid fa-angle-right"></i></a> 
								<hr class="dropdown-divider">
								<div class="row justify-content-center"><a type="button" href="../member/member_loginForm.html" class="btn btn-light rounded rounded-pill" id="logoutButton">Logout</a></div>
							</div>
						</div>
					</div>
				</div>	
			</div>	
		</div>
	</div>
	
	
	<!-- 회원가입 -->
	
	<div class="container">
		<div class="row">
			<p id="head" class="text-center">회원정보 수정</p>			
		</div>
	</div>
	<div class="container text-center" style="margin-top: 2rem;">
		<label class="form-label">프로필 사진</label>
		<div class="row justify-content-center">
			<div class="col-3 text-center">
    			<img id="preview-image" src="https://images.pexels.com/photos/2106037/pexels-photo-2106037.jpeg?auto=compress&cs=tinysrgb&w=1600" class="profile">
				<input style="display: block; margin:auto;" type="file" id="input-image">
			</div>
		</div>
	</div>
	
	
	<!-- 항목 -->
	
	
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
				  <input type="mobile" class="form-control" style="width: 50%" placeholder="01000000000">
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
				  <input type="mobile" class="form-control" style="width: 50%" placeholder="01000000000">
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
		<div class="row justify-content-center">
			<div class="col text-center"><a type="button" class="btn" href="mypage.html" id="Modification">수정하기</a></div>
		</div>
	</div>
	<br>
	<br>
	
<!-- end	 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/1d7c148109.js" crossorigin="anonymous"></script>
	<script type="text/javascript">
		function readImage(input) {
		    // 인풋 태그에 파일이 있는 경우
		    if(input.files && input.files[0]) {
		        // 이미지 파일인지 검사 (생략)
		        // FileReader 인스턴스 생성
		        const reader = new FileReader()
		        // 이미지가 로드가 된 경우
		        reader.onload = e => {
		            const previewImage = document.getElementById("preview-image")
		            previewImage.src = e.target.result
		        }
		        // reader가 이미지 읽도록 하기
		        reader.readAsDataURL(input.files[0])
		    }
		}
		// input file에 change 이벤트 부여
		const inputImage = document.getElementById("input-image")
		inputImage.addEventListener("change", e => {
		    readImage(e.target)
		})
	</script>
</body>
</html>