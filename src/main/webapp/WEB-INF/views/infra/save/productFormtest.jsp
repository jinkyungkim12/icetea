<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>
<html>
<head>
	<title>Product Form</title>
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
	<script src="/resources/js/commonXdmin.js" crossorigin="anonymous"></script>
	<script src="/resources/js/common.js" crossorigin="anonymous"></script>
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
		.input-file-button{
		padding: 4px 25px;
		background-color:#FF6600;
		border-radius: 4px;
		color: white;
		cursor: pointer;
		}
		.addScroll{
			overflow-y:auto;
			height: 200px;
			background-color:#E9ECEF;
			padding-top:5px; 
			padding-left:5px;
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

	<!-- ????????? ?????? -->
	
	<div><img src="../../resources/images/back2.jpg"></div>
	<div class="container">
		<div class="row">
			<p id="head" class="text-center"><b>????????? ??????</b></p>			
		</div>
	</div>
	
	<!-- ???????????? -->
	<form id="form" name="form" method="post" enctype="multipart/form-data">
	<input type="hidden" name="formNY" value="1">
	<!-- *Vo.jsp s -->
	<%-- <%@include file="productVo.jsp"%>	 --%>	<!-- #-> -->
	<!-- *Vo.jsp e -->
	<!-- <form method="post" name="form" action="/product/productInst"> -->
	<div class="container">
		<div class="row gy-3" id="firstrow">
			<div class="col-12">
				<label class="form-label bb">?????? ?????????(?????? 3??? ??????)</label>
	   			<input type="file" class="form-control" id="img222" multiple="multiple" name="postImage">
			</div>
			<div class="col-6">
				<label class="form-label bb">seq</label>
	   			<input type="text" class="form-control" value="<c:out value="${item.seq}"/>" id="seq" placeholder="???????????????????????? ??????????????? ??????????????????.">
			</div>
			<div class="col-6">
   				<label class="form-label bb">????????????</label>
   				<select class="form-select" aria-label="Default select example" name="classDelNY" id="classDelNY">
				  <option value="1" <c:if test="${item.classDelNY eq 1 }"> selected</c:if>>Y</option>
				  <option value="0" <c:if test="${item.classDelNY eq 0 }"> selected</c:if>>N</option>
				</select>
			</div>
			<div class="col-6">
				<label class="form-label bb">????????????(??????????????????)</label>
	   			<input type="text" class="form-control" value="<c:out value="${item.category}"/>" name="category" placeholder="???????????????????????? ??????????????? ??????????????????.">
			</div>
			<div class="col-6">
				<label class="form-label bb">??????</label>
	   			<select class="form-select col-2" aria-label="Default select example" name="classDiv">
				  <option value="" selected>??????</option>
				  <option value="25" <c:if test="${item.classDiv eq 25 }"> selected</c:if>>????????? ??????! TIME DEAL</option>
				  <option value="26" <c:if test="${item.classDiv eq 26 }"> selected</c:if>>MD ?????? ?????????</option>
				  <option value="27" <c:if test="${item.classDiv eq 27 }"> selected</c:if>>?????? ?????? ?????????</option>
				</select>
			</div>
			<div class="col-12">
				<label class="form-label bb">????????????</label>
	   			<input type="text" class="form-control" value="<c:out value="${item.title}"/>" name="title" placeholder="?????????">
			</div>
			<div class="col-12">
				<div class="row">
					<label class="form-label bb">?????? ??????</label>
					<div class="col-3">
						<label class="form-label"><small>??????</small></label>
			   			<input type="text" class="form-control" value="<c:out value="${item.price}"/>" name="price" placeholder="ex) 300,000???">
					</div>
					<div class="col-3">
						<label class="form-label"><small>?????????</small></label>
			   			<input type="text" class="form-control" value="<c:out value="${item.discountRate}"/>" name="discountRate" placeholder="ex) 30%">
					</div>
					<div class="col-3">
						<label class="form-label"><small>??????</small></label>
		   				<select class="form-select col-2" aria-label="Default select example" name="payMonth">
						  <option value="16" <c:if test="${item.payMonth eq 16 }"> selected</c:if>>5??????</option>
						  <option value="17" <c:if test="${item.payMonth eq 17 }"> selected</c:if>>12??????</option>
						</select>
					</div>
					<div class="col-3">
						<label class="form-label"><small>??? ?????????</small></label>
			   			<input type="text" class="form-control" value="" placeholder="ex) -10,000???">
					</div>
				</div>
			</div>
			<div class="col-12">
				<label class="form-label bb">????????? ??????</label>
		   		<div class="row">
		   			<div class="col-6">
		   				<label class="form-label"><small>????????? ??????</small></label>
		   				<input type="text" class="form-control" value="<c:out value="${item.classAmount}"/>" name="classAmount" placeholder="ex) 12??? ??????, 44??? ????????????">
		   			</div>
	   				<div class="col-2">
		   				<label class="form-label"><small>?????? ?????? ??????</small></label>
		   				<select class="form-select col-2" aria-label="Default select example" name="dateNY">
							<option value="1" <c:if test="${item.dateNY eq 1 }"> selected</c:if>>Y</option>
				  			<option value="0" <c:if test="${item.dateNY eq 0 }"> selected</c:if>>N</option>
						</select>
					</div>
					<div class="col-2">
						<label class="form-label"><small>?????? ?????? ??????</small></label>
						<select class="form-select col-2" aria-label="Default select example" name="subtitleNY">
						    <option value="1" <c:if test="${item.subtitleNY eq 1 }"> selected</c:if>>Y</option>
				  			<option value="0" <c:if test="${item.subtitleNY eq 0 }"> selected</c:if>>N</option>
						</select>
					</div>
					<div class="col-2">
						<label class="form-label"><small>?????? ?????? ??????</small></label>
						<select class="form-select col-2" aria-label="Default select example" name="kitNY">
						  <option value="1" <c:if test="${item.kitNY eq 1 }"> selected</c:if>>Y</option>
				  		  <option value="0" <c:if test="${item.kitNY eq 0 }"> selected</c:if>>N</option>
						</select>
					</div>
	   			</div>
			</div>
			<div class="col-12">
				<label class="form-label bb">?????? ??????</label>
				<br><label class="form-label"><small>?????? ?????? ??????</small></label>
		   		<input type="text" class="form-control" value="<c:out value="${item.classInfo}"/>" name="classInfo" placeholder="ex) ?????????????????? ?????? oo??????????????????."> 
			</div>
			<div class="col-12">
				<label class="form-label"><small>???????????? ????????????</small></label>
	   			<input type="file" class="form-control" id="inputGroupFile01" multiple="multiple">
			</div>
			<div class="col-12">
				<label class="form-label bb">????????????</label>
				<textarea class="form-control" placeholder="???????????? ????????? ?????? ?????????????????? ????????????." style="height: 150px"></textarea>
				<small style="color: gray;"><i class="fa-solid fa-circle-info"></i> WELCOME, OUTRO??? ???????????? ?????????????????? ????????????.</small>
			</div>
			<div class="col-12">
				<label class="form-label bb">?????? ??????</label>
	   			<input type="file" class="form-control" id="inputGroupFile01" multiple="multiple">
			</div>
		</div>
	</div>
	
	
	<!-- ?????? -->
	<div class="container" style="margin-top: 5rem;">
		<div class="row justify-content-between">	
	   		<div class="col-9">
	     		<button type="button" class="btn btn-dark" id="btnList"><i class="fa-solid fa-list"></i></button>
	     		
	    	</div>
	    	<div class="col-3 text-end">
		     		<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal2" style="color: white;"><i class="fa-solid fa-x"></i></button>
					<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa-solid fa-trash-can"></i></button>
					<button type="button" class="btn btn-success" id="btnSave"><i class="fa-solid fa-bookmark"></i></button>
					<button type="button" class="btn btn-dark" id="test" onclick="validationInst()"><i class="fa-solid fa-bookmark"></i></button>
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
			
		</div>
   </div>
   <br>
   <br>
   </form>
   
   <form name="formVo" id="formVo" method="post">
	<!-- *Vo.jsp s -->
<%-- 	<%@include file="productVo.jsp"%>	 --%>	<!-- #-> -->
	<!-- *Vo.jsp e -->
	</form>

<!-- end	 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/1d7c148109.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script type="text/javascript">
	
		var goUrlList = "/product/productList"; 		/* #-> */
		var goUrlInst = "/product/productInst"; 		/* #-> */
		var goUrlUpdt = "/product/productUpdt";			/* #-> */
		var goUrlUele = "/product/productUele";			/* #-> */
		var goUrlDele = "/product/productDele";			/* #-> */
		
		var seq = $("input:hidden[name=seq]");			/* #-> */
		
		var form = $("form[name=form]");
		var formVo = $("form[name=formVo]");
		
		
		
		$("#btnSave").on("click", function(){
			
		 	if (seq.val() == "0" || seq.val() == ""){
		   		form.attr("action", goUrlInst).submit();
		   	} else {
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