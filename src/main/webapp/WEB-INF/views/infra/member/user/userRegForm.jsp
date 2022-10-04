<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<%@ page session="true" %>
<html>
<head>
	<title>class101</title>
	<script src="https://kit.fontawesome.com/15c84217dd.js"	crossorigin="anonymous"></script>
	<!-- Bootstrap CSS -->
	<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css"	rel="stylesheet">
	<!-- Bootstrap extra CSS -->
	<link href="/resources/xdmin/css/bootstrap/sidebars.css" rel="stylesheet">
	<!-- jquery ui CSS -->
	<link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css"	rel="stylesheet">
	<!-- user css -->
	<link rel="stylesheet" href="/resources/xdmin/css/commonXdmin.css" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"	crossorigin="anonymous">
	<link rel="shortcut icon" type="image/x-icon" href="https://cdn-icons-png.flaticon.com/512/477/477796.png">
	<script defer type="text/javascript" src="/resources/js/validation.js"></script>
	<style type="text/css">
		#ListClass {
			color: red;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 20px;
		}
		
		#ListStore {
			color: black;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 20px;
		}
		
		@font-face {
			font-family: 'Happiness-Sans-Bold';
			src:
				url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2205@1.0/Happiness-Sans-Bold.woff2')
				format('woff2');
			font-weight: 700;
			font-style: normal;
		}
		
		#leftList {
			color: black;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			font-size: 15px;
		}
		
		@font-face {
			font-family: 'Happiness-Sans-Regular';
			src:
				url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2205@1.0/Happiness-Sans-Regular.woff2')
				format('woff2');
			font-weight: 400;
			font-style: normal;
		}
		
		#head {
			color: black;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 30px;
			margin-top: 4rem;
		}
		
		#firstrow {
			margin-top: 2rem;
		}
		
		#btnSave {
			width: 500px;
			height: 40px;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 18px;
			margin-top: 3rem;
			background-color: #FF5600;
			color: white;
		}
		
		#kakao {
			width: 500px;
			height: 40px;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 18px;
			background-color: #FEE500;
		}
		
		#other {
			width: 500px;
			height: 40px;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 18px;
			margin-top: 0.5rem;
			color: white;
		}
		
		#aaa {
			width: 500px;
		}
		
		#bbb {
			color: black;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			font-size: 14px;
			margin-top: 0.5rem;
		}
		
		.nav { -
			-bs-nav-link-color: #000000; -
			-bs-nav-link-hover-color: #FF5600;
		}
		
		.form-check-input:checked {
			background-color: #FF5600;
			border-color: #FF5600;
		}
		
		.form-label {
			font-weight: bold;
		}
		:root{
			 --bs-link-hover-color: #fd7e14;
		}
		.nav-link{
			color: black;
		}
		
		.input-control input:focus {
		    outline: 0;
		}
		
		.input-control.success input {
		    border-color: #198754;
		}
		
		.input-control.error input {
		    border-color: #ff3860;
		}
		
		.input-control .error {
		    color: #dc3545;
		    font-size: 15px;
		    height: 15px;
		    margin: 0 5px;
		}
		
		.input-control.success select {
		    border-color: #198754;
		}
		
		.input-control.error select {
		    border-color: #dc3545;
		}
		
		.input-control.success radio {
		    border-color: #198754;
		}
		
		.input-control.error radio {
		    border-color: #dc3545;
		}
		
		.msg.success {
			color: #198754;
		}
		
		.msg.error {
			color: #dc3545;
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
						<a class="navbar-brand" href="/home"> <img
							src="../../resources/images/logo.png" alt="">
						</a>
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse"
							data-bs-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav me-auto mb-2 mb-lg-0">
								<li class="nav-item" id=""><a class="nav-link" href="#"
									id="ListClass"><b>클래스</b></a></li>
								<li class="nav-item"><a class="nav-link" href="#"
									id="ListStore"><b>스토어</b></a></li>
							</ul>
						</div>
						<form class="d-flex" role="search">
							<input class="form-control me-2" type="search"
								placeholder="검색어를 입력하세요." aria-label="Search"
								style="width: 400px;">
							<button class="btn btn-outline-dark" type="submit">Search</button>
						</form>
					</div>
				</nav>
			</div>
			<div class="col">
				<ul class="nav justify-content-end" id="leftList">
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="#">크리에이터 지원</a></li>
					<li class="nav-item"><a class="nav-link" href="#">기업교육</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/member/memberLogin">로그인</a></li>
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

	<form id="form" name="form" method="post">
	<!-- *Vo.jsp s -->
	<%@include file="memberVo.jsp"%>
	<!-- *Vo.jsp e -->
		<div class="container">
			<div class="row gy-3" id="firstrow">
				<div class="col-6 input-control">
					<label class="form-label">구분<span style="color: red;">*</span></label> 
					<select class="form-select" aria-label="Default select example" name="position" id="position" onfocusout="validationUpdt()">
						<option value=""	<c:if test="${empty item.position }"> selected</c:if>>선택</option>
						<option value="22"	<c:if test="${item.position eq 22 }"> selected</c:if>>수강생</option>
						<option value="23"	<c:if test="${item.position eq 23 }"> selected</c:if>>크리에이터</option>
						<option value="24"	<c:if test="${item.position eq 24 }"> selected</c:if>>매니저</option>
					</select>
					<div class="msg" id="position_msg" name="position_msg" style="display: none;"></div>
				</div>
				<div class="col-6"></div>
				<div class="col-6 input-control">
					<label class="form-label">이름<span style="color: red;">*</span></label> 
					<input type="text" class="form-control" value="<c:out value="${item.name}"/>" name="name" id="name" placeholder="이름" onkeypress="validationUpdt()">
					<div class="msg" id="name_msg" name="name_msg" style="display: none;"></div>
				</div>
				<div class="col-6 input-control">
					<label class="form-label">아이디<span style="color: red;">*</span></label> 
					<input type="hidden" id="idAllowedNY" name="idAllowedNY" value="0">
					<input type="text" class="form-control" value="<c:out value="${item.id}"/>" placeholder="아이디" name="id" id="id">
					<div class="invalid-feedback" id="idFeedback"></div>
				</div>
				<div class="col-6 input-control">
					<label class="form-label">비밀번호<span style="color: red;">*</span></label> 
					<input type="password" class="form-control" value="<c:out value="${item.password}"/>" placeholder="비밀번호" name="password" id="password" onkeypress="validationUpdt()"> 
					<small style="color: gray;"><i class="fa-solid fa-circle-info"></i> 영문 대문자/영문 소문자/숫자/특수문자 중 2가지 이상 조합, 8자~32자</small>
					<div class="msg" id="password_msg" name="password_msg" style="display: none;"></div>
				</div>
				<div class="col-6 input-control">
					<label class="form-label">비밀번호 확인<span style="color: red;">*</span></label> 
					<input type="password" class="form-control" value="<c:out value="${item.password}"/>" placeholder="비밀번호 확인" id="password2" onkeypress="validationUpdt()">
					<div class="msg" id="password2_msg" name="password2_msg" style="display: none;"></div>
				</div>
				<div class="col-6">
					<label class="form-label">소속회사</label> 
					<input type="text" class="form-control" value="<c:out value="${item.company}"/>" placeholder="소속회사" name="company" id="company">
				</div>
				<div class="col-6">
					<label class="form-label">크리에이터 활동명</label> 
					<input type="text" class="form-control" value="<c:out value="${item.creatorNickname}"/>" placeholder="크리에이터 활동명" name="creatorNickname"	id="creatorNickname">
				</div>
				<div class="col-6 input-control">
					<label class="form-label">생년월일<span style="color: red;">*</span></label> 
					<input type="text" class="form-control" value="<c:out value="${item.dob}"/>" placeholder="1990-01-01" name="dob" id="dob" onkeypress="validationUpdt()">
					<div class="msg" id="dob_msg" name="dob_msg" style="display: none;"></div>
				</div>
				<div class="col-6 input-control">
					<label class="form-label">성별<span style="color: red;">*</span></label>
					<div class="row" style="margin-left: 10px;">
						<div class="col-3 form-check form-check-inline" name="gender">
						  <input class="form-check-input" type="radio" value="4" <c:if test="${item.gender eq 4 }"> checked</c:if> name="gender" id="gender1">
						  <label class="form-check-label" for="gender1">
						    남성
						  </label>
						</div>
						<div class="col-3 form-check form-check-inline" name="gender">
						  <input class="form-check-input" type="radio" value="5" <c:if test="${item.gender eq 5 }"> checked</c:if> name="gender" id="gender2">
						  <label class="form-check-label" for="gender2">
						    여성
						  </label>
						</div>
						<div class="msg" id="gender_msg" name="gender_msg" style="display: none;"></div>
					</div>
				</div>
				<div class="col-6 input-control">
					<label class="form-label">연락처(필수)<span style="color: red;">*</span></label>
					<div class="input-group">
						<select class="form-select col-2" aria-label="Default select example" name="telCompany"	id="telCompany" onfocusout="validationUpdt()">
							<option value=""  <c:if test="${empty item.telCompany }"> selected</c:if>>선택</option>
							<option value="1" <c:if test="${item.telCompany eq 1 }"> selected</c:if>>SKT</option>
							<option value="2" <c:if test="${item.telCompany eq 2 }"> selected</c:if>>LGT</option>
							<option value="3" <c:if test="${item.telCompany eq 3 }"> selected</c:if>>KT</option>
						</select>
						<input type="mobile" class="form-control" style="width: 50%" placeholder="01000000000" name="phone"	value="<c:out value="${item.phone}"/>" id="phone" onkeypress="validationUpdt()">
						<div class="msg" id="phone_msg" name="phone_msg" style="display: none;"></div>
					</div>
				</div>
				<div class="col-6">
					<label class="form-label">연락처(선택)</label>
					<div class="input-group">
						<select class="form-select col-2" aria-label="Default select example" name="telCompany">
							<option value=""  <c:if test="${empty item.telCompany }"> selected</c:if>>선택</option>
							<option value="1" <c:if test="${item.telCompany eq 1 }"> selected</c:if>>SKT</option>
							<option value="2" <c:if test="${item.telCompany eq 2 }"> selected</c:if>>LGT</option>
							<option value="3" <c:if test="${item.telCompany eq 3 }"> selected</c:if>>KT</option>
						</select>
						<input type="mobile" class="form-control" style="width: 50%" placeholder="01000000000" name="phone2" value="<c:out value="${item.phone2}"/>" id="phone2">
					</div>
				</div>
				<div class="col-6 input-control">
					<label for="email" class="form-label">이메일<span style="color: red;">*</span></label>
					<div class="input-group">
						<input type="text" class="form-control" placeholder="example" value="<c:out value="${item.emailInsert}"/>" name="emailInsert" id="emailInsert" onkeypress="validationUpdt()">
						<div class="msg" id="emailInsert_msg" name="emailInsert_msg" style="display: none;"></div>
						<span class="input-group-text">@</span>
						<select class="form-select" aria-label=".form-select example" name="emailDomain" onfocusout="validationUpdt()">
							<option value=""  <c:if test="${empty item.emailDomain }"> selected</c:if>>선택</option>
							<option value="28" <c:if test="${item.emailDomain eq 28 }"> selected</c:if>>naver.com</option>
							<option value="29" <c:if test="${item.emailDomain eq 29 }"> selected</c:if>>gmail.com</option>
							<option value="30" <c:if test="${item.emailDomain eq 30 }"> selected</c:if>>daum.net</option>
						</select>
					</div>
				</div>
				<div class="col-6 input-control">
					<div class="row"><label class="form-label">주소<span style="color: red;">*</span></label></div>
					<div class="row input-group">
						<div class="col-8">	
			   				<input type="text" class="form-control" id="zipcode" name="zipcode" value="<c:out value="${item.zipcode}"/>" onfocusout="validationUpdt()">
			   				<div class="msg" id="zipcode_msg" name="zipcode_msg" style="display: none;"></div>
			   			</div>
			   			<div class="col-4">
			   				<button type="button" class="btn btn-outline-dark" onclick="sample6_execDaumPostcode()"> 우편번호 검색 </button>
			   				<button class="btn btn-outline-dark" type="button" id="clear" style="height: 2.4rem;"><i class="fa-solid fa-rotate-left"></i></button>
		   				</div>
		   			</div>
				</div>
				<div class="col-6"></div>
				<div class="col-6 input-control"><input type="text" class="form-control" id="address" name="address" value="<c:out value="${item.address}"/>" placeholder="주소" onfocusout="validationUpdt()" readonly></div>
				<div class="msg" id="address_msg" name="address_msg" style="display: none;"></div>
				<div class="col-6"></div>
				<div class="col-6 input-control"><input type="text" class="form-control" id="addressDetail" name="addressDetail" value="<c:out value="${item.addressDetail}"/>" aria-label="addressDetail" onfocusout="validationUpdt()" placeholder="상세주소"></div>
				<div class="msg" id="addressDetail_msg" name="addressDetail_msg" style="display: none;"></div>
				<div class="col-6"></div>
				<div class="col-6 input-control"><input type="text" class="form-control" id="addr3" name="addr3" value="<c:out value="${item.addr3}"/>" placeholder="참고사항"></div>
				<div class="col-3">
					<label class="form-label">모바일 수신동의<span style="color: red;">*</span></label>
					<div class="row input-control" style="margin-left: 10px;">
						<div class="col-6 form-check" name="mobileNY" >
						  <input class="form-check-input" type="radio" name="mobileNY" value="1" <c:if test="${item.mobileNY eq 1 }"> checked</c:if> id="mobileNY1" onfocusout="validationUpdt()">
						  <label class="form-check-label" for="mobileNY1">
						    동의
						  </label>
						</div>
						<div class="col-6 form-check">
						  <input class="form-check-input" type="radio" name="mobileNY" value="0" <c:if test="${item.mobileNY eq 0 }"> checked</c:if> id="mobileNY2" onfocusout="validationUpdt()">
						  <label class="form-check-label" for="mobileNY2">
						    비동의
						  </label>
						</div>
					</div>
					<div class="msg" id="mobileNY_msg" name="mobileNY_msg" style="display: none;"></div>
				</div>
				<div class="col-3">
					<label class="form-label">이메일 수신동의<span style="color: red;">*</span></label>
					<div class="row input-control" style="margin-left: 10px;">
						<div class="col-6 form-check" name="emailNY">
						  <input class="form-check-input" type="radio" name="emailNY" value="1" <c:if test="${item.emailNY eq 1 }"> checked</c:if> id="emailNY1" onfocusout="validationUpdt()">
						  <label class="form-check-label" for="emailNY1">
						    동의
						  </label>
						</div>
						<div class="col-6 form-check">
						  <input class="form-check-input" type="radio" name="emailNY" value="0" <c:if test="${item.emailNY eq 0 }"> checked</c:if> id="emailNY2" onfocusout="validationUpdt()">
						  <label class="form-check-label" for="emailNY2">
						    비동의
						  </label>
						</div>
					</div>
					<div class="msg" id="emailNY_msg" name="emailNY_msg" style="display: none;"></div>
				</div>
				<div class="col-6">
					<label class="form-label">개인정보 유효기간<span style="color: red;">*</span></label>
					<div class="row input-control" style="margin-left: 10px;">
						<div class="col-3 form-check" name="personalInfo">
						  <input class="form-check-input" type="radio" name="personalInfo" value="18" <c:if test="${item.personalInfo eq 18 }"> checked</c:if> id="personalInfo1" onfocusout="validationUpdt()">
						  <label class="form-check-label" for="personalInfo1">
						    1년
						  </label>
						</div>
						<div class="col-3 form-check">
						  <input class="form-check-input" type="radio" name="personalInfo" value="19" <c:if test="${item.personalInfo eq 19 }"> checked</c:if> id="personalInfo2" onfocusout="validationUpdt()">
						  <label class="form-check-label" for="personalInfo2">
						    3년
						  </label>
						</div>
						<div class="col-3 form-check">
						  <input class="form-check-input" type="radio" name="personalInfo" value="20" <c:if test="${item.personalInfo eq 20 }"> checked</c:if> id="personalInfo3" onfocusout="validationUpdt()">
						  <label class="form-check-label" for="personalInfo3">
						    10년
						  </label>
						</div>
						<div class="col-3 form-check">
						  <input class="form-check-input" type="radio" name="personalInfo" value="21" <c:if test="${item.personalInfo eq 21 }"> checked</c:if> id="personalInfo4" onfocusout="validationUpdt()">
						  <label class="form-check-label" for="personalInfo4">
						    평생회원
						  </label>
						</div>
					</div>
					<div class="msg" id="personalInfo_msg" name="personalInfo_msg" style="display: none;"></div>
				</div>
			</div>
		</div>

		<div class="container" id="aaa">
			<div class="row">
				<button type="button" class="btn" id="btnSave">동의하고 회원가입</button>
			</div>
			<div id="bbb">
				<a class="nav-link" href="#">이용약관, 개인정보 수집 및 이용, 개인정보 제공 내용을 확인하였고 동의합니다.</a>
			</div>
			<hr>
			<div class="row">
				<a type="button" class="btn btn-light" href="#" id="kakao" style="margin-top: 3rem;"> <i class="fa-solid fa-comment-dots"></i> 카카오로 3초만에 시작하기</a>
			</div>
			<div class="row">
				<a type="button" class="btn btn-light" href="#" id="other" style="background-color: #2DB400;"> <i class="fa-solid fa-n"></i> 네이버로 시작하기</a>
			</div>
			<div class="row">
				<a type="button" class="btn btn-light" href="#" id="other" style="background-color: #1877F2;"> <i class="fa-brands fa-facebook-square"></i> 페이스북으로 시작하기</a>
			</div>
			<div class="row">
				<a type="button" class="btn btn-light" href="#" id="other"	style="background-color: #EA4335;"> <i class="fa-solid fa-g"></i> 구글로 시작하기</a>
			</div>
		</div>
		<br> <br> <br>
		</form>
		<form name="formVo" id="formVo" method="post">
			<!-- *Vo.jsp s -->
			<%@include file="memberVo.jsp"%>
			<!-- #-> -->
			<!-- *Vo.jsp e -->
		</form>

<!-- end	 -->
	<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/1d7c148109.js" crossorigin="anonymous"></script>
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript"src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=59b27a41bdecd470671d4f9be366d1b3&libraries=services"></script>
	<script type="text/javascript">
		
		var goUrlInst = "/member/userInst"; /* #-> */

		var seq = $("input:hidden[name=seq]"); /* #-> */

		var form = $("form[name=form]");
		var formVo = $("form[name=formVo]");

		$("#btnSave").on("click", function() {
			form.attr("action", goUrlInst).submit();
		});
	</script>
	
	<script>
		$("#clear").on("click", function() {
			$("#zipcode").val('');
			$("#address").val('');
			$("#addressDetail").val('');
			$("#addr3").val('');
			$("#lat").val('');
			$("#lng").val('');
		});
	</script>
	<script>
		function sample6_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							var addr = '';
							var extraAddr = '';

							if (data.userSelectedType === 'R') {
								addr = data.roadAddress;
							} else {
								addr = data.jibunAddress;
							}

							if (data.userSelectedType === 'R') {
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								if (extraAddr !== '') {
									extraAddr = ' (' + extraAddr + ')';
								}
								document.getElementById("addr3").value = extraAddr;

							} else {
								document.getElementById("addr3").value = '';
							}

							document.getElementById('zipcode').value = data.zonecode;
							document.getElementById("address").value = addr;
							document.getElementById("addressDetail").focus();

						}

					}).open();
		}
	</script>
	<script>
		$("#id").on("focusout", function(){
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/member/checkId"
				/* ,data : $("#formLogin").serialize() */
				,data : { "id" : $("#id").val() }
				,success: function(response) {
					if(response.rt == "success") {
						document.getElementById("id").classList.remove('is-invalid');
						document.getElementById("id").classList.add('is-valid');
	
						document.getElementById("idFeedback").classList.remove('invalid-feedback');
						document.getElementById("idFeedback").classList.add('valid-feedback');
						document.getElementById("idFeedback").innerText = "ID 사용 가능 합니다.";
						
						document.getElementById("idAllowedNY").value = 1;
						
					} else {
						document.getElementById("id").classList.add('is-invalid');
						
						document.getElementById("idFeedback").classList.remove('valid-feedback');
						document.getElementById("idFeedback").classList.add('invalid-feedback');
						document.getElementById("idFeedback").innerText = "ID 사용 불가능 합니다";
						
						document.getElementById("idAllowedNY").value = 0;
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
			
		});
		
	</script>
	<!-- validation -->
	<script type="text/javascript">
		 $('.error').hide();
	     validationUpdt = function() {
	         if (!position_V($('#position'), $('#position').val(), "구분을 선택하세요!", $('#position_msg'))){
	        	 return false;
	         } else if(!name_V($('input[name=name]'), $('input[name=name]').val(), "이름을 입력하세요!", $('#name_msg'))) {
	             return false;
	         } else if(!password_V($('input[name=password]'), $('input[name=password]').val(), "비밀번호를 입력하세요!", $('#password_msg'))) {
	             return false;
	         } else if(!password2_V($('input[name=password]'), $('input[name=password]').val(), "비밀번호를 입력하세요!", $('#password2_msg'))) {
	             return false;
	         } else if(!dob_V($('input[name=dob]'), $('input[name=dob]').val(), "생년월일을 입력하세요!", $('#dob_msg'))) {
	             return false;
	         } else if(!gender_V($('input[name=gender]'), $('input[name=gender]').val(), "성별을 선택하세요!", $('#gender_msg'))) {
	             return false;
	         } else if(!telCompany_V($('#telCompany'), $('#telCompany').val(), "통신사를 선택하세요!", $('#telCompany_msg'))) {
	             return false;
	         } else if(!phone_V($('input[name=phone]'), $('input[name=phone]').val(), "전화번호를 입력하세요!", $('#phone_msg'))) {
	             return false;
	         } else if(!emailInsert_V($('input[name=emailInsert]'), $('input[name=emailInsert]').val(), "이메일ID를 입력하세요!", $('#email_msg'))) {
	             return false;
	         } else if(!zipcode_V($('input[name=zipcode]'), $('input[name=zipcode]').val(), "우편번호를 입력하세요!", $('#zipcode_msg'))) {
	             return false;
	         } else if(!address_V($('input[name=address]'), $('input[name=address]').val(), "주소를 입력하세요!", $('#address_msg'))) {
	         	return false;
	         } else if (!addressDetail_V($('input[name=addressDetail]'), $('input[name=addressDetail]').val(), "상세주소를 입력하세요!", $('#addressDetail_msg'))) {
	         	return false;
	         } else if(!mobileNY_V($('input[name=mobileNY]'), $('input[name=mobileNY]').val(), "모바일 수신동의를 선택하세요!", $('#mobileNY_msg'))) {
	         	return false;
	         }  else if(!emailNY_V($('input[name=emailNY]'), $('input[name=emailNY]').val(), "이메일 수신동의를 선택하세요!", $('#emailNY_msg'))) {
	             return false;
	         } else if(!personalInfo_V($('input[name=personalInfo]'), $('input[name=personalInfo]').val(), "개인정보 유효기간을 선택하세요!", $('#personalInfo_msg'))) {
	             return false;
	         } else {
	             return true;
	         }
	        	alert("회원가입이 완료 되었습니다.");
	     };	
	</script>
</body>
</html>