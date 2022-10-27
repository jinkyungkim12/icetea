<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>
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
			width: 300px;
			height: 40px;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 18px;
			margin-top: 3rem;
			background-color: #FF5600;
			color: white;
		}
		#Cancel{
			width: 300px;
			height: 40px;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 18px;
			margin-top: 3rem;
			background-color: black;
			color: white;
		}
		#containerFont{
			font-family: 'Happiness-Sans-Regular';
		}
		#containerFont2{
			font-family: 'Happiness-Sans-Regular';
		}
		#leveltap{
			background-color: #00B031;
			color: white;
		}
		.hrStyle{
			background: #ffffff;
			height: 2px;
			margin-top: 3rem;
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
		.nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active {
		    color: black;
		    background-color: var(--bs-nav-tabs-link-active-bg);
		    border-color: var(--bs-nav-tabs-link-active-border-color);
		}
		
		.nav-link {
		    display: block;
		    padding: var(--bs-nav-link-padding-y) var(--bs-nav-link-padding-x);
		    font-size: var(--bs-nav-link-font-size);
		    font-weight: var(--bs-nav-link-font-weight);
		    color: gray;
		    text-decoration: none;
		    transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out;
		}
		:root{
			 --bs-link-hover-color: #fd7e14;
		}
		.dropdown-menu{
			--bs-dropdown-link-active-bg: #FCC4A3;
		}
		.form-label{
			font-weight: bold;
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
	<%@include file="../../../common/xdmin/includeV1/loginNY.jsp"%>
	
	<form  id="form" name="form" method="post" enctype="multipart/form-data">
	<!-- *Vo.jsp s -->
	<%@include file="memberVo.jsp"%>		<!-- #-> -->
	<!-- *Vo.jsp e -->	
	<!-- 상단 -->
	
	<div class="container" id="containerFont">
		<div style="margin-top: 3rem;"><h3><b><a type="button" href="/member/mypage" class="nav-link"><c:out value="${sessName}"/></a></b></h3></div>
		<div><a type="button" href="/member/mypage" class="nav-link"><h6><c:out value="${sessEmail}"/></h6></a></div>
	</div>
	<!-- 중간 -->
	<div class="container" id="containerFont2">
		<div class="row">
			<!-- 왼쪽 -->
			<div class="col-4">
				<div style="margin-top: 3rem;"><h5><b>내등급</b></h5></div>
				<div class="shadow p-3 mb-5 rounded" style="margin-top: 1rem;" id="leveltap">
					<div class="row justify-content-between">
						<div class="col-5"><h5><b><a type=button class="nav-link text-white" href="/member/mypageGrade">Lv. Amateur</a></b></h5></div>
						<div class="col-4 text-end"><span><a type=button class="nav-link text-white" href="/member/mypageGrade">혜택보기</a></soan></div>
					</div>
					<hr class="hrStyle">
					<div><b>10,000P</b>&emsp;<span>추가 적립시 다음 달 &nbsp; Lv. Professtional</span></div>
				</div>
				<div style="margin-top: 3rem;"></div>
				<div><h5><b>내정보</b></h5></div>
				<div style="margin-top: 2rem;"><button class="btn btn-light" type="button" id="BtnOrder2">주문 내역</button></div>
				<div style="margin-top: 1rem;"><button class="btn btn-light" type="button" id="BtnReview">후기</button></div>
				<div style="margin-top: 3rem;"></div>
			</div>
	
	<!-- 오른쪽 -->
	
			<div class="col-8">
	
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
			    			<img id="preview-image" src="
							<c:choose>
								<c:when test = "${itemImage ne null}">${sessUserImage}</c:when>
								<c:otherwise>../resources/images/profileimg.png</c:otherwise>
							</c:choose>
							" class="profile">
						</div>
					</div>
				</div>
				
				
				<!-- 항목 -->
				
				
				<div class="container">
					<div class="row gy-3" id="firstrow">
						<div class="col-6">
							<label class="form-label">구분</label>
				   			<select class="form-select" aria-label="Default select example" name="position" disabled>
							  <option selected>구분</option>
							  <option value="22" <c:if test="${item.position eq 22 }"> selected</c:if>>수강생</option>
							  <option value="23" <c:if test="${item.position eq 23 }"> selected</c:if>>크리에이터</option>
							  <option value="24" <c:if test="${item.position eq 24 }"> selected</c:if>>매니저</option>
						  	</select>
						</div>
						<div class="col-6"></div>
						<div class="col-6">
							<label class="form-label">이름</label>
				   			<input type="text" class="form-control" value="<c:out value="${item.name}"/>" placeholder="이름" name ="name" id="name" readonly>
						</div>
						<div class="col-6">
							<label class="form-label">아이디</label>
							<input type="hidden" id="idAllowedNY" name="idAllowedNY" value="0">
				   			<input type="text" class="form-control"	value="<c:out value="${item.id}"/>" placeholder="아이디" name ="id" id="id" readonly>
				   			<div class="invalid-feedback" id="idFeedback"></div>
						</div>
						<div class="col-6">
							<label class="form-label">소속회사</label>
				   			<input type="text" class="form-control" value="<c:out value="${item.company}"/>" placeholder="소속회사" name="company" id="company">
				   			<small style="color: gray;"><i class="fa-solid fa-circle-info"></i> 크리에이터만 작성해주시길 바랍니다.</small>
						</div>
						<div class="col-6">
							<label class="form-label">크리에이터 활동명</label>
				   			<input type="text" class="form-control" value="<c:out value="${item.creatorNickname}"/>" placeholder="크리에이터 활동명" name="creatorNickname" id="creatorNickname">
				   			<small style="color: gray;"><i class="fa-solid fa-circle-info"></i> 크리에이터만 작성해주시길 바랍니다.</small>
						</div>
						<div class="col-6">
							<label class="form-label">생년월일</label>
				   			<input type="text" class="form-control" value="<c:out value="${item.dob}"/>" placeholder ="1990-01-01" name="dob" id="dob">
						</div>
						<div class="col-6">
							<label class="form-label">성별</label>
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
							</div>
						</div>
						<div class="col-6">
							<label class="form-label">연락처(필수)</label>
							<div class="input-group">
							  <select class="form-select col-2" aria-label="Default select example" name="telCompany" id="telCompany">
								  <option selected>통신사</option>
								  <option value="1" <c:if test="${item.telCompany eq 1 }"> selected</c:if>>SKT</option>
								  <option value="2" <c:if test="${item.telCompany eq 2 }"> selected</c:if>>LGT</option>
								  <option value="3" <c:if test="${item.telCompany eq 3 }"> selected</c:if>>KT</option>
							  </select>
							  <input type="mobile" class="form-control" style="width: 50%" placeholder="01000000000" name="phone" value="<c:out value="${item.phone}"/>" id="phone">
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
							  </select>
							  <input type="mobile" class="form-control" style="width: 50%" placeholder="01000000000" name="phone2" value="<c:out value="${item.phone2}"/>" id="phone2">
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
							<div class="row"><label class="form-label">주소</label></div>
							<div class="row input-group">
								<div class="col-8">	
					   				<input type="text" class="form-control" id="zipcode" name="zipcode" value="<c:out value="${itemAdd.zipcode}"/>" placeholder="우편번호">
					   			</div>
					   			<div class="col-4">
					   				<button type="button" class="btn btn-outline-dark" onclick="sample6_execDaumPostcode()" style="height: 2.4rem;"><i class="fa-solid fa-magnifying-glass"></i></button>
					   				<button class="btn btn-outline-dark" type="button" id="clear" style="height: 2.4rem;"><i class="fa-solid fa-rotate-left"></i></button>
				   				</div>
				   			</div>
						</div>
						<div class="col-6"></div>
						<div class="col-6"><input type="text" class="form-control" id="address" name="address" value="<c:out value="${itemAdd.address}"/>" placeholder="주소" readonly></div>
						<div class="col-6"></div>
						<div class="col-6"><input type="text" class="form-control" id="addressDetail" name="addressDetail" value="<c:out value="${itemAdd.addressDetail}"/>" aria-label="addressDetail" placeholder="상세주소"></div>
						<div class="col-6"></div>
						<div class="col-6"><input type="text" class="form-control" id="addr3" name="addr3" value="<c:out value="${itemAdd.addr3}"/>" placeholder="참고사항"></div>
						<div class="col-3">
							<label class="form-label">모바일 수신동의</label>
							<div class="row" style="margin-left: 10px;">
								<div class="col-6 form-check" name="mobileNY" >
								  <input class="form-check-input" type="radio" name="mobileNY" value="1" <c:if test="${item.mobileNY eq 1 }"> checked</c:if> id="flexRadioDefault1">
								  <label class="form-check-label" for="flexRadioDefault1">
								    동의
								  </label>
								</div>
								<div class="col-6 form-check">
								  <input class="form-check-input" type="radio" name="mobileNY" value="0" <c:if test="${item.mobileNY eq 0 }"> checked</c:if> id="flexRadioDefault2">
								  <label class="form-check-label" for="flexRadioDefault2">
								    비동의
								  </label>
								</div>
							</div>
						</div>
						<div class="col-3">
							<label class="form-label">이메일 수신동의</label>
							<div class="row" style="margin-left: 10px;">
								<div class="col-6 form-check" name="emailNY">
								  <input class="form-check-input" type="radio" name="emailNY" value="1" <c:if test="${item.emailNY eq 1 }"> checked</c:if> id="flexRadioDefault1" >
								  <label class="form-check-label" for="flexRadioDefault1">
								    동의
								  </label>
								</div>
								<div class="col-6 form-check">
								  <input class="form-check-input" type="radio" name="emailNY" value="0" <c:if test="${item.emailNY eq 0 }"> checked</c:if> id="flexRadioDefault2">
								  <label class="form-check-label" for="flexRadioDefault2">
								    비동의
								  </label>
								</div>
							</div>
						</div>
						<div class="col-6">
							<label class="form-label">개인정보 유효기간</label>
							<div class="row" style="margin-left: 10px;">
								<div class="col-3 form-check" name="personalInfo">
								  <input class="form-check-input" type="radio" name="personalInfo" value="18" <c:if test="${item.personalInfo eq 18 }"> checked</c:if> id="flexRadioDefault1">
								  <label class="form-check-label" for="flexRadioDefault1">
								    1년
								  </label>
								</div>
								<div class="col-3 form-check">
								  <input class="form-check-input" type="radio" name="personalInfo" value="19" <c:if test="${item.personalInfo eq 19 }"> checked</c:if> id="flexRadioDefault2">
								  <label class="form-check-label" for="flexRadioDefault2">
								    3년
								  </label>
								</div>
								<div class="col-3 form-check">
								  <input class="form-check-input" type="radio" name="personalInfo" value="20" <c:if test="${item.personalInfo eq 20 }"> checked</c:if> id="flexRadioDefault3">
								  <label class="form-check-label" for="flexRadioDefault3">
								    10년
								  </label>
								</div>
								<div class="col-3 form-check">
								  <input class="form-check-input" type="radio" name="personalInfo" value="21" <c:if test="${item.personalInfo eq 21 }"> checked</c:if> id="flexRadioDefault4">
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
						<button type="button" class="btn" id="Modification">수정하기</button>&emsp;<button type="button" class="btn btn-dark" id="Cancel">최소하기</button>
					</div>
				</div>
				<br>
				<br>
			</div>
		</div>
	</div>
	</form>
	
	<form name="formVo" id="formVo" method="post">
	<!-- *Vo.jsp s -->
	<%@include file="memberVo.jsp"%>		<!-- #-> -->
	<!-- *Vo.jsp e -->
	</form>	
	
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
	<br>
	<br>
		
		
<!-- end	 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/1d7c148109.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=59b27a41bdecd470671d4f9be366d1b3&libraries=services"></script>

<script type="text/javascript">
	
		var goUrlList = "/member/mypage"; 			/* #-> */
		var goUrlUpdt = "/member/mypageUpdt";			/* #-> */
		
		var seq = $("input:hidden[name=seq]");			/* #-> */
		
		var form = $("form[name=form]");
		var formVo = $("form[name=formVo]");
		
		$("#Modification").on("click", function(){
			form.attr("action", goUrlUpdt).submit();
		});
		
		$("#Cancel").on("click", function(){
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
	        new daum.Postcode({
	            oncomplete: function(data) {
	                var addr = '';
	                var extraAddr = '';

	                if (data.userSelectedType === 'R') {
	                    addr = data.roadAddress;
	                } else {
	                    addr = data.jibunAddress;
	                }

	                if(data.userSelectedType === 'R'){
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    if(extraAddr !== ''){
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