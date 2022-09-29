<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>
<html>
<head>
	<title>codeForm</title>
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
		.aaa:link {
		  color : black;
		}
		.aaa:visited {
		  color : black;
		}
		.aaa:hover {
		  color : #F7670E;
		  background-color : #FCC4A3;
		}
		.aaa:active {
		  color : #F7670E;
		}
		.bbb:hover {
		  color : #F7670E;
		}
		.bbb:active {
		  color : #F7670E;
		}
		.bbb{
		  color: white;
		}
		.nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active {
		  color: #ffffff;
		  background-color: #f87320;
		}
		.nav-link:focus, .nav-link:hover {
		  color: #F7670E;
		}
		.nav-link {
		  color: gray;
		}
		.container{
			font-family: 'Happiness-Sans-Regular';	
		}
		@font-face {
		    font-family: 'Happiness-Sans-Regular';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2205@1.0/Happiness-Sans-Regular.woff2') format('woff2');
		    font-weight: 400;
		    font-style: normal;
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
	            <a class="nav-link bbb" href="/member/memberList">회원관리</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link bbb" href="/product/productList">클래스관리</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link bbb" href="/review/reviewList">리뷰관리</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link bbb" href="/order/orderList">주문관리</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link bbb" href="/codeGroup/codeGroupList">코드그룹관리</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link bbb" href="/code/codeList">코드관리</a>
	          </li>
	        </ul>
	        <div class="text-center">
		         <ul class="navbar-nav" style="margin-top: 3rem;">
			      <li class="nav-item justify-content-end">
			        <button type="button" class="nav-link btn btn-warining" id="logoutButton" style="background-color: #F87320; color: white;">logout</button>
			      </li>
			     </ul>
		     </div>
	      </div>
	    </div>
	  </div>
	</nav>	
	
	
	
	<div><img src="../../resources/images/back2.jpg"></div>
	<div class="container">
		<div class="row content-justify-center text-center"style="margin-top: 3rem;"><h1><b>코드 관리</b></h1></div>
	</div>
	
	<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
	<!-- <form method="post" name="form" action="/code/codeInst"> -->
	<form id="form" name="form" method="post">
	<!-- *Vo.jsp s -->
	<%@include file="codeVo.jsp"%>		<!-- #-> -->
	<!-- *Vo.jsp e -->
	<div class="container" style="margin-top: 3rem; width: 80%;">
		<div class="row gy-3" id="firstrow">
			<div class="col-6">
				<label class="form-label"><b>코드 번호</b></label>
	   			<input type="text" class="form-control" value="<c:out value="${item.seq}"/>" id="seq" placeholder="">
			</div>
			<div class="col-6"></div>
			<div class="col-6">
				<label class="form-label"><b>코드그룹</b></label>
	   			<input type="text" class="form-control" value="<c:out value="${item.codeGroup_seq}"/>" name="codeGroup_seq" id="codeGroup_seq" placeholder="자동생성" disabled>
			</div>
			<div class="col-6">
				<label class="form-label"><b>코드그룹 번호</b></label>
	   			<input type="text" class="form-control" value="<c:out value="${item.codeGroup_seq}"/>" placeholder="" name="codeGroup_seq" id="codeGroup_seq">
			</div>
			<div class="col-6">
				<label class="form-label"><b>코드 이름(한글)</b></label>
	   			<input type="text" class="form-control" value="<c:out value="${item.codeNameKr}"/>" placeholder="" name="codeNameKr" id="codeNameKr">
			</div>
			<div class="col-6">
				<label class="form-label"><b>코드 이름(영문)</b></label>
	   			<input type="text" class="form-control" value="<c:out value="${item.codeName}"/>" placeholder="" name="codeName" id="codeName">
			</div>
			<div class="col-6">
				<label class="form-label"><b>사용여부</b></label>
			  	<select class="form-select" aria-label="Default select example" name="codeUseNY" id="codeuseNY">
					  <option value="1" <c:if test="${item.codeUseNY eq 1 }"> selected</c:if>>Y</option>
					  <option value="0" <c:if test="${item.codeUseNY eq 0 }"> selected</c:if>>N</option>
				</select>
			</div>
			<div class="col-6">
				<label class="form-label"><b>순서</b></label>
	   			<input type="text" class="form-control" value="" placeholder="">
			</div>
			<div class="col-6">
				<label class="form-label"><b>설명</b></label>
	   			<textarea type="text" class="form-control" value="" placeholder=""></textarea>
			</div>
			<div class="col-6">
				<label class="form-label"><b>삭제여부</b></label>
			  	<select class="form-select" aria-label="Default select example" name="codeDelNY">
				  <option value="1" <c:if test="${item.codeDelNY eq 1 }"> selected</c:if>>Y</option>
				  <option value="0" <c:if test="${item.codeDelNY eq 0 }"> selected</c:if>>N</option>
			  	</select>
			</div>
			<div class="col-6">
				<label class="form-label"><b>예비 1 (varchar type)</b></label>
	   			<input type="text" class="form-control" value="" placeholder="">
			</div>
			<div class="col-6">
				<label class="form-label"><b>예비 2 (varchar type)</b></label>
	   			<input type="text" class="form-control" value="" placeholder="">
			</div>
			<div class="col-6">
				<label class="form-label"><b>예비 3 (varchar type)</b></label>
	   			<input type="text" class="form-control" value="" placeholder="">
			</div>
			<div class="col-6"></div>
			<div class="col-6">
				<label class="form-label"><b>예비 1 (int type)</b></label>
	   			<input type="text" class="form-control" value="" placeholder="">
			</div>
			<div class="col-6">
				<label class="form-label"><b>예비 2 (int type)</b></label>
	   			<input type="text" class="form-control" value="" placeholder="">
			</div>
			<div class="col-6">
				<label class="form-label"><b>예비 3 (int type)</b></label>
	   			<input type="text" class="form-control" value="" placeholder="">
			</div>
			<div class="col-6"></div>
		</div>
	</div>
	<div class="container" style="margin-top: 5rem;">
		<div class="row justify-content-between">	
	   		<div class="col-9">
	     		<button type="button" class="btn btn-dark" id="btnList"><i class="fa-solid fa-list"></i></button>
	     		
	    	</div>
	    	<div class="col-3 text-end">
		     		<button type="button" class="btn btn-danger" id="uelBtn" data-bs-toggle="modal" data-bs-target="#exampleModal2" style="color: white;"><i class="fa-solid fa-x"></i></button>
					<button type="button" class="btn btn-danger" id="delBtn" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa-solid fa-trash-can"></i></button>
					<button type="button" class="btn btn-success" id="btnSave"><i class="fa-solid fa-bookmark"></i></button>
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
			        <button type="button" class="btn btn-dark" id="btnUelete">삭제 </button>
			      </div>
			    </div>
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
			        <button type="button" class="btn btn-dark" id="btnDelete">삭제 </button>
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
	<%@include file="codeVo.jsp"%>		<!-- #-> -->
	<!-- *Vo.jsp e -->
	</form>
 

		
<!-- end	 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/1d7c148109.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script type="text/javascript">
	
		var goUrlList = "/code/codeList"; 			
		var goUrlInst = "/code/codeInst"; 			
		var goUrlUpdt = "/code/codeUpdt";			
		var goUrlUele = "/code/codeUele";			
		var goUrlDele = "/code/codeDele";			
		
		var seq = $("input:hidden[name=seq]");			
		
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