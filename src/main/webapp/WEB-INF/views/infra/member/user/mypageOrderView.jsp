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
		@font-face {
		    font-family: 'Happiness-Sans-Regular';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2205@1.0/Happiness-Sans-Regular.woff2') format('woff2');
		    font-weight: 400;
		    font-style: normal;
		}
		#leftList{
			color: black;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			font-size: 15px;
		}
		#logoutButton{
			width: 7rem;
			background-color: #FF5600;
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
		.progressRate{
			color: red;
		}
		#button1{
			width: 100%;
			font-size: 20px;
			margin-top: 2rem;
			background-color: #F5F5F5;
		}
		.eventTitle{
			color: black;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 18px;
		}
		.eventDday{
			color: red;
			font-family: 'Happiness-Sans-Bold';
			font-style: normal;
			font-size: 15px;
		}
		.eventDate{
			color: black;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			font-size: 15px;
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
		
		.avatar-rounded-circle{
			width: 50px;
			height: 50px;
			border-radius: 100%;
		}
		
		#btnMypage{
			width: 400px;
			height: 40px;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			background-color: #FF5600;
			margin-top: 2rem;
			border: none;
		}
		
		.form-check-input:checked {
		    background-color: #FF5600;
		    border-color: #FF5600;
		}
		
		.finalPrice{
			color: red;
		}
		
		.linkk{
			width: 70px;
		}
		
		#BtnOrder2{
    		background-color: white;
    		border: 0px;
    	}
    	
    	#BtnReview{
    		background-color: white;
    		border: 0px;
    	}
    	
    	#BtnMod{
    		background-color: white;
    		border: 0px;
    	}
	</style>

</head>
<body>

