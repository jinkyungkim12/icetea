<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

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
		#BtnOrder{
			margin-top: 3rem;
			background: #E6E6E6;
			width: 500px;
		}
		a {
    		color: #141619;
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
<form  id="form" name="form" method="post" >
<!-- *Vo.jsp s -->
<%@include file="memberVo.jsp"%>		<!-- #-> -->
<!-- *Vo.jsp e -->
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
			  <div class="tab-pane fade show active" id="home-tab-pane" role="tabpanel" aria-labelledby="home-tab" tabindex="0">
			  	<div style="margin-top: 3rem;"><h5><b>??? ????????? ??????</b></h5></div>
				<div class="row">
					<div class="col-4">
						<img src="https://cdn.class101.net/images/dfd02760-c3e2-4ea7-8eb1-a93cf10fa746/375xauto.webp" width="260" height="200">
					</div>
					<div class="col-4">
						<img src="https://cdn.class101.net/images/cb2119ec-b977-49e3-a1a4-b674081ed809/750xauto.webp" width="260" height="200">
					</div>
					<div class="col-4">
						<img src="../../resources/images/mypage3.png" width="260" height="200">
					</div>
					<div class="col-4" style="margin-top: 1rem;">
						<span><b>????????????????????? ????????? ?????? ????????? ??????<br>??????. ??????????????? ????????? ?????????</b></span>
					</div>
					<div class="col-4" style="margin-top: 1rem;">
						<span><b>?????? ???????????? ?????? ????????? ?????? ???, ??????<br>??? ???????????????</b></span>
					</div>
					<div class="col-4" style="margin-top: 1rem;">
						<span><b>?????? ???????????? ????????? ?????? ????????? ??? ???<br>???!???????????? ???????????? ?????? ???????????? ?????????</b></span>
					</div>
					<div class="col-4" style="margin-top: 0.5rem;">
						<div class="row">
							<div class="col-4"><span class="progressRate"><small>50% ?????????</small></span></div>
							<div class="col-8 progress" style="margin-top: 0.7rem; width: 170px; height: 3px; padding-left: 0px; padding-right: 0px;">
							  <div class="progress-bar bg-danger" role="progressbar" aria-label="Example 1px high" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
							</div>
						</div>
					</div>
					<div class="col-4" style="margin-top: 0.5rem;">
						<div class="row">
							<div class="col-4"><span class="progressRate"><small>75% ?????????</small></span></div>
							<div class="col-8 progress" style="margin-top: 0.7rem; width: 170px; height: 3px; padding-left: 0px; padding-right: 0px;">
							  <div class="progress-bar bg-danger" role="progressbar" aria-label="Example 1px high" style="width: 75%;" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
							</div>
						</div>
					</div>
					<div class="col-4" style="margin-top: 0.5rem;">
						<div class="row">
							<div class="col-4"><span class="progressRate"><small>90% ?????????</small></span></div>
							<div class="col-8 progress" style="margin-top: 0.7rem; width: 170px; height: 3px; padding-left: 0px; padding-right: 0px;">
							  <div class="progress-bar bg-danger" role="progressbar" aria-label="Example 1px high" style="width: 90%;" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
							</div>
						</div>
					</div>
					<div class="col-4"><span style="color: gray; margin-top: 0.5rem;">???????????? 20??? ??????</span></div>
					<div class="col-4"><span style="color: gray; margin-top: 0.5rem;">???????????? 50??? ??????</span></div>
					<div class="col-4"><span style="color: gray; margin-top: 0.5rem;">???????????? 10??? ??????</span></div>
				</div>
				<div class="row justify-content-center">
					<div class="col-6 text-center">
						<butto type="button" id="BtnOrder" class="btn btn-light">
							<b>???????????? ????????????</b>
						</button>
					</div>
				</div>
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
	<script type="text/javascript">
		
		var goUrlForm = "/member/mypageModForm";
		var goUrlList = "/order/mypageOrderList";
		var goUrlReview = "/review/myreview";
	
		var form = $("form[name=form]");
		var seq = $("input[name=seq]").val();
		var mSeq = $("input[name=mSeq]").val();
		
	/* 	alert(seq);
		alert(mSeq); */
		
		goForm = function(keyValue) {
	    	seq.val(keyValue);
			form.attr("action", goUrlForm).submit();
		}
		
		$("#BtnOrder").on("click", function() {
			form.attr("action", goUrlList).submit();
		})
		
		$("#BtnOrder2").on("click", function() {
			form.attr("action", goUrlList).submit();
		})
		
		$("#BtnReview").on("click", function() {
			form.attr("action", goUrlReview).submit();
		})
		
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