<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<html>
<head>
	<title>Class101</title>
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
				
		#reviewHead{
			margin-top: 5rem;
			font-family: 'Happiness-Sans-Bold';
		}
		#star1{
			color: #F8B136;
			font-size: 25px;
		}
		#star2{
			font-size: 25px;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
		}
		#reviewID{
			font-size: 25px;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			color: #5A5757;
		}
		.reviewStar{
			color: #F8B136;
			font-size: 20px;
		}
		.reviewStar2{
			color: #F8B136;
			font-size: 15px;
		}
		.reviewDate{
			font-size: 15px;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			color: gray;
		}
		.reviewContent{
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
		}
		#reviewButton{
			width: 500px;
			height: 40px;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			background-color: #EFEFEF;
			margin-top: 3rem;
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
		.aaa:hover{
			color: #FD3049 !important;
		}
		:root{
			 --bs-link-hover-color: #fd7e14;
		}
		.dropdown-menu{
			--bs-dropdown-link-active-bg: #FCC4A3;
		}
		.form-check-input:checked {
		    background-color: #FF5600;
		    border-color: #FF5600;
		}
		.review{
			width: 40%;
			font-family: 'Happiness-Sans-Regular';
		}
		.review2{
			width: 37%;
			font-family: 'Happiness-Sans-Regular';
		}
		.star-rating {
		  display:flex;
		  flex-direction: row-reverse;
		  font-size:1.5em;
		  padding:0 .2em;
		  text-align:center;
		  width:5em;
		}
		
		.star-rating input {
		  display:none;
		}
		
		.star-rating label {
		  color:#ccc;
		  cursor:pointer;
		}
		
		.star-rating :checked ~ label {
		  color:#f90;
		}
		
		.star-rating label:hover,
		.star-rating label:hover ~ label {
		  color:#fc0;
		}
		.nav-link{
			color: black;
		}
		.avatar-rounded-circle{
			width: 50px;
			height: 50px;
			border-radius: 100%;
		}
		.avatar-review{
			width: 35px;
			height: 35px;
			border-radius: 100%;
		}
	</style>
</head>
<body>

