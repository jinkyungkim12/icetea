<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CodeServiceImpl" class="com.class101project.modules.code.CodeServiceImpl"/>
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
		.container{
			font-family: 'Happiness-Sans-Regular';
		}
		.hrstyle{
			border: 0;
		    height: 17px;
		    background: #616060;
		    margin-top: 2rem;
		}
		.down{
			color: gray;
		}
		#zipcode{
			width: 215px;
		}
		#finalPrice{
			color: red;
		}
		#mip{
			color: gray;
		}
		#DCcoupon{
			color: red;
		}
		#btnMypage{
			width: 260px;
			height: 40px;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			background-color: #FF5600;
			margin-top: 2rem;
			border: none;
		}
		#btnShopping{
			width: 260px;
			height: 40px;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			margin-top: 2rem;
			border: none;
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
		.nav-link{
			color: black;
		}
		.avatar-rounded-circle{
			width: 50px;
			height: 50px;
			border-radius: 100%;
		}
		.titleOrder{
			height: 45px;
			padding-top: 10px;
			padding-bottom: 10px;
			border-bottom-width: 5px;
			background: black; 
			color: white; 
		}
	</style>
</head>
<body>

<!-- start -->
	
	<!-- NAV bar	 -->
	<%@include file="../../../common/xdmin/includeV1/loginNY.jsp"%>
	
	<!-- content -->
	<form  id="form" name="form" method="post">
	<input type="hidden" name="seq" value="${vo.seq}"> 
	<input type="hidden" name="mSeq" value="${sessSeq}"> 
	<div class="container" style="margin-top: 3rem;">
		<div class="row justify-content-center">
			<div class="card" style="padding-right: 0px; padding-left: 0px;">
			  <div class="card-header text-center" style="width: 100%;">
			  	<h5><b>?????? ??????</b></h5>
			  </div>
			  <div class="card-body">
			    <h3 class="card-title text-center" style="margin-top: 3rem;"><b>????????? ????????? ??????????????? ?????????????????????.</b></h3>
			    <p class="text-center" style="margin-top: 1rem;">????????? ????????? ?????? ?????? ????????? <b>??????????????? ?????? ??????</b>?????? ???????????? ??? ????????????.</p>
			    <div class="container" style="width: 80%; text-align: center;">
			    <div class="row">
			    	<div class="col-12 titleOrder"><b>????????????</b></div>
			    	<div class="col-4" style="margin-top: 0.5rem;"><b>?????????</b></div>
			    	<div class="col-8" style="padding-top: 9px;"><c:out value="${sessName}"/></div>
			    	<hr style="margin-top: 0.5rem;">
			    	<div class="col-4"><b>????????????</b></div>
			    	<div class="col-8"><c:out value="${itemC.orderDate}"/></div>
			    	<hr style="margin-top: 0.8rem;">
			    	<div class="col-4"><b>????????????</b></div>
			    	<div class="col-8"><b>[<c:out value="${itemC.category}"/>]</b>&nbsp;<c:out value="${itemC.title}"/></div>
			    	<hr style="margin-top: 0.8rem;">
			    	<div class="col-4"><b>????????????</b></div>
			    	<div class="col-8" style="color: red"><b><fmt:formatNumber type="number" value="${(itemC.finalPrice)/5}" pattern="#,###"/>???/&nbsp;???</b></div>
			    </div>
			    </div>
			    <div class="row justify-content-center" style="margin-top: 2rem;">
			    	<div class="col-4 text-center"><button type="button" role="button" class="btn btn-danger" id="btnMypage">?????? ?????? ????????????</button></div>
					<div class="col-4 text-center"><button type="button" role="button" class="btn btn-dark" id="btnShopping">?????? ?????? ??????</button></div>
			  	</div>
			  	<br>
			  </div>
			</div>
		</div>
	</div>	
	</form>
	
	<!-- ??? -->
	<div class="container">
		<div class="row" style="margin-top: 7rem;">
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
	
		

	<!-- end	 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/1d7c148109.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=59b27a41bdecd470671d4f9be366d1b3&libraries=services"></script>
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
	<script type="text/javascript">
	
		var goUrlList = "/home";
		var goUrlMypage = "/member/mypage"
		var goUrlView = "/order/orderComplete"
		
		var seq = $("input:hidden[name=seq]");			/* #-> */
		
		var form = $("form[name=form]");
		
		$("#btnMypage").on("click", function(){
			form.attr("action", goUrlMypage).submit();
		});
		
		$("#btnShopping").on("click", function(){
			form.attr("action", goUrlList).submit();
		});
		
		goView = function(keyValue1, keyValue2){
			$("input:hidden[name=mSeq]").val(keyValue1);
			$("input:hidden[name=seq]").val(keyValue2);
			form.attr("action", goUrlView).submit();
		}
		
	</script>
	<script>
		$("#clear").on("click", function() {
			
			alert($("input[name=seq]").val());
			alert($("input[name=mSeq]").val());
			
			
			return false;
			$("#zipcode").val('');
			$("#address").val('');
			$("#addressDetail").val('');
			$("#addr3").val('');
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
	                
	            }
	        
	        }).open();
	    }
	</script>
</body>
</html>