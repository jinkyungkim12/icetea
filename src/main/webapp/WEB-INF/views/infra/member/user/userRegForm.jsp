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
		.profile{
			width: 100px;
			height: 100px;
			border-radius: 100%;
			overflow: hidden;
			background-color: gray;
		}
		.profile_user{
			width: 100%;
			height: 100%;
			object-fit: cover;
		}
	</style>
</head>
<body>

	<!-- start -->

	<!-- NAV bar	 -->
	<%@include file="../../../common/xdmin/includeV1/loginNY.jsp"%>


	<!-- ???????????? -->

	<div class="container">
		<div class="row">
			<p id="head" class="text-center">????????????</p>
		</div>
	</div>


	<!-- ???????????? ?????? -->

	<form id="form" name="form" method="post" enctype="multipart/form-data">
	<!-- *Vo.jsp s -->
	<%@include file="memberVo.jsp"%>
	<!-- *Vo.jsp e -->
		<div class="container text-center" style="margin-top: 2rem;">
			<label class="form-label">????????? ??????</label>
			<div class="row justify-content-center">
				<div class="col-3 text-center">
	    			<img id="preview-image" class="profile">
					<input style="display: block; margin:auto;" type="file" id="input-image" name="postImage">
					<small style="color: gray;"><i class="fa-solid fa-circle-info"></i> ????????? ???????????? ????????? ?????????????????? <br>???????????? ??????????????? ????????????.</small>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row gy-3" id="firstrow">
				<div class="col-6 input-control">
					<label class="form-label">??????<span style="color: #dc3545;">*</span></label> 
					<select class="form-select" aria-label="Default select example" name="position" id="position" onfocusout="validationUpdt()">
						<option value=""	<c:if test="${empty item.position }"> selected</c:if>>??????</option>
						<option value="22"	<c:if test="${item.position eq 22 }"> selected</c:if>>?????????</option>
						<option value="23"	<c:if test="${item.position eq 23 }"> selected</c:if>>???????????????</option>
						<option value="24"	<c:if test="${item.position eq 24 }"> selected</c:if>>?????????</option>
					</select>
					<div class="msg" id="position_msg" name="position_msg" style="display: none;"></div>
				</div>
				<div class="col-6"></div>
				<div class="col-6 input-control">
					<label class="form-label">??????<span style="color: #dc3545;">*</span></label> 
					<input type="text" class="form-control" value="<c:out value="${item.name}"/>" name="name" id="name" placeholder="??????" onkeypress="validationUpdt()">
					<div class="msg" id="name_msg" name="name_msg" style="display: none; color: #dc3545;"></div>
				</div>
				<div class="col-6 input-control">
					<label class="form-label">?????????<span style="color: #dc3545;">*</span></label> 
					<input type="hidden" id="idAllowedNY" name="idAllowedNY" value="0">
					<input type="text" class="form-control" value="<c:out value="${item.id}"/>" placeholder="?????????" name="id" id="id">
					<div class="invalid-feedback" id="idFeedback"></div>
				</div>
				<div class="col-6 input-control">
					<label class="form-label">????????????<span style="color:#dc3545;">*</span></label> 
					<input type="password" class="form-control" value="<c:out value="${item.password}"/>" placeholder="????????????" name="password" id="password" onkeypress="validationUpdt()"> 
					<small style="color: gray;"><i class="fa-solid fa-circle-info"></i> ?????? ?????????/?????? ?????????/??????/???????????? ??? 2?????? ?????? ??????, 8???~32???</small>
					<div class="msg" id="password_msg" name="password_msg" style="display: none; color: #dc3545;"></div>
				</div>
				<div class="col-6 input-control">
					<label class="form-label">???????????? ??????<span style="color: #dc3545;">*</span></label> 
					<input type="password" class="form-control" placeholder="???????????? ??????" id="password2" name="password2" onkeypress="validationUpdt()">
					<div class="msg" id="password2_msg" name="password2_msg" style="display: none; color: #dc3545;"></div>
				</div>
				<div class="col-6">
					<label class="form-label">????????????</label> 
					<input type="text" class="form-control" value="<c:out value="${item.company}"/>" placeholder="????????????" name="company" id="company">
				</div>
				<div class="col-6">
					<label class="form-label">??????????????? ?????????</label> 
					<input type="text" class="form-control" value="<c:out value="${item.creatorNickname}"/>" placeholder="??????????????? ?????????" name="creatorNickname"	id="creatorNickname">
				</div>
				<div class="col-6 input-control">
					<label class="form-label">????????????<span style="color: #dc3545;">*</span></label> 
					<input type="text" class="form-control" value="<c:out value="${item.dob}"/>" placeholder="1990-01-01" name="dob" id="dob" onkeypress="validationUpdt()">
					<div class="msg" id="dob_msg" name="dob_msg" style="display: none; color: #dc3545;"></div>
				</div>
				<div class="col-6 input-control">
					<label class="form-label">??????<span style="color: #dc3545;">*</span></label>
					<div class="row" style="margin-left: 10px;">
						<div class="col-3 form-check form-check-inline" name="gender">
						  <input class="form-check-input" type="radio" value="4" <c:if test="${item.gender eq 4 }"> checked</c:if> name="gender" id="gender1">
						  <label class="form-check-label" for="gender1">
						    ??????
						  </label>
						</div>
						<div class="col-3 form-check form-check-inline" name="gender">
						  <input class="form-check-input" type="radio" value="5" <c:if test="${item.gender eq 5 }"> checked</c:if> name="gender" id="gender2">
						  <label class="form-check-label" for="gender2">
						    ??????
						  </label>
						</div>
						<div class="msg" id="gender_msg" name="gender_msg" style="display: none; color: #dc3545;"></div>
					</div>
				</div>
				<div class="col-6 input-control">
					<label class="form-label">?????????(??????)<span style="color: #dc3545;">*</span></label>
					<div class="input-group">
						<select class="form-select col-2" aria-label="Default select example" name="telCompany"	id="telCompany" onfocusout="validationUpdt()">
							<option value=""  <c:if test="${empty item.telCompany }"> selected</c:if>>??????</option>
							<option value="1" <c:if test="${item.telCompany eq 1 }"> selected</c:if>>SKT</option>
							<option value="2" <c:if test="${item.telCompany eq 2 }"> selected</c:if>>LGT</option>
							<option value="3" <c:if test="${item.telCompany eq 3 }"> selected</c:if>>KT</option>
						</select>
						<input type="mobile" class="form-control" style="width: 50%" placeholder="01000000000" id="phone" name="phone"	value="<c:out value="${item.phone}"/>" id="phone" onkeypress="validationUpdt()">
						<input type="hidden" id="phoneCode" value="">
					</div>
					<div class="msg" id="phone_msg" name="phone_msg" style="display: none; color: #dc3545;"></div>
				</div>
				<!-- <div class="col-6 input-control">
					<label class="form-label">????????? ??????</label>
					<div class="row input-group">
						<div class="col-8">	
			   				<input type="text" class="form-control" id="phoneCodeSms" value="" placeholder="???????????? 4????????? ??????????????????.">
			   			</div>
			   			<div class="col-2">
			   				<button type="button" class="btn btn-outline-dark" onclick="sendSms()" style="height: 2.4rem; width:100px;">????????????</button>
			   			</div>
			   			<div class="col-2">
			   				<button type="button" class="btn btn-outline-danger" onclick="checkSms()" style="height: 2.4rem; width:100px;">????????????</button>
		   				</div>
		   			</div>
				</div> -->
				<div class="col-6">
					<label class="form-label">?????????(??????)</label>
					<div class="input-group">
						<select class="form-select col-2" aria-label="Default select example" name="telCompany">
							<option value=""  <c:if test="${empty item.telCompany }"> selected</c:if>>??????</option>
							<option value="1" <c:if test="${item.telCompany eq 1 }"> selected</c:if>>SKT</option>
							<option value="2" <c:if test="${item.telCompany eq 2 }"> selected</c:if>>LGT</option>
							<option value="3" <c:if test="${item.telCompany eq 3 }"> selected</c:if>>KT</option>
						</select>
						<input type="mobile" class="form-control" style="width: 50%" placeholder="01000000000" name="phone2" value="<c:out value="${item.phone2}"/>" id="phone2">
					</div>
				</div>
				<div class="col-6 input-control">
					<label for="email" class="form-label">?????????<span style="color: #dc3545;">*</span></label>
					<div class="input-group">
						<input type="text" class="form-control" placeholder="example" value="<c:out value="${item.emailInsert}"/>" name="emailInsert" id="emailInsert" onkeypress="validationUpdt()">
						<span class="input-group-text">@</span>
						<select class="form-select" aria-label=".form-select example" name="emailDomain" id="emailDomain" onfocusout="validationUpdt()">
							<option value=""  <c:if test="${empty item.emailDomain }"> selected</c:if>>??????</option>
							<option value="28" <c:if test="${item.emailDomain eq 28 }"> selected</c:if>>naver.com</option>
							<option value="29" <c:if test="${item.emailDomain eq 29 }"> selected</c:if>>gmail.com</option>
							<option value="30" <c:if test="${item.emailDomain eq 30 }"> selected</c:if>>daum.net</option>
						</select>
					</div>
					<div class="msg" id="emailInsert_msg" name="emailInsert_msg" style="display: none; color: #dc3545;"></div>
					<div class="msg" id="emailDomain_msg" name="emailDomain_msg" style="display: none; color: #dc3545;"></div>
				</div>
				<div class="col-6 input-control">
					<div class="row"><label class="form-label">??????<span style="color: #dc3545;">*</span></label></div>
					<div class="row input-group">
						<div class="col-6">	
			   				<input type="text" class="form-control" id="zipcode" name="zipcode" value="<c:out value="${item.zipcode}"/>" onfocusout="validationUpdt()">
			   				<div class="msg" id="zipcode_msg" name="zipcode_msg" style="display: none; color: #dc3545;"></div>
			   			</div>
			   			<div class="col-4">
			   				<button type="button" class="btn btn-outline-dark" onclick="sample6_execDaumPostcode()" style="height: 2.4rem;">???????????? ??????</button>
			   				<button class="btn btn-outline-dark" type="button" id="clear" style="height: 2.4rem;"><i class="fa-solid fa-rotate-left"></i></button>
		   				</div>
		   			</div>
				</div>
				<div class="col-6"></div>
				<div class="col-6 input-control"><input type="text" class="form-control" id="address" name="address" value="<c:out value="${item.address}"/>" placeholder="??????" style="margin-top: 1rem;" onfocusout="validationUpdt()" readonly></div>
				<div class="msg" id="address_msg" name="address_msg" style="display: none; color: #dc3545;"></div>
				<div class="col-6"></div>
				<div class="col-6 input-control"><input type="text" class="form-control" id="addressDetail" name="addressDetail" value="<c:out value="${item.addressDetail}"/>" aria-label="addressDetail" onfocusout="validationUpdt()" placeholder="????????????"></div>
				<div class="col-6"></div>
				<div class="col-6 input-control"><input type="text" class="form-control" id="addr3" name="addr3" value="<c:out value="${item.addr3}"/>" placeholder="????????????"></div>
				<!-- <div class="col-6"></div> -->
				<div class="col-3">
					<label class="form-label">????????? ????????????<span style="color: red;">*</span></label>
					<div class="row input-control" style="margin-left: 10px;">
						<div class="col-6 form-check" name="mobileNY" >
						  <input class="form-check-input" type="radio" name="mobileNY" value="1" <c:if test="${item.mobileNY eq 1 }"> checked</c:if> id="mobileNY1" onfocusout="validationUpdt()">
						  <label class="form-check-label" for="mobileNY1">
						    ??????
						  </label>
						</div>
						<div class="col-6 form-check">
						  <input class="form-check-input" type="radio" name="mobileNY" value="0" <c:if test="${item.mobileNY eq 0 }"> checked</c:if> id="mobileNY2" onfocusout="validationUpdt()">
						  <label class="form-check-label" for="mobileNY2">
						    ?????????
						  </label>
						</div>
					</div>
					<div class="msg" id="mobileNY_msg" name="mobileNY_msg" style="display: none; color: #dc3545;"></div>
				</div>
				<div class="col-3">
					<label class="form-label">????????? ????????????<span style="color: #dc3545;">*</span></label>
					<div class="row input-control" style="margin-left: 10px;">
						<div class="col-6 form-check" name="emailNY">
						  <input class="form-check-input" type="radio" name="emailNY" value="1" <c:if test="${item.emailNY eq 1 }"> checked</c:if> id="emailNY1" onfocusout="validationUpdt()">
						  <label class="form-check-label" for="emailNY1">
						    ??????
						  </label>
						</div>
						<div class="col-6 form-check">
						  <input class="form-check-input" type="radio" name="emailNY" value="0" <c:if test="${item.emailNY eq 0 }"> checked</c:if> id="emailNY2" onfocusout="validationUpdt()">
						  <label class="form-check-label" for="emailNY2">
						    ?????????
						  </label>
						</div>
					</div>
					<div class="msg" id="emailNY_msg" name="emailNY_msg" style="display: none; color: #dc3545;"></div>
				</div>
				<div class="col-6">
					<label class="form-label">???????????? ????????????<span style="color: #dc3545;">*</span></label>
					<div class="row input-control" style="margin-left: 10px;">
						<div class="col-3 form-check" name="personalInfo">
						  <input class="form-check-input" type="radio" name="personalInfo" value="18" <c:if test="${item.personalInfo eq 18 }"> checked</c:if> id="personalInfo1" onfocusout="validationUpdt()">
						  <label class="form-check-label" for="personalInfo1">
						    1???
						  </label>
						</div>
						<div class="col-3 form-check">
						  <input class="form-check-input" type="radio" name="personalInfo" value="19" <c:if test="${item.personalInfo eq 19 }"> checked</c:if> id="personalInfo2" onfocusout="validationUpdt()">
						  <label class="form-check-label" for="personalInfo2">
						    3???
						  </label>
						</div>
						<div class="col-3 form-check">
						  <input class="form-check-input" type="radio" name="personalInfo" value="20" <c:if test="${item.personalInfo eq 20 }"> checked</c:if> id="personalInfo3" onfocusout="validationUpdt()">
						  <label class="form-check-label" for="personalInfo3">
						    10???
						  </label>
						</div>
						<div class="col-3 form-check">
						  <input class="form-check-input" type="radio" name="personalInfo" value="21" <c:if test="${item.personalInfo eq 21 }"> checked</c:if> id="personalInfo4" onfocusout="validationUpdt()">
						  <label class="form-check-label" for="personalInfo4">
						    ????????????
						  </label>
						</div>
					</div>
					<div class="msg" id="personalInfo_msg" name="personalInfo_msg" style="display: none; color: #dc3545;"></div>
				</div>
			</div>
		</div>

		<div class="container" id="aaa">
			<div class="row">
				<button type="button" class="btn" id="btnSave">???????????? ????????????</button>
			</div>
			<div id="bbb">
				<div class="form-check">
				  <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
				  <label class="form-check-label" for="flexCheckChecked">
				    ????????????, ???????????? ?????? ??? ??????, ???????????? ?????? ????????? ??????????????? ???????????????.
				  </label>
				</div>
				<!-- <a class="nav-link" href="#">????????????, ???????????? ?????? ??? ??????, ???????????? ?????? ????????? ??????????????? ???????????????.</a> -->
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
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script type="text/javascript">
		
	
	
		var goUrlInst = "/member/userInst"; /* #-> */

		var seq = $("input:hidden[name=seq]"); /* #-> */

		var form = $("form[name=form]");
		var formVo = $("form[name=formVo]");

		$("#btnSave").on("click", function() {
			if(validationUpdt())
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
	<script type="text/javascript">
	
	sendSms = function() {
		
		$.ajax({
			url: '/member/checkSms'
			,type: 'POST'
			,dataType: 'json'
			,data: {
				phone : $("#phone").val()
			},
			success:function(result){
				$("#phoneCode").val(result.code);
			},
			error:function(){
				alert("ajax  error..!");
			}
		});
		
	};
	
	checkSms = function() {
		
		  if($("#phoneCodeSms").val() == $("#phoneCode").val()){
			  swal("CLASS 101", "?????????????????????.", "success");
		  }else{
			  swal("CLASS 101", "??????????????? ????????????.", "error");
		  }
		  
	  };
	 
	
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
										&& /[???|???|???]$/g.test(data.bname)) {
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
						document.getElementById("idFeedback").innerText = "ID ?????? ?????? ?????????.";
						
						document.getElementById("idAllowedNY").value = 1;
						
					} else {
						document.getElementById("id").classList.add('is-invalid');
						
						document.getElementById("idFeedback").classList.remove('valid-feedback');
						document.getElementById("idFeedback").classList.add('invalid-feedback');
						document.getElementById("idFeedback").innerText = "ID ?????? ????????? ?????????";
						
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
	         if (!position_V($('#position'), $('#position').val(), "????????? ???????????????!", $('#position_msg'))){
	        	 return false;
	         } else if(!name_V($('input[name=name]'), $('input[name=name]').val(), "????????? ???????????????!", $('#name_msg'))) {
	             return false;
	         } else if(!password_V($('input[name=password]'), $('input[name=password]').val(), "??????????????? ???????????????!", $('#password_msg'))) {
	             return false;
	         } else if(!password2_V($('input[name=password2]'), $('input[name=password2]').val(), "??????????????? ???????????? ????????????.", $('#password2_msg'))) {
	             return false;
	         } else if(!dob_V($('input[name=dob]'), $('input[name=dob]').val(), "??????????????? ???????????????!", $('#dob_msg'))) {
	             return false;
	         } else if(!gender_V($('input[name=gender]'), $('input[name=gender]').val(), "????????? ???????????????!", $('#gender_msg'))) {
	             return false;
	         } else if(!telCompany_V($('#telCompany'), $('#telCompany').val(), "???????????? ???????????????!", $('#telCompany_msg'))) {
	             return false;
	         } else if(!phone_V($('input[name=phone]'), $('input[name=phone]').val(), "??????????????? ???????????????!", $('#phone_msg'))) {
	             return false;
	         } else if(!emailInsert_V($('input[name=emailInsert]'), $('input[name=emailInsert]').val(), "?????????ID??? ???????????????!", $('#emailInsert_msg'))) {
	             return false;
	         } else if(!emailDomain_V($('#emailDomain'), $('#emailDomain').val(), "????????? ???????????? ???????????????!", $('#emailDomain_msg'))) {
	             return false;
	         } else if(!zipcode_V($('input[name=zipcode]'), $('input[name=zipcode]').val(), "??????????????? ???????????????!", $('#zipcode_msg'))) {
	             return false;
	         } else if(!address_V($('input[name=address]'), $('input[name=address]').val(), "????????? ???????????????!", $('#address_msg'))) {
	         	return false;
	         } else if (!addressDetail_V($('input[name=addressDetail]'), $('input[name=addressDetail]').val(), "??????????????? ???????????????!", $('#addressDetail_msg'))) {
	         	return false;
	         } else if(!mobileNY_V($('input[name=mobileNY]'), $('input[name=mobileNY]').val(), "????????? ??????????????? ???????????????!", $('#mobileNY_msg'))) {
	         	return false;
	         }  else if(!emailNY_V($('input[name=emailNY]'), $('input[name=emailNY]').val(), "????????? ??????????????? ???????????????!", $('#emailNY_msg'))) {
	             return false;
	         } else if(!personalInfo_V($('input[name=personalInfo]'), $('input[name=personalInfo]').val(), "???????????? ??????????????? ???????????????!", $('#personalInfo_msg'))) {
	             return false;
	         } else {
	        	 //alert("??????????????? ?????? ???????????????.");
	             return true;
	         }
	        	
	     };	
	</script>
	<script type="text/javascript">
		function readImage(input) {
		    // ?????? ????????? ????????? ?????? ??????
		    if(input.files && input.files[0]) {
		        // ????????? ???????????? ?????? (??????)
		        // FileReader ???????????? ??????
		        const reader = new FileReader()
		        // ???????????? ????????? ??? ??????
		        reader.onload = e => {
		            const previewImage = document.getElementById("preview-image")
		            previewImage.src = e.target.result
		        }
		        // reader??? ????????? ????????? ??????
		        reader.readAsDataURL(input.files[0])
		    }
		}
		// input file??? change ????????? ??????
		const inputImage = document.getElementById("input-image")
		inputImage.addEventListener("change", e => {
		    readImage(e.target)
		})
	</script>
</body>
</html>