<!-- start -->
<!-- NAV bar	 -->
	<%@include file="../../../common/xdmin/includeV1/loginNY.jsp"%>
	
	<!-- ?????? -->
	<div class="container" id="containerFont">
		<div style="margin-top: 3rem;"><h3><b><a type="button" class="nav-link" href="javascript:goForm('${list.seq }')" style="width: 100px;"><c:out value="${sessName}"/></a></b></h3></div>
		<div><a type="button" href="/member/mypageModForm" class="nav-link" style="width: 100px;"><h6><c:out value="${sessEmail}"/></h6></a></div>
	</div>
	<!-- ?????? -->
	<div class="container" id="containerFont2">
		<div class="row">
			<!-- ?????? -->
			<div class="col-4">
				<div style="margin-top: 3rem;"><h5><b>?????????</b></h5></div>
				<div class="shadow p-3 mb-5 rounded" style="margin-top: 1rem;" id="leveltap">
					<div class="row justify-content-between">
						<div class="col-5"><h5><b><a type=button class="nav-link text-white" href="/member/mypageGrade">Lv. Amateur</a></b></h5></div>
						<div class="col-4 text-end"><span><a type=button class="nav-link text-white" href="/member/mypageGrade">????????????</a></soan></div>
					</div>
					<hr class="hrStyle">
					<div><b>10,000P</b>&emsp;<span>?????? ????????? ?????? ??? &nbsp; Lv. Professtional</span></div>
				</div>
				<div style="margin-top: 3rem;"></div>
				<div><h5><b>?????????</b></h5></div>
				<div style="margin-top: 2rem;"><button class="btn btn-light" type="button" id="BtnOrder2">?????? ??????</button></div>
				<div style="margin-top: 1rem;"><button class="btn btn-light" type="button" id="BtnReview">??????</button></div>
				<div style="margin-top: 1rem;"><a type="button" href="/member/mypageModForm" id="BtnMod" class="btn btn-light">??? ?????? ??????</a></div>
				<div style="margin-top: 3rem;"></div>
			</div>


			<!-- ????????? -->
			<div class="col-8">
			  	<div style="margin-top: 3rem;"><h5><b>?????? ????????????</b></h5></div>
				  	<form  id="form" name="form" method="post">
					<input type="hidden" name="seq" value="${vo.seq}"> 
					<input type="hidden" name="mSeq" value="${sessSeq}"> 
					<input type="hidden" name="classProduct_seq" value="${item.classProduct_seq}"> 
						<div class="container" id="containerFont">
						<div class="row" style="margin-top: 3rem;"><h4><b>?????? ??????</b></h4></div>
						<div class="row" style="margin-top: 0.5rem;"><h5><b>[<c:out value="${item.category}"/>]</b></h5></div>
						<div class="row" style="margin-top: 0.5rem;"><span><c:out value="${item.title}"/></span></div>
						<div class="row" style="margin-top: 0.5rem;"><img src="${item.path}${item.uuidName}" style="width: 150px; height: 100px;"></div>
						<%-- <div class="row" style="margin-top: 0.5rem;"><a href="javascript:goProduct('${sessSeq }', '${item.classProduct_seq }')"><img src="${item.path}${item.uuidName}" style="width: 150px; height: 100px;"></a></div> --%>
						<hr class="hrstyle">
						<div class="row" style="margin-top: 2rem;"><h4><b>?????? ??????</b></h4></div>
						<div class="row" style="margin-top: 1rem;">
							<label class="form-label"><b>???????????? ???</b></label>
					   		<div class="input"><input type="text" class="form-control" value="<c:out value="${item.name}"/>" readonly></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<label class="form-label"><b>?????????</b></label>
					   		<div class="input"><input type="text" class="form-control" value="<c:out value="${item.id}"/>" readonly></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<label class="form-label"><b>????????? ??????</b></label>
					   		<div class="input"><input type="text" class="form-control" value="<c:out value="${item.phone}"/>" readonly></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<label class="form-label"><b>????????? ??????</b></label>
					   		<div class="input"><input type="text" class="form-control" value="<c:out value="${item.email}"/>" readonly></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<label class="form-label"><b>????????????</b></label>
					   		<div class="row input-group">
					   			<label class="form-label"><b><small>????????????</small></b></label>
						   		<div class="input col-8"><input type="text" class="form-control" value="<c:out value="${item.zipcode}"/>" readonly></div>
						   		<div class="input col-4">
				   				<button type="button" class="btn btn-outline-dark" style="height: 2.4rem;">???????????? ??????</button>
				   				<button class="btn btn-outline-dark" type="button" id="clear" style="height: 2.4rem;"><i class="fa-solid fa-rotate-left"></i></button>
			   				</div>
							</div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<label class="form-label"><b><small>??????</small></b></label>
							<div class="input"><input type="text" class="form-control" value="<c:out value="${item.address}"/>" readonly></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<label class="form-label"><b><small>????????????</small></b></label>
							<div class="input"><input type="text" class="form-control" value="<c:out value="${item.addressDetail}"/>" readonly></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<label class="form-label"><b><small>????????????</small></b></label>
							<div class="input"><input type="text" class="form-control" value="<c:out value="${item.addr3}"/>" readonly></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
				   			<div class="input">
							<label class="form-label"><b>?????? ?????? ??????</b></label>
					   			<select class="form-select" aria-label="Default select example" readonly>
					   			<option value="" <c:if test="${empty item.request}"> selected</c:if>>??????</option>
								  <option value="8" <c:if test="${item.request eq 8 }"> selected</c:if>>none</option>
								  <option value="9" <c:if test="${item.request eq 9 }"> selected</c:if>>??? ?????? ????????? ????????????</option>
								  <option value="10" <c:if test="${item.request eq 10 }"> selected</c:if>>?????? ??? ??????????????????</option>
							  	</select>
						  	</div>
						</div>
						<hr class="hrstyle">
						<div class="row" style="margin-top: 3rem;"><h4><b>??????</b></h4></div>
						<div class="row" style="margin-top: 1rem;">
							<label class="form-label"><b>??????</b></label>
					   		<div class="row">
						   		<div class="col-9">
						   			<input type="text" class="form-control" value="${item.couponDiscount}???" readonly>
						   		</div>
						   		<div class="col-3">
						   			<a type="button" href="#" role="button" class="btn btn-dark" style="width: 215px;">?????? ??????</a>
								</div>
							</div>
							<!-- <div style="margin-top: 0.5rem;"><span class="down">?????? ?????? <7??? ????????? ?????? ?????? > 4?????? ???????????? ????????? ??????</span></div> -->
						</div>
						<hr class="hrstyle">
						<div class="row" style="margin-top: 3rem;"><h4><b>?????? ??????</b></h4></div>
						<div class="row" style="margin-top: 1rem;">
							<div class="col-10"><span><b>??? ????????????</b></span></div>
							<div class="col-2 text-end"><span><b><fmt:formatNumber type="number" value="${item.price}" pattern="#,###"/>???</b></span></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<div class="col-10"><span><b>?????????</b></span></div>
							<div class="col-2 text-end"><span><b>??????</b></span></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<div class="col-10"><span><b>?????? ?????? ??????</b></span></div>
							<div class="col-2 text-end"><span> - <fmt:formatNumber type="number" value="${(item.priceDiscount)}" pattern="#,###"/>???</span></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<div class="col-10"><span><b>?????? ?????? ??????</b></span></div>
							<div class="col-2 text-end" id="DCcoupon"><span> - <fmt:formatNumber type="number" value="${item.couponDiscount}" pattern="#,###"/>???</span></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<div class="col-10 finalPrice" id="finalPrice"><h5><b>?????? ??????</b></h5></div>
							<div class="col-2 text-end finalPrice" id="finalPrice"><span><h5><b><fmt:formatNumber type="number" value="${(item.finalPrice)}" pattern="#,###"/>???</b></h5></span></div>
						</div>
						<div class="row" style="margin-top: 1rem;">
							<div class="col-2 finalPrice" id="finalPrice"><span><b>??? ?????? ??????</b></span></div>
							<div class="col-8" id="mip"><small>????????? 5?????? ??????</small></div>
							<div class="col-2 text-end finalPrice" id="finalPrice"><span><b><fmt:formatNumber type="number" value="${((item.finalPrice)/5)}" pattern="#,###"/>???</b></span></div>
						</div>
						<hr class="hrstyle">
						<div class="row" style="margin-top: 3rem;"><h4><b>?????? ??????</b></h4></div>
						<div class="row" style="margin-top: 1rem; margin-left: 3rem;">
							<div class="col-2 form-check">
							  <input class="form-check-input" type="radio" value="6" name="pay" <c:if test="${item.pay eq 6 }"> checked</c:if>>
							  <label class="form-check-label" for="pay1">???????????????</label>
							</div>
							<div class="col-2 form-check">
							  <input class="form-check-input" type="radio" value="7" name="pay" <c:if test="${item.pay eq 7 }"> checked</c:if>>
							  <label class="form-check-label" for="pay2">????????? ??????</label>
							</div>
						</div>
						<div class="row justify-content-center">
							<div class="col-6 text-center"><button type="button" class="btn btn-danger" id="btnMypage">?????????????????? ????????????</button></div>
						</div>	
					</div>
				</form>
			</div>
		</div>
		</div>	
	</div>
	</div>
	
	
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
	<br>
	<br>
	</form>	
