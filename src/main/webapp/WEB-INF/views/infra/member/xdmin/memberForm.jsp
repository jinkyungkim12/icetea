<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>
<html>
<head>
	<title>member RegForm</title>
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
		.Modification{
			width: 300px;
			height: 40px;
			font-style: normal;
			font-size: 18px;
			margin-top: 3rem;
			background-color: #FF5600;
			color: white;
		}
		.back{
			width: 300px;
			height: 40px;
			font-style: normal;
			font-size: 18px;
			margin-top: 3rem;
			background-color: black;
			color: white;
		}
		.form-check-input:checked {
		    background-color: #FF5600;
		    border-color: #FF5600;
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
	            <a class="nav-link bbb" href="dmin_List.html">회원관리</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link bbb" href="../product/dmin_product.html">클래스관리</a>
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
		
	<div><img src="../../resources/images/back2.jpg"></div>
	
	<!-- 수강생 -->
	
	<div class="container">
		<div class="row">
			<p id="head" class="text-center"><b>회원 등록</b></p>			
		</div>
	</div>
	
	<!-- 회원등록 -->
	<form name="form" method="post" action="/member/memberInst">
	<input type="hidden" name="seq" value="<c:out value="${vo.seq }"/>">
	<div class="container">
		<div class="row gy-3" id="firstrow">
			<div class="col-6">
				<label class="form-label">구분</label>
	   			<select class="form-select" aria-label="Default select example" name="position">
				  <option selected>구분</option>
				  <option value="22" <c:if test="${item.position eq 22 }"> selected</c:if>>수강생</option>
				  <option value="23" <c:if test="${item.position eq 23 }"> selected</c:if>>크리에이터</option>
				  <option value="24" <c:if test="${item.position eq 24 }"> selected</c:if>>매니저</option>
			  	</select>
			</div>
			<div class="col-6">
				<label class="form-label">seq</label>
	   			<input type="text" class="form-control" value="<c:out value="${item.seq}"/>" placeholder="자동생성" id="seq">
			</div>
			<div class="col-6">
				<label class="form-label">이름</label>
	   			<input type="text" class="form-control" value="<c:out value="${item.name}"/>" placeholder="이름" name ="name" id="name">
			</div>
			<div class="col-6">
				<label class="form-label">아이디</label>
	   			<input type="text" class="form-control" value="<c:out value="${item.id}"/>" placeholder="아이디" name ="id" id="id">
			</div>
			<div class="col-6">
				<label class="form-label">비밀번호</label>
	   			<input type="password" class="form-control" value="<c:out value="${item.password}"/>" placeholder="비밀번호" name ="password" id="password">
	   			<small style="color: gray;"><i class="fa-solid fa-circle-info"></i> 영문 대문자/영문 소문자/숫자/특수문자 중 2가지 이상 조합, 8자~32자</small>
			</div>
			<div class="col-6">
				<label class="form-label">비밀번호 확인</label>
	   			<input type="password" class="form-control" value="<c:out value="${item.password}"/>" placeholder="비밀번호 확인" name ="password" id="password">
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
					<div class="col-3 form-check">
					  <input class="form-check-input" type="radio" value="4" <c:if test="${item.gender eq 4 }"> selected</c:if>" name="gender" id="rd1v1">
					  <label class="form-check-label" for="rd1v1">
					    남성
					  </label>
					</div>
					<div class="col-3 form-check">
					  <input class="form-check-input" type="radio" value="5" <c:if test="${item.gender eq 5 }"> selected</c:if>" name="gender" id="rd1v2">
					  <label class="form-check-label" for="rd1v2">
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
					  <input class="form-check-input" type="radio" name="mobileNY" value="1" <c:if test="${item.mobileNY eq 1 }"> selected</c:if>" id="flexRadioDefault1">
					  <label class="form-check-label" for="flexRadioDefault1">
					    동의
					  </label>
					</div>
					<div class="col-6 form-check">
					  <input class="form-check-input" type="radio" name="mobileNY" value="0" <c:if test="${item.mobileNY eq 0 }"> selected</c:if>" id="flexRadioDefault2">
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
					  <input class="form-check-input" type="radio" name="emailNY" value="1" <c:if test="${item.emailNY eq 1 }"> selected</c:if>" id="flexRadioDefault1" >
					  <label class="form-check-label" for="flexRadioDefault1">
					    동의
					  </label>
					</div>
					<div class="col-6 form-check">
					  <input class="form-check-input" type="radio" name="emailNY" value="0" <c:if test="${item.emailNY eq 0 }"> selected</c:if>" id="flexRadioDefault2">
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
					  <input class="form-check-input" type="radio" name="personalInfo" value="18" <c:if test="${item.personalInfo eq 18 }"> selected</c:if>" id="flexRadioDefault1">
					  <label class="form-check-label" for="flexRadioDefault1">
					    1년
					  </label>
					</div>
					<div class="col-3 form-check">
					  <input class="form-check-input" type="radio" name="personalInfo" value="19" <c:if test="${item.personalInfo eq 19 }"> selected</c:if>" id="flexRadioDefault2">
					  <label class="form-check-label" for="flexRadioDefault2">
					    3년
					  </label>
					</div>
					<div class="col-3 form-check">
					  <input class="form-check-input" type="radio" name="personalInfo" value="20" <c:if test="${item.personalInfo eq 20 }"> selected</c:if>" id="flexRadioDefault3">
					  <label class="form-check-label" for="flexRadioDefault3">
					    10년
					  </label>
					</div>
					<div class="col-3 form-check">
					  <input class="form-check-input" type="radio" name="personalInfo" value="21" <c:if test="${item.personalInfo eq 21 }"> selected</c:if>" id="flexRadioDefault4">
					  <label class="form-check-label" for="flexRadioDefault4">
					    평생회원
					  </label>
					</div>
				</div>
			</div>
		</div>
	</div>
		
	<!-- 버튼 -->
	
	<div class="container" style="margin-top: 5rem;">
		<div class="row justify-content-between">	
	   		<div class="col-9">
	     		<a type="button" class="btn btn-dark" href="/member/memberList"><i class="fa-solid fa-list"></i></a>
	    	</div>
	    	<div class="col-3 text-end">
	     		<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal2" style="color: white;"><i class="fa-solid fa-x"></i></button>
				<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa-solid fa-trash-can"></i></button>
				<button type="button" class="btn btn-success" id="btnSave"><i class="fa-solid fa-bookmark"></i></button>
	    	</div>
	    </div>
	    
    <!-- 휴지통 Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel"><b>Class101</b></h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        정말로 삭제하시겠습니까?
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
		        <button type="button" class="btn btn-dark">삭제 </button>
		      </div>
		    </div>
		  </div>
		</div>
		
	 <!-- x버튼 Modal -->
		<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel2" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel2"><b>Class101</b></h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        정말로 삭제하시겠습니까?
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
		        <button type="button" class="btn btn-dark">삭제 </button>
		      </div>
		    </div>
		  </div>
		</div>
	</div>
   </div>
   <br>
   <br>
  </form>
	
		
<!-- end	 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/1d7c148109.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script type="text/javascript">
	/* function test() {
		alert(document.querySelector("input[name='rdrd']:checked").value);
		alert(document.querySelector("input[name='rdrd2']:checked").value);
	} */
	
	var goUrlList = "/member/memberList"; 			/* #-> */
	var goUrlInst = "/member/memberInst"; 			/* #-> */
	var goUrlUpdt = "/member/memberUpdt";			/* #-> */
	var goUrlUele = "/member/memberUele";			/* #-> */
	var goUrlDele = "/member/memberDele";			/* #-> */
	
	var seq = $("input:hidden[name=seq]");			/* #-> */
	
	var form = $("form[name=form]");
	var formVo = $("form[name=formVo]");
	
	
	$("#btnSave").on("click", function(){

		if (seq.val() == "0" || seq.val() == ""){
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
	
	
	</script>
</body>
</html>