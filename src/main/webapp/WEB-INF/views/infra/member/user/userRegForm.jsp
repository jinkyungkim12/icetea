<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>
<html>
<head>
<title>class101</title>
<script src="https://kit.fontawesome.com/15c84217dd.js"
	crossorigin="anonymous"></script>
<!-- Bootstrap CSS -->
<link
	href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Bootstrap extra CSS -->
<link href="/resources/xdmin/css/bootstrap/sidebars.css"
	rel="stylesheet">
<!-- jquery ui CSS -->
<link
	href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css"
	rel="stylesheet">
<!-- user css -->
<link rel="stylesheet" href="/resources/xdmin/css/commonXdmin.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<link rel="shortcut icon" type="image/x-icon"
	href="https://cdn-icons-png.flaticon.com/512/477/477796.png">

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
		<!-- #-> -->
		<!-- *Vo.jsp e -->
		<div class="container">
			<div class="row gy-3" id="firstrow">
				<div class="col-6">
					<label class="form-label">구분</label> <select class="form-select"
						aria-label="Default select example" name="position">
						<option value="22"
							<c:if test="${item.position eq 22 }"> selected</c:if>>수강생</option>
						<option value="23"
							<c:if test="${item.position eq 23 }"> selected</c:if>>크리에이터</option>
						<option value="24"
							<c:if test="${item.position eq 24 }"> selected</c:if>>매니저</option>
					</select>
				</div>
				<div class="col-6"></div>
				<div class="col-6">
					<label class="form-label">이름</label> 
					<input type="text" class="form-control" value="<c:out value="${item.name}"/>" name="name" id="name" placeholder="이름">
				</div>
				<div class="col-6">
					<label class="form-label">아이디</label> 
					<input type="text" class="form-control" value="<c:out value="${item.id}"/>" placeholder="아이디" name="id" id="id">
				</div>
				<div class="col-6">
					<label class="form-label">비밀번호</label> 
					<input type="password" class="form-control" value="<c:out value="${item.password}"/>" placeholder="비밀번호" name="password" id="password"> 
					<small style="color: gray;"><i class="fa-solid fa-circle-info"></i> 영문 대문자/영문 소문자/숫자/특수문자 중 2가지 이상 조합, 8자~32자</small>
				</div>
				<div class="col-6">
					<label class="form-label">비밀번호 확인</label> 
					<input type="password" class="form-control" value="<c:out value="${item.password}"/>" placeholder="비밀번호 확인">
				</div>
				<div class="col-6">
					<label class="form-label">소속회사</label> 
					<input type="text" class="form-control" value="<c:out value="${item.company}"/>" placeholder="소속회사" name="company" id="company">
				</div>
				<div class="col-6">
					<label class="form-label">크리에이터 활동명</label> 
					<input type="text" class="form-control" value="<c:out value="${item.creatorNickname}"/>" placeholder="크리에이터 활동명" name="creatorNickname"	id="creatorNickname">
				</div>
				<div class="col-6">
					<label class="form-label">생년월일</label> 
					<input type="text" class="form-control" value="<c:out value="${item.dob}"/>" placeholder="1990-01-01" name="dob" id="dob">
				</div>
				<div class="col-6">
					<label class="form-label">성별</label>
					<div class="row" style="margin-left: 10px;">
						<div class="col-3 form-check" name="gender">
							<input class="form-check-input" type="radio" value="4" <c:if test="${item.gender eq 4 }"> selected</c:if>" name="gender" id="rd1v1"> 
							<label class="form-check-label" for="rd1v1">남성</label>
						</div>
						<div class="col-3 form-check">
							<input class="form-check-input" type="radio" value="5" <c:if test="${item.gender eq 5 }"> selected</c:if>" name="gender" id="rd1v2"> 
							<label class="form-check-label" for="rd1v2">여성</label>
						</div>
					</div>
				</div>
				<div class="col-6">
					<label class="form-label">연락처(필수)</label>
					<div class="input-group">
						<select class="form-select col-2"
							aria-label="Default select example" name="telCompany"
							id="telCompany">
							<option selected>통신사</option>
							<option value="1" <c:if test="${item.telCompany eq 1 }"> selected</c:if>>SKT</option>
							<option value="2" <c:if test="${item.telCompany eq 2 }"> selected</c:if>>LGT</option>
							<option value="3" <c:if test="${item.telCompany eq 3 }"> selected</c:if>>KT</option>
						</select> 
						<input type="mobile" class="form-control" style="width: 50%" placeholder="01000000000" name="phone"	value="<c:out value="${item.phone}"/>" id="phone">
					</div>
				</div>
				<div class="col-6">
					<label class="form-label">연락처(선택)</label>
					<div class="input-group">
						<select class="form-select col-2" aria-label="Default select example" name="telCompany">
							<option selected>통신사</option>
							<option value="1" <c:if test="${item.telCompany eq 1 }"> selected</c:if>>SKT</option>
							<option value="2" <c:if test="${item.telCompany eq 2 }"> selected</c:if>>LGT</option>
							<option value="3" <c:if test="${item.telCompany eq 3 }"> selected</c:if>>KT</option>
						</select> <input type="mobile" class="form-control" style="width: 50%" placeholder="01000000000" name="phone2" value="<c:out value="${item.phone2}"/>" id="phone2">
					</div>
				</div>
				<div class="col-6">
					<label for="email" class="form-label">이메일</label>
					<div class="input-group">
						<input type="text" class="form-control" placeholder="example" value="<c:out value="${item.emailInsert}"/>" name="emailInsert" id="emailInsert"> 
						<span class="input-group-text">@</span>
						<select class="form-select" aria-label=".form-select example" name="emailDomain">
							<option selected>선택</option>
							<option value="28" <c:if test="${item.emailDomain eq 28 }"> selected</c:if>>naver.com</option>
							<option value="29" <c:if test="${item.emailDomain eq 29 }"> selected</c:if>>gmail.com</option>
							<option value="30" <c:if test="${item.emailDomain eq 30 }"> selected</c:if>>daum.net</option>
						</select>
					</div>
				</div>
				<div class="col-6">
					<div class="row">
						<label class="form-label">주소</label>
					</div>
					<div class="row input-group">
						<div class="col-8">
							<input type="text" class="form-control" id="zipcode">
						</div>
						<div class="col-4">
							<button type="button" class="btn btn-outline-dark" onclick="sample6_execDaumPostcode()">우편번호 검색</button>
							<button class="btn btn-outline-dark" type="button" id="clear" style="height: 2.4rem;">
								<i class="fa-solid fa-rotate-left"></i>
							</button>
						</div>
					</div>
				</div>
				<div class="col-6"></div>
				<div class="col-6">
					<input type="text" class="form-control" id="address" placeholder="주소" disabled>
				</div>
				<div class="col-6"></div>
				<div class="col-6">
					<input type="text" class="form-control" id="addressDetail" placeholder="상세주소">
				</div>
				<div class="col-6"></div>
				<div class="col-6">
					<input type="text" class="form-control" id="addr3" placeholder="참고사항">
				</div>
				<div class="col-6"></div>
				<div class="col-6">
					<div class="row">
						<div class="col-6">
							<input type="text" name="lat" class="form-control" id="lat"	placeholder="위도">
						</div>
						<div class="col-6">
							<input type="text" name="lng" class="form-control" id="lng"	placeholder="경도">
						</div>
					</div>
				</div>
				<div class="col-3">
					<label class="form-label">모바일 수신동의</label>
					<div class="row" style="margin-left: 10px;">
						<div class="col-6 form-check" name="mobileNY">
							<input class="form-check-input" type="radio" name="mobileNY" value="1" <c:if test="${item.mobileNY eq 1 }"> selected</c:if>" id="mobileNY1">
							<label class="form-check-label" for="mobileNY1"> 동의 </label>
						</div>
						<div class="col-6 form-check">
							<input class="form-check-input" type="radio" name="mobileNY" value="0" <c:if test="${item.mobileNY eq 0 }"> selected</c:if>" id="mobileNY2">
							<label class="form-check-label" for="mobileNY2"> 비동의 </label>
						</div>
					</div>
				</div>
				<div class="col-3">
					<label class="form-label">이메일 수신동의</label>
					<div class="row" style="margin-left: 10px;">
						<div class="col-6 form-check" name="emailNY">
							<input class="form-check-input" type="radio" name="emailNY"	value="1" <c:if test="${item.emailNY eq 1 }"> selected</c:if>" id="emailNY1">
							<label class="form-check-label" for="emailNY1"> 동의 </label>
						</div>
						<div class="col-6 form-check">
							<input class="form-check-input" type="radio" name="emailNY"	value="0" <c:if test="${item.emailNY eq 0 }"> selected</c:if>" id="emailNY2">
							<label class="form-check-label" for="emailNY2"> 비동의 </label>
						</div>
					</div>
				</div>
				<div class="col-6">
					<label class="form-label">개인정보 유효기간</label>
					<div class="row" style="margin-left: 10px;">
						<div class="col-3 form-check" name="personalInfo">
							<input class="form-check-input" type="radio" name="personalInfo" value="18"	<c:if test="${item.personalInfo eq 18 }"> selected</c:if>" id="personalInfo1">
							<label class="form-check-label" for="personalInfo1"> 1년 </label>
						</div>
						<div class="col-3 form-check">
							<input class="form-check-input" type="radio" name="personalInfo" value="19"	<c:if test="${item.personalInfo eq 19 }"> selected</c:if>" id="personalInfo2">
							<label class="form-check-label" for="personalInfo2"> 3년 </label>
						</div>
						<div class="col-3 form-check">
							<input class="form-check-input" type="radio" name="personalInfo" value="20"	<c:if test="${item.personalInfo eq 20 }"> selected</c:if>" id="personalInfo3">
							<label class="form-check-label" for="personalInfo3"> 10년
							</label>
						</div>
						<div class="col-3 form-check">
							<input class="form-check-input" type="radio" name="personalInfo" value="21"	<c:if test="${item.personalInfo eq 21 }"> selected</c:if>" id="personalInfo4">
							<label class="form-check-label" for="personalInfo4"> 평생회원
							</label>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container" id="aaa">
			<div class="row">
				<button type="button" class="btn btn-dark" id="btnSave">동의하고 회원가입</button>
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
		<script>
		    var value = document.querySelector('input[name="gender"]:checked').value;
		</script>
		<script type="text/javascript">
			var goUrlList = "/member/userComplete"; /* #-> */
			var goUrlInst = "/member/userInst"; /* #-> */
			var goUrlUpdt = "/member/memberUpdt"; /* #-> */

			var seq = $("input:hidden[name=seq]"); /* #-> */

			var form = $("form[name=form]");
			var formVo = $("form[name=formVo]");

			$("#btnSave").on("click", function() {

				if (seq.val() == "0" || seq.val() == "") {
					// insert
					// if (validationInst() == false) return false;
					form.attr("action", goUrlInst).submit();
				} else {
					// update
					/* keyName.val(atob(keyName.val())); */
					// if (validationUpdt() == false) return false;
					form.attr("action", goUrlUpdt).submit();
				}
			});

			$("#btnList").on("click", function() {
				formVo.attr("action", goUrlList).submit();
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
								document.getElementById("addressDetail")
										.focus();

								var geocoder = new daum.maps.services.Geocoder();

								// 주소로 좌표를 검색
								geocoder.addressSearch(addr, function(result, status) {
									// 정상적으로 검색이 완료됐으면,
									if (status == daum.maps.services.Status.OK) {

										document
												.getElementById("lng").value = result[0].x;
										document
												.getElementById("lat").value = result[0].y;
									}
								});

							}

						}).open();
			}
		</script>
</body>
</html>