<!-- end	 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/1d7c148109.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript">

		var goUrlForm = "/member/mypageModForm";
		var goUrlMypage = "/member/mypage"
		var goUrlView = "/order/mypageOrderView"
		var goUrlProduct="/product/productView"
		var goUrlList = "/order/mypageOrderList";
		var goUrlReview = "/review/myreview";
	
		var form = $("form[name=form]");
		var seq = $("input:hidden[name=seq]");
		
		goForm = function(keyValue) {
	    	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
	    	seq.val(keyValue);
			form.attr("action", goUrlForm).submit();
		}
		
		
		goView = function(keyValue){
			$("input:hidden[name=mSeq]").val(keyValue);
			form.attr("action", goUrlView).submit();
		}
		
		goProduct = function(keyValue1, keyValue2) {
			$("input:hidden[name=mSeq]").val(keyValue1);
			$("input:hidden[name=classProduct_seq]").val(keyValue2);
			form.attr("action", goUrlProduct).submit();
		}
		
		$("#BtnOrder2").on("click", function() {
			form.attr("action", goUrlList).submit();
		})
		
		$("#BtnReview").on("click", function() {
			form.attr("action", goUrlReview).submit();
		})
		
	</script>
	<script type="text/javascript">
		$("#btnMypage").on("click", function(){
			form.attr("action", goUrlMypage).submit();
		});

		
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