<!-- start -->
	
	<!-- NAV bar	 -->
	<%@include file="../../../common/xdmin/includeV1/loginNY.jsp"%>
	
	<!-- review -->
	<form  id="form" name="form" method="post">
		<input type="hidden" name="seq" value="${vo.seq}"/> 
		<input type="hidden" name="classProduct_seq" value="${vo.seq}"/> 
		<input type="hidden" name="member_seq" value="${sessSeq}"/>   
		<div class="container review">
			<div class="row text-center" style="margin-top: 2rem;">
				<h3><b>Review</b></h3>
			</div>
			<div class="row justify-content-center" style="margin-top: 5rem;">
				<div class="col-3">
					<div class="reviewStar">
						<fmt:parseNumber integerOnly="true" value="${item.avgStar}" var="avgStar"/>
						<c:forEach begin="1" end="${avgStar}" varStatus="status">
							<i class="fa-solid fa-star"></i>  
						</c:forEach>
					</div>
				</div>
				<div class="col-1"><h4><b><c:out value="${item.avgStar}"/></b></h4></div>
				<div class="col-2" style="color: gray;"><h5 style="margin-bottom: 0px; margin-top: 3px;">??? <c:out value="${fn:length(list)}"/>???</h5></div>
			</div>
			 	<!-- Header -->
	            <div class="row align-items-center">
	            	<div class="col-12 col-md-auto">
	                	<!-- Dropdown -->
	                	<!-- <div class="dropdown mb-4 mb-md-0">
							<a class="dropdown-toggle text-reset" data-bs-toggle="dropdown" href="#">
								<strong>Sort by: ?????????</strong>
							</a>
							<div class="dropdown-menu mt-3">
								<a class="dropdown-item" href="#!">?????????</a>
								<a class="dropdown-item" href="#!">????????????</a>
							</div>
	                	</div> -->
	              </div>
	              <div class="col-12 col-md text-md-center">
	
	                <!-- Rating -->
	                <div class="rating text-dark h6 mb-4 mb-md-0" data-value="4">
	                </div>
	
	
	              </div>
	              <div class="col-12 col-md-auto mt-5">
	
	                <!-- Button -->
	                <a class="btn btn-dark collapsed" data-bs-toggle="collapse" href="#reviewForm" aria-expanded="false">
	                  ?????? ????????????
	                </a>
	
	              </div>
	            </div>
	
	            <!-- New Review -->
	            <div class="collapse" id="reviewForm" style="">
	
	              <!-- Divider -->
	              <hr class="my-8">
	
	              <!-- Form -->
	                <div class="row">
	                  <div class="col-12 mb-6">
	
	                    <!-- Text -->
	                    <p class="mb-1 fs-xs">
	                      ??????:
	                    </p>
	
	                    <!-- Rating form -->
	                    <div class="rating-form">
	                    
	                    	<div class="star-rating justify-content-center">
	                    	  <input type="hidden" name="preferenceStar" id="preferenceStar">
							  <input type="radio" id="5-stars" name="startPoint" onclick="countingStar(5)" /> 
							  <label for="5-stars" class="star">&#9733;</label>
							  <input type="radio" id="4-stars" name="startPoint" onclick="countingStar(4)" />
							  <label for="4-stars" class="star">&#9733;</label>
							  <input type="radio" id="3-stars" name="startPoint" onclick="countingStar(3)" />
							  <label for="3-stars" class="star">&#9733;</label>
							  <input type="radio" id="2-stars" name="startPoint" onclick="countingStar(2)" />
							  <label for="2-stars" class="star">&#9733;</label>
							  <input type="radio" id="1-star"  name="startPoint" onclick="countingStar(1)" />
							  <label for="1-star" class="star">&#9733;</label>
							</div>
	
	                    </div>
	
	                  </div>
	                  <div class="col-12" style="margin-top: 1rem;">
	
	                    <!-- Name -->
	                    <div class="form-group">
	                      <label class="visually-hidden" for="reviewName">id:</label>
	                      <input class="form-control form-control-sm" id="reviewName" name="id" type="text" value="${sessId}" required="">
	                    </div>
	
	                  </div>
	                  <div class="col-12" style="margin-top: 1.5rem;">
	
	                    <!-- Review -->
	                    <div class="form-group">
	                      <label class="visually-hidden" for="reviewText">??????</label>
	                      <textarea class="form-control form-control-sm" id="reviewText" name="content" rows="5" placeholder="????????? ??????????????????." required=""></textarea>
	                    </div>
	
	                  </div>
	                  <div class="col-12 text-center" style="margin-top: 3rem;">
	
	                    <!-- Button -->
	                    <button class="btn btn-outline-dark mb-5" type="button" id="BtnReviewReg">?????? ????????????</button>
	
	                  </div>
	                </div>
	            </div>
	       </div>
	      </form>
	            
	       <div class="container review" style="margin-top: 2rem;">
	       <c:choose>
	           <c:when test="${fn:length(list) eq 0 }">
	               <div class="text-center mb-5"><h5><b>??? ???????????? ?????? ????????? ???????????? ????????????.????</b></h5></div>
	           </c:when>
	           <c:otherwise>
	           		<c:forEach items="${list }" var="list" varStatus="status">
			           <div class="row mb-5">
			         		<div class="col-1">
									<c:choose>
										<c:when test="${list.pseq eq null }">
											<img alt="" src="../resources/images/profileimg.png" class="avatar avatar-review">
										</c:when>
										<c:otherwise>
											<img alt="" src="${list.path}${list.uuidName}" class="avatar avatar-review">
										</c:otherwise>
									</c:choose>
							</div>
							<div class="col-11 text-start" id="reviewID">
								<span><c:out value="${list.id}"/></span>
							</div>
						<div class="row justify-content-between">
							<div class="col-4 text-start">
								<div class="reviewStar2">
									<c:forEach begin="1" end="${list.preferenceStar}" varStatus="status">
										<i class="fa-solid fa-star"></i>  
									</c:forEach>
								</div>
								<!-- <div class="reviewStar2">
									<i class="fa-solid fa-star"></i>
									<i class="fa-solid fa-star"></i>
									<i class="fa-solid fa-star"></i>
									<i class="fa-solid fa-star"></i>
									<i class="fa-solid fa-star"></i>&emsp;
								</div> -->
							</div>
							<div class="col-8 text-end">
								<span class="reviewDate"><c:out value="${list.reviewRegDate}"/></span>
							</div>
						</div>
						<div class="reviewContent">
							<span>
								<c:out value="${list.content}"/> 
							</span>
						</div>
						<!-- <div class="row justify-content-between" style="margin-top: 1rem;">
							<div class="col-1 text-start"><i class="fa-solid fa-heart"></i> 5</div>
							<div class="col-11 text-end">
								<button type="button" href="#" role="button" class="btn btn-outline-dark btn-small"><i class="fa-solid fa-pen"></i></button>
								<button type="button" href="#" role="button" class="btn btn-outline-dark btn-small"><i class="fa-solid fa-floppy-disk"></i></button>
							</div>
						</div> -->
					</div>
	           		</c:forEach>
	           </c:otherwise>
	       </c:choose>
	       	<div class="row justify-content-center">
				<div class="col text-center">
					<button type="button" class="btn btn-dark mt-2 mb-2" id="BtnBack" style="width: 450px;">?????????????????? ????????????</button>
				</div>
			</div>
		</div>
		
	<!-- footer -->
	<div class="container">
		<div class="row" style="margin-top: 5rem;">
			<div class="col-4">
				<div><img src="../../resources/images/classLogo.png" alt="" width="300" height="121"></div>
				<div><span id="endContent1">????????? 101??? ?????? ????????? ???????????? ?????? ??????<br>??? ??? ????????? ????????? ???????????? ?????????.</span></div>
				<br>
				<br>
				<div><span id="endContent1"><small>KR</small>&nbsp;?????????</span></div>
			</div>
			<div class="col-2">
				<div class="endTitle">????????? 101</div>
				<div class="endContent2">???</div>
				<div class="endContent2">????????????</div>
				<div class="endContent2">??????</div>
				<div class="endContent2">?????????</div>
			</div>
			<div class="col-2">
				<div class="endTitle">???????????????</div>
				<div class="endContent2">??????????????? ??????</div>
				<div class="endContent2">?????? ????????? ????????????</div>
				<div class="endContent2">?????????</div>
			</div>
			<div class="col-4">
				<div class="endTitle">????????????</div>
				<div class="text-center"><a type="button" role="button" class="btn btn-light" id="endButton">????????????</a></div>
				<div class="endContent2 text-center">?????? 10??? ~ ?????? 6??? (??????, ????????? ??????)</div> 
			</div>
		</div>
	</div>
	<div class="col text-end sticky-bottom">
		<a id="back-to-top" href="#" class="btn btn-outline-dark back-to-top-css rounded-circle" role="button" title="Move Top" data-toggle="tooltip" data-placement="left" style= "width:55px; height: 55px;">
			<span class="glyphicon glyphicon-chevron-up"><small><i class="fa-solid fa-angles-up"></i><br>TOP</small></span>
		</a>
	</div>
	<br>
	<br>

