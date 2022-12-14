<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>
<html>
<head>
	<title>Class101</title>
	<script src="https://kit.fontawesome.com/15c84217dd.js" crossorigin="anonymous"></script>
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
		#aaa{
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			font-size: 20px;
			margin-top: 1rem;
		}
		.class1{
			color: black;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 20px;
		}
		.class2{
			color: black;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			font-size: 17px;
		}
		#buttonTop1{
			color: #FD3049;
			font-family: 'Happiness-Sans-Bold';
			margin-top: 1rem;
		}
		#buttonTop2{
			color: gray;
			font-family: 'Happiness-Sans-Bold';
			margin-top: 1rem;
		}
		#coupon{
			color: gray;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 14px;
			margin-top: 2rem;
		}
		#couponDC{
			color: black;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 16px;
			margin-top: 1rem;
		}
		#Price{
			color: black;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 18px;
			margin-top: 1rem;
		}
		#totalDC{
			color: #FD3049;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 18px;
			margin-top: 1rem;
		}
		#button1{
			width: 350px;
			height: 40px;
			background-color: #FD3049;
			margin-top: 1.5rem;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			margin-top: 2rem;
		}
		#bbb{
			color: black;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			margin-top: 2rem;
		}
		#ccc{
			color: black;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			margin-top: 1rem;
		}
		#ddd{
			color: black;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			margin-top: 1.5rem;
		}
		#button2{
			width: 100px;
			height: 40px;
			background-color: #EFEFEF;
			margin-top: 1.5rem;
		}
		#btnOrder{
			width: 350px;
			height: 40px;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			background-color: #FF5600;
			margin-top: 1.5rem;
		}
		#orderTop{
			color: #5A5757;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 17px;
		}
		#classTitle{
			color: black;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 20px;
			margin-top: 1rem;
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
			font-size: 22px;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			color: #5A5757;
		}
		.reviewStar{
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
			height: 7rem;
		}
		#reviewButton{
			width: 500px;
			height: 40px;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
		}
		.productView{
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
		}
		.content1{
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
		}
		.card{
			background-color: #EDEDED;
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
		.nav-link{
			color: black;
		}
		.avatar-rounded-circle{
			width: 50px;
			height: 50px;
			border-radius: 100%;
		}
		.heart{
			margin-top: 2rem;
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
	
	<!-- ?????? ?????? ????????? -->
	<form id="form" name="form" method="post" enctype="multipart/form-data">
	<input type="hidden" name="seq" value="${vo.seq}"> 
	<input type="hidden" name="mSeq" value="${sessSeq}"> 
	<div class="container" style="margin-top: 3rem;">
		<div class="row">
		
		<!-- 	top image 2ea -->	
			<div class="col">
				<img src="${listContent[1].path}${listContent[1].uuidName}" width="691px" height="500px">
			</div>
			<div class="col">
				<div><img src="${listContent[2].path}${listContent[2].uuidName}" width="550px" height="500px"></div>
			</div>
		</div>
	</div>
	
	<!-- ????????? -->
	<div class="container">
		<div class="row">
			<div class="col-8">
				
				<!-- ?????? -->
				<div class="sticky-top">
					<div class="row fw-semibold" id="aaa">
						<nav class="navbar navbar-expand-lg bg-white">
							<div class="collapse navbar-collapse" id="navbarSupportedContent">
								<ul class="navbar-nav me-auto mb-2 mb-lg-0">
									<li class="nav-item">
							          <a class="nav-link aaa" aria-current="page" href="#RV" id="review">??????</a>
							        </li>
							        <li class="nav-item">
							          <a class="nav-link aaa" aria-current="page" href="#IF" id="classinfo">????????? ??????</a>
							        </li>
							        <li class="nav-item">
							          <a class="nav-link aaa" aria-current="page" href="#RF" id="refund">????????????</a>
							        </li>
								</ul>
							</div>
						</nav>	
					</div>
				</div> 
				
				<!-- ??????????????? -->
				<div class="row">
					<img src="../../resources/images/banner.png">
				</div> 
				
				
				<!-- ????????? ?????? -->
				<div class="row" style="margin-top: 5rem;">
					<div><span class="class1" id="classinfo">????????? ??????</span></div>
				</div>
				<div class="row" style="margin-top: 2rem;">
					<div class="col-5"><span class="class2"><b>????????? ??????: </b>&nbsp;<c:out value="${item.classAmount}"/></span></div>
					<div class="col-3"><span class="class2"><b>?????? ?????????: </b>
											<c:choose>
												<c:when test = "${item.dateNY eq 1}">&nbsp;??????</c:when>
												<c:otherwise>?????????</c:otherwise>
											</c:choose>
									   </span>
					</div>
					<div class="col-3"><span class="class2"><b>?????? ?????? ??????: </b> 
										    <c:choose>
												<c:when test = "${item.subtitleNY eq 1}">&nbsp;??????</c:when>
												<c:otherwise>?????????</c:otherwise>
											</c:choose>
									   </span>
					</div>
					<div class="col-2"><span></span></div>
				</div>
				
				
				
				 
				<!-- ?????? -->
				<div id="RV">
					<!-- list ?????? ??? ??? -->
					<div id="reviewHead" class="mb-5"><h5>?????? ????????? ??????</h5></div>
					<div class="row mb-4">
					<c:choose>
						<c:when test="${fn:length(listRV) eq 0 }">
			               <div class="text-center"><h5><b>??? ???????????? ?????? ????????? ???????????? ????????????.????</b></h5></div>
			           </c:when>
			            <c:otherwise>
	           				<c:forEach items="${listRV }" var="listRV" varStatus="status">
								<div class="col-6">
									<div class="row mb-2" id="reviewID">
										<div class="col-1">
											<c:choose>
												<c:when test="${listRV.pseq eq null }">
													<img alt="" src="../resources/images/profileimg.png" class="avatar avatar-review">
												</c:when>
												<c:otherwise>
													<img alt="" src="${listRV.path}${listRV.uuidName}" class="avatar avatar-review">
												</c:otherwise>
											</c:choose>
										</div>
										<div class="col-11 px-4 text-start" id="reviewID">
											<span><c:out value="${listRV.id}"/></span>
										</div>
									</div>
									<div class="row mb-2">
										<div class="col-4">
											<div class="reviewStar">
												<c:forEach begin="1" end="${listRV.preferenceStar}" varStatus="status">
													<i class="fa-solid fa-star"></i>  
												</c:forEach>
											</div>
										</div>
										<div class="col-8 text-end">
											<span class="reviewDate"><c:out value="${listRV.reviewRegDate}"/></span>
										</div>
									</div>
									<div class="reviewContent">
										<span>
											<c:out value="${listRV.content}"/> 
										</span>
									</div>
								</div>
							</c:forEach>
			           </c:otherwise>
					</c:choose>	
					</div> 
					<div class="row justify-content-center">
						<button type="button" role="button" class="btn btn-dark" id="reviewButton"><b>?????? ???????????? ??????</b></button>
					</div>
				</div>
				
				
				<!-- ?????? ?????? ?????? image-->
				<div id="IF" style="margin-top: 3rem;">
					<img src="${listContent[3].path}${listContent[3].uuidName}" style="width: 870px;">
				</div>
				
				<!-- ???????????? -->
				<div id="RF">
					<div class="content1" style="margin-top: 5rem;"><h4><b>????????????</b></h4></div>
					<div class="content1" style="margin-top: 1.5rem;">
						<div class="card">
						  <div class="card-body">
						    <span>?????? ????????? ?????? ?????????????????? 90????????? ?????? ????????? ????????????, <b>7??? ??????</b> ?????? ????????? ???????????????.</span>
						    <div class="bd-example" style="margin-top: 1.5rem;">
							  <button type="button" class="btn btn-dark" data-bs-toggle="modal" data-bs-target="#exampleModalLg">?????? ??????</button>
							</div>
							<div class="modal fade" id="exampleModalLg" tabindex="-1" aria-labelledby="exampleModalLgLabel" aria-hidden="true">
							  <div class="modal-dialog modal-lg">
							    <div class="modal-content">
							      <div class="modal-header">							      
							        <h5 class="modal-title h4" id="exampleModalLgLabel">????????????</h5>
							        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							      </div>
							      <div class="modal-body text-center">
							        <img src="../../resources/images/refund.png">
							      </div>
							      <div class="modal-body text-center">
							        <img src="../../resources/images/refund2.png">
							      </div>
							       <div class="modal-footer">
								       <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">??????</button>
								   </div>
							    </div>
							  </div>
							</div>
						  </div>
						</div>
					</div>
				</div>
			</div>
			
			<!-- ????????? -->
			<div class="col-4" style="margin-top: 2rem;">
				<div class="sticky-top">
					<div class="shadow p-3 mb-5 bg-body rounded">
						<div id="orderTop"><c:out value="${item.category}"/></div>
						<div id="classTitle"><c:out value="${item.title}"/></div>
						<div>
							<a type="button" href="#" role="button" class="btn btn-light" id="buttonTop1">????????????</a>
							<a type="button" href="#" role="button" class="btn btn-light" id="buttonTop2">??????????????????</a>
						</div>
						<div class="text-end" id="coupon">?????? ?????? ???, 5?????? ??????</div>
						<div class="row justify-content-between">
							<div class="col" id="couponDC">?????? ?????????</div>
							<div class="col text-end" id="Price"><c:out value="${item.discountRate}"/>% ??? <fmt:formatNumber type="number" value="${(item.price*((100-item.discountRate)*0.01))/5}" pattern="#,###"/>???</div>
						</div>
						<div class="row justify-content-between" id="totalDC">
							<div class="col">??? ?????????</div>
							<div class="col text-end">- <fmt:formatNumber type="number" value="${item.price*((item.discountRate)*0.01)}" pattern="#,###"/>???</div>
						</div>
						<div class="row" id="bbb">
							<div class="col-6"><i class="fa-brands fa-youtube"></i> ????????? ?????????</div>
							<div class="col-6"><i class="fa-solid fa-gifts"></i> ????????? ??????</div>
						</div>
						<div class="row" id="ccc">
							<div class="col-6"><i class="fa-solid fa-user"></i> ????????? ??????</div>
							<div class="col-6"><i class="fa-solid fa-thumbs-up"></i> ?????? ????????? 99%</div>
						</div>
						<!-- <div class="text-center" id="ddd">
							<a type="button" href="#" role="button" class="btn btn-light"><i class="fa-solid fa-heart"></i> 11701</a>
							<a type="button" href="#" role="button" class="btn btn-light"><i class="fa-solid fa-arrow-up-from-bracket"></i> ????????????</a>
							<a type="button" href="#" role="button" class="btn btn-light"><i class="fa-solid fa-gift"></i> ????????????</a>
						</div> -->
						<div class="row justify-content-center">
							<button type="button" role="button" class="btn btn-danger" id="btnOrder">???????????? <i class="fa-solid fa-cart-shopping"></i></button>
						</div>	
					</div>
				</div>	
			</div>		
		</div>
	</div>
	</form>
	 
	<!-- ??? -->
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
		
		var goUrlForm = "/order/orderRegForm"
		var goUrlReview = "/review/reviewForm"
		
		var form = $("form[name=form]");
		var seq = $("input:hidden[name=seq]");			/* #-> */
		
		$("#btnOrder").on("click", function(){
			form.attr("action", goUrlForm).submit();
		}); 
		
		$("#reviewButton").on("click", function(){
			form.attr("action", goUrlReview).submit();
		}); 
		
	</script>
	<script type="text/javascript">
	 $(document).ready(function () {
	        $(window).scroll(function () {
	            if ($(this).scrollTop() > 50) {
	                $('#back-to-top').fadeIn();
	            } else {
	                $('#back-to-top').fadeOut();
	            }
	        });
	        // scroll body to 0px on click
	        $('#back-to-top').click(function () {
	            $('#back-to-top').tooltip('hide');
	            $('body,html').animate({
	                scrollTop: 0
	            }, 100);
	            return false;
	        });

	        $('#back-to-top').tooltip('show');

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