
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>
<html>
<head>
	<title>member Form</title>
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
	    <a class="navbar-brand" href="/codeGroup/codeGroupList"><b>CLASS 101</b></a>
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
	            <a class="nav-link bbb" href="/member/memberList">????????????</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link bbb" href="/product/productList">???????????????</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link bbb" href="/review/reviewList">????????????</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link bbb" href="/order/orderList">????????????</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link bbb" href="/codeGroup/codeGroupList">??????????????????</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link bbb" href="/code/codeList">????????????</a>
	          </li>
	        </ul>
	        <div class="text-center">
		         <ul class="navbar-nav" style="margin-top: 3rem;">
			      <li class="nav-item justify-content-end">
			         <button type="button" class="nav-link btn btn-warining" id="logoutButton" style="background-color: #F87320; color: white; width: 100%;">logout</button>
			      </li>
			     </ul>
		     </div>
	      </div>
	    </div>
	  </div>
	</nav>	
		
	<div><img src="../../resources/images/back2.jpg"></div>
	
	<!-- ????????? -->
	
	<div class="container">
		<div class="row">
			<p id="head" class="text-center"><b>?????? ??????</b></p>			
		</div>
	</div>
	
	<!-- ???????????? -->
	<!-- <form name="form" method="post" action="/member/memberInst"> -->
	<form  id="form" name="form" method="post" >
	<input type="hidden" name="formNY" value="1">
	<!-- *Vo.jsp s -->
	<%@include file="memberVo.jsp"%>		<!-- #-> -->
	<!-- *Vo.jsp e -->
	<div class="container">
		<div class="row gy-3" id="firstrow">
			<div class="col-6">
				<label class="form-label">??????</label>
	   			<select class="form-select" aria-label="Default select example" name="position">
				  <option selected>??????</option>
				  <option value="22" <c:if test="${item.position eq 22 }"> selected</c:if>>?????????</option>
				  <option value="23" <c:if test="${item.position eq 23 }"> selected</c:if>>???????????????</option>
				  <option value="24" <c:if test="${item.position eq 24 }"> selected</c:if>>?????????</option>
			  	</select>
			</div>
			<div class="col-6">
				<label class="form-label">seq</label>
	   			<input type="text" class="form-control" value="<c:out value="${item.seq}"/>" placeholder="????????????" id="seq">
			</div>
			<div class="col-6">
				<label class="form-label">??????</label>
	   			<input type="text" class="form-control" value="<c:out value="${item.name}"/>" placeholder="??????" name ="name" id="name">
			</div>
			<div class="col-6">
				<label class="form-label">?????????</label>
				<input type="hidden" id="idAllowedNY" name="idAllowedNY" value="0">
	   			<input type="text" class="form-control"	value="<c:out value="${item.id}"/>" placeholder="?????????" name ="id" id="id">
	   			<div class="invalid-feedback" id="idFeedback"></div>
			</div>
			<div class="col-6">
				<label class="form-label">????????????</label>
	   			<input type="text" class="form-control" value="<c:out value="${item.company}"/>" placeholder="????????????" name="company" id="company">
	   			<small style="color: gray;"><i class="fa-solid fa-circle-info"></i> ?????????????????? ?????????????????? ????????????.</small>
			</div>
			<div class="col-6">
				<label class="form-label">??????????????? ?????????</label>
	   			<input type="text" class="form-control" value="<c:out value="${item.creatorNickname}"/>" placeholder="??????????????? ?????????" name="creatorNickname" id="creatorNickname">
	   			<small style="color: gray;"><i class="fa-solid fa-circle-info"></i> ?????????????????? ?????????????????? ????????????.</small>
			</div>
			<div class="col-6">
				<label class="form-label">????????????</label>
	   			<input type="text" class="form-control" value="<c:out value="${item.dob}"/>" placeholder ="1990-01-01" name="dob" id="dob">
			</div>
			<div class="col-6">
				<label class="form-label">??????</label>
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
				</div>
			</div>
			<div class="col-6">
				<label class="form-label">?????????(??????)</label>
				<div class="input-group">
				  <select class="form-select col-2" aria-label="Default select example" name="telCompany" id="telCompany">
					  <option selected>?????????</option>
					  <option value="1" <c:if test="${item.telCompany eq 1 }"> selected</c:if>>SKT</option>
					  <option value="2" <c:if test="${item.telCompany eq 2 }"> selected</c:if>>LGT</option>
					  <option value="3" <c:if test="${item.telCompany eq 3 }"> selected</c:if>>KT</option>
				  </select>
				  <input type="mobile" class="form-control" style="width: 50%" placeholder="01000000000" name="phone" value="<c:out value="${item.phone}"/>" id="phone">
				</div>
			</div>
			<div class="col-6">
				<label class="form-label">?????????(??????)</label>
				<div class="input-group">
				  <select class="form-select col-2" aria-label="Default select example" name="telCompany">
					  <option selected>?????????</option>
					  <option value="1" <c:if test="${item.telCompany eq 1 }"> selected</c:if>>SKT</option>
					  <option value="2" <c:if test="${item.telCompany eq 2 }"> selected</c:if>>LGT</option>
					  <option value="3" <c:if test="${item.telCompany eq 3 }"> selected</c:if>>KT</option>
				  </select>
				  <input type="mobile" class="form-control" style="width: 50%" placeholder="01000000000" name="phone2" value="<c:out value="${item.phone2}"/>" id="phone2">
				</div>
			</div>
			<div class="col-6">
				<label for="email" class="form-label">?????????</label>
				<div class="input-group">
			   		<input type="text" class="form-control" placeholder="example" value="<c:out value="${item.emailInsert}"/>" name="emailInsert" id="emailInsert">
			      	<span class="input-group-text">@</span>
			      	<select class="form-select" aria-label=".form-select example" name="emailDomain">
						<option selected>??????</option>
						<option value="28" <c:if test="${item.emailDomain eq 28 }"> selected</c:if>>naver.com</option>
						<option value="29" <c:if test="${item.emailDomain eq 29 }"> selected</c:if>>gmail.com</option>
						<option value="30" <c:if test="${item.emailDomain eq 30 }"> selected</c:if>>daum.net</option>
					</select> 
		   		</div>
			</div>
			<div class="col-6">
				<div class="row"><label class="form-label">??????</label></div>
				<div class="row input-group">
					<div class="col-8">	
		   				<input type="text" class="form-control" id="zipcode" name="zipcode" value="<c:out value="${item1.zipcode}"/>">
		   			</div>
		   			<div class="col-4">
		   				<button type="button" class="btn btn-outline-dark" onclick="sample6_execDaumPostcode()"> ???????????? ?????? </button>
		   				<button class="btn btn-outline-dark" type="button" id="clear" style="height: 2.4rem;"><i class="fa-solid fa-rotate-left"></i></button>
	   				</div>
	   			</div>
			</div>
			<div class="col-6"></div>
			<div class="col-6"><input type="text" class="form-control" id="address" name="address" value="<c:out value="${item1.address}"/>" placeholder="??????" readonly></div>
			<div class="col-6"></div>
			<div class="col-6"><input type="text" class="form-control" id="addressDetail" name="addressDetail" value="<c:out value="${item1.addressDetail}"/>" aria-label="addressDetail" placeholder="????????????"></div>
			<div class="col-6"></div>
			<div class="col-6"><input type="text" class="form-control" id="addr3" name="addr3" value="<c:out value="${item1.addr3}"/>" placeholder="????????????"></div>
			<div class="col-6"></div>
			<div class="col-6">
				<div class="row">
					<div class="col-6"><input type="text" name="lat" class="form-control" id="lat" aria-label="" placeholder="??????"></div>
					<div class="col-6"><input type="text" name="lng" class="form-control" id="lng" aria-label="" placeholder="??????"></div>
				</div>
			</div>
			<div class="col-3">
				<label class="form-label">????????? ????????????</label>
				<div class="row" style="margin-left: 10px;">
					<div class="col-6 form-check" name="mobileNY" >
					  <input class="form-check-input" type="radio" name="mobileNY" value="1" <c:if test="${item.mobileNY eq 1 }"> checked</c:if> id="flexRadioDefault1">
					  <label class="form-check-label" for="flexRadioDefault1">
					    ??????
					  </label>
					</div>
					<div class="col-6 form-check">
					  <input class="form-check-input" type="radio" name="mobileNY" value="0" <c:if test="${item.mobileNY eq 0 }"> checked</c:if> id="flexRadioDefault2">
					  <label class="form-check-label" for="flexRadioDefault2">
					    ?????????
					  </label>
					</div>
				</div>
			</div>
			<div class="col-3">
				<label class="form-label">????????? ????????????</label>
				<div class="row" style="margin-left: 10px;">
					<div class="col-6 form-check" name="emailNY">
					  <input class="form-check-input" type="radio" name="emailNY" value="1" <c:if test="${item.emailNY eq 1 }"> checked</c:if> id="flexRadioDefault1" >
					  <label class="form-check-label" for="flexRadioDefault1">
					    ??????
					  </label>
					</div>
					<div class="col-6 form-check">
					  <input class="form-check-input" type="radio" name="emailNY" value="0" <c:if test="${item.emailNY eq 0 }"> checked</c:if> id="flexRadioDefault2">
					  <label class="form-check-label" for="flexRadioDefault2">
					    ?????????
					  </label>
					</div>
				</div>
			</div>
			<div class="col-6">
				<label class="form-label">???????????? ????????????</label>
				<div class="row" style="margin-left: 10px;">
					<div class="col-3 form-check" name="personalInfo">
					  <input class="form-check-input" type="radio" name="personalInfo" value="18" <c:if test="${item.personalInfo eq 18 }"> checked</c:if> id="flexRadioDefault1">
					  <label class="form-check-label" for="flexRadioDefault1">
					    1???
					  </label>
					</div>
					<div class="col-3 form-check">
					  <input class="form-check-input" type="radio" name="personalInfo" value="19" <c:if test="${item.personalInfo eq 19 }"> checked</c:if> id="flexRadioDefault2">
					  <label class="form-check-label" for="flexRadioDefault2">
					    3???
					  </label>
					</div>
					<div class="col-3 form-check">
					  <input class="form-check-input" type="radio" name="personalInfo" value="20" <c:if test="${item.personalInfo eq 20 }"> checked</c:if> id="flexRadioDefault3">
					  <label class="form-check-label" for="flexRadioDefault3">
					    10???
					  </label>
					</div>
					<div class="col-3 form-check">
					  <input class="form-check-input" type="radio" name="personalInfo" value="21" <c:if test="${item.personalInfo eq 21 }"> checked</c:if> id="flexRadioDefault4">
					  <label class="form-check-label" for="flexRadioDefault4">
					    ????????????
					  </label>
					</div>
				</div>
			</div>
		</div>
	</div>
		
	<!-- ?????? -->
	
	<div class="container" style="margin-top: 5rem;">
		<div class="row justify-content-between">	
	   		<div class="col-9">
	     		<a type="button" class="btn btn-dark" id="btnList"><i class="fa-solid fa-list"></i></a>
	    	</div>
	    	<div class="col-3 text-end">
	     		<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal2" style="color: white;"><i class="fa-solid fa-x"></i></button>
				<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa-solid fa-trash-can"></i></button>
				<button type="button" class="btn btn-success" id="btnSave"><i class="fa-solid fa-bookmark"></i></button>
	    	</div>
	    </div>
	    
    <!-- ????????? Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel"><b>Class101</b></h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        ????????? ?????????????????????????
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">??????</button>
		        <button type="button" class="btn btn-dark" id="btnDelete">?????? </button>
		      </div>
		    </div>
		  </div>
		</div>
		
	 <!-- x?????? Modal -->
		<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel2" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel2"><b>Class101</b></h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        ????????? ?????????????????????????
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">??????</button>
		        <button type="button" class="btn btn-dark" id="btnUelete">?????? </button>
		      </div>
		    </div>
		  </div>
		</div>
	</div>
   </div>
   <br>
   <br>
  </form>
	
  <form name="formVo" id="formVo" method="post">
  <!-- *Vo.jsp s -->
  <%@include file="memberVo.jsp"%>		<!-- #-> -->
  <!-- *Vo.jsp e -->
  </form>	
		
<!-- end	 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/1d7c148109.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=59b27a41bdecd470671d4f9be366d1b3&libraries=services"></script>
<script type="text/javascript">
	
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
		
		$("#btnList").on("click", function(){
			formVo.attr("action", goUrlList).submit();
		});
		
	</script>
	<script>
		$("#btnUelete").on("click", function() {
			form.attr("action", goUrlUele).submit();
		});
		
		$("#btnDelete").on("click", function() {
			form.attr("action", goUrlDele).submit();
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
	                    if(data.bname !== '' && /[???|???|???]$/g.test(data.bname)){
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
	                
	                
	                var geocoder = new daum.maps.services.Geocoder();
					
					// ????????? ????????? ??????
					geocoder.addressSearch(addr, function(result, status) {
					 
						// ??????????????? ????????? ???????????????,
						if (status == daum.maps.services.Status.OK) {
							
							document.getElementById("lng").value=result[0].x;
							document.getElementById("lat").value=result[0].y;
						}
					});
	                
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
						location.href = "/home";
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