<!-- end	 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/1d7c148109.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script type="text/javascript">
			
		var goUrlList = "/review/reviewForm";
		var goUrlInst = "/review/reviewInst";
		var goUrlView = "/product/productView";
		
		var form = $("form[name=form]");
		var seq = $("input:hidden[name=seq]");
		
		goList = function(keyValue){
			$("input:hidden[name=mSeq]").val(keyValue);
			form.attr("action", goUrlList).submit();
		}
		
		$("#BtnReviewReg").on("click", function(){
			form.attr("action", goUrlInst).submit();
		});
		
		countingStar = function(key){
			$("#preferenceStar").val(key)
		}
		
		$("#BtnBack").on("click", function(){
			form.attr("action", goUrlView).submit();
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
	<script type="text/javascript">
		function commentSave() {
			
			$.ajax({
					async: true 
					,cache: false
					,type: "post"
					/* ,dataType:"json" */
					,url: "gameInsert"
					/* ,data : $("#formLogin").serialize() */
					,data : { "comment" : $("#comment").val(), "mSeq" : $("input[name=mSeq]").val(), "gSeq" : $("input[name=gSeq]").val()}
					,success: function(response) {
						if (response.rt == "success") {
							location.href = "/gameView?gSeq="+ $("input[name=gSeq]").val();
						} else {
							alert("????????? ???????????????!!");
						}
					}
					,error : function(jqXHR, textStatus, errorThrown){
						alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
					}
				});
		}
		
		function commentUelete(seq) {
			
			$.ajax({
					async: true 
					,cache: false
					,type: "post"
					/* ,dataType:"json" */
					,url: "gameCommentUelete"
					/* ,data : $("#formLogin").serialize() */
					,data : {"seq" : seq, "mSeq" : $("input[name=mSeq]").val(), "gSeq" : $("input[name=gSeq]").val()}
					,success: function(response) {
						if (response.rt == "success") {
							location.href = "/gameView?gSeq="+ $("input[name=gSeq]").val();
						} else {
							alert("????????? ???????????????!!");
						}
					}
					,error : function(jqXHR, textStatus, errorThrown){
						alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
					}
				});
		}
	</script>
	<!-- <script type="text/javascript">
		function BtnReviewReg() {
			
			$.ajax({
					async: true 
					,cache: false
					,type: "post"
					/* ,dataType:"json" */
					,url: "/review/reviewInst"
					/* ,data : $("#formLogin").serialize() */
					,data : { "comment" : $("#comment").val(), "member_seq" : $("input[name=member_seq]").val(), "gSeq" : $("input[name=gSeq]").val()}
					,success: function(response) {
						if (response.rt == "success") {
							location.href = "/gameView?gSeq="+ $("input[name=gSeq]").val();
						} else {
							alert("????????? ???????????????!!");
						}
					}
					,error : function(jqXHR, textStatus, errorThrown){
						alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
					}
				});
		}
	</script> -->
</body>
</html>