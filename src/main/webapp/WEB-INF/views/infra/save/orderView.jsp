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
		#containerFont{
			font-family: 'Happiness-Sans-Regular';
			width: 900px;
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
		#btnComplete{
			width: 500px;
			height: 40px;
			font-family: 'Happiness-Sans-Regular';
			font-style: normal;
			background-color: #FF5600;
			margin-top: 2rem;
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
	</style>
</head>
<body>

<!-- start -->
	
	<!-- NAV bar	 -->
	<div class="container" style="margin-top: 3rem;"> 
		<div class="row">
			<div class="col-8">
				<nav class="navbar navbar-expand-lg bg-white">
				  <div class="container-fluid">
				    <a class="navbar-brand" href="/home">
      					<img src="../../resources/images/logo.png" alt="">
				    </a>
				    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				      <span class="navbar-toggler-icon"></span>
				    </button>
				    <div class="collapse navbar-collapse" id="navbarSupportedContent">
				      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
				        <li class="nav-item" id="">
				          <a class="nav-link" href="#" id="ListClass"><b>?????????</b></a>
				        </li>
				        <li class="nav-item">
				          <a class="nav-link" href="#" id="ListStore"><b>?????????</b></a>
				        </li>
				      </ul>
				    </div>
				    <div class="row">
						<select id="shOption" name="shOption" class="form-select" aria-label="Default select example" style="width: 150px;">
						  <option value="" <c:if test="${empty vo.shOption}">selected </c:if>>????????????</option>
						  <option value="1" <c:if test="${vo.shOption eq 1}">selected </c:if>>????????????</option>
						  <option value="2" <c:if test="${vo.shOption eq 2}">selected </c:if>>????????????</option>
						</select>
				        <input class="form-control me-2" type="search" placeholder="???????????? ???????????????." aria-label="Search" style="width: 300px;">
				        <button class="btn btn-outline-dark" id="btnSearch" style="width: 100px;">Search</button>
			        </div>
			    </div>
			 </nav>  
		</div>
			
	 	
			
			<!-- ????????? ???	 -->
			<c:if test="${sessSeq eq null}">
				<div class="col">
					<ul class="nav justify-content-end" id="leftList">
						<li class="nav-item"><a class="nav-link" aria-current="page"
							href="#">??????????????? ??????</a></li>
						<li class="nav-item"><a class="nav-link" href="#">????????????</a></li>
						<li class="nav-item"><a class="nav-link" href="/member/memberLogin">?????????</a></li>
					</ul>
				</div>
			</c:if>
			
			<!-- ????????? ??? -->
			<c:if test="${sessSeq ne null}">
				<div class="col">
					<div class="row text-end">
						<div class="dropdown">
							<a href="#" id="sidebarAvatar" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<img alt="..." src="
								<c:choose>
									<c:when test = "${sessUserImage ne null}">${sessUserImage}</c:when>
									<c:otherwise>../resources/images/profileimg.png</c:otherwise>
								</c:choose>
								" class="avatar avatar-rounded-circle">  
							</a>
							<div class="dropdown-menu dropdown-menu-end" aria-labelledby="sidebarAvatar">
								<div class="container">
									<div class="row">
										<div class="col-4 text-center">
											<img alt="..." src="
											<c:choose>
												<c:when test = "${sessUserImage ne null}">${sessUserImage}</c:when>
												<c:otherwise>../resources/images/profileimg.png</c:otherwise>
											</c:choose>
											" class="avatar avatar-rounded-circle"> 
										</div>
										<div class="col-8 text-center" style="margin-top: 0.9rem;">
											<h5><b><c:out value="${sessName}"/></b></h5>
										</div>
									</div>
									<a href="/member/mypage" class="dropdown-item text-center" style="color: #FF5600">??????????????? <i class="fa-solid fa-angle-right"></i></a> 
									<hr class="dropdown-divider">
									<div class="row justify-content-center"><button type="button" class="btn btn-light rounded rounded-pill" id="logoutButton">Logout</button></div>
								</div>
							</div>
						</div>
					</div>	
				</div>
			</c:if>
			
		</div>
	</div>
	
	<!-- content -->
	<!-- <form name="form" method="post" action="/member/memberInst"> -->
	<form  id="form" name="form" method="post" >
	<input type="hidden" name="seq" value="${vo.seq}"/>  
	<input type="hidden" name="mSeq" value="${sessSeq}"/>  
	<div class="container" id="containerFont">
		<div class="row" style="margin-top: 5rem;"><h2><b>????????????</b></h2></div>
		<hr class="hrstyle">
		<div class="row" style="margin-top: 3rem;"><h4><b>?????? ??????</b></h4></div>
		<div class="row" style="margin-top: 0.5rem;"><h5><b>[<c:out value="${itemImg.category}"/>]</b></h5></div>
		<div class="row" style="margin-top: 0.5rem;"><span><c:out value="${itemImg.title}"/></span></div>
		<div class="row" style="margin-top: 0.5rem; width: 150px; height: 100px;"><img src="${itemImg.path}${itemImg.uuidName}"></div>
		<br>	
		<hr class="hrstyle">
		<div class="row" style="margin-top: 2rem;"><h4><b>?????? ??????</b></h4></div>
		<div class="row" style="margin-top: 1rem;">
			<label class="form-label"><b>???????????? ???</b></label>
	   		<div class="input"><input type="text" class="form-control" value="<c:out value="${item.name}"/>" id="name" readonly></div>
	   		<div style="margin-top: 0.5rem;"><span class="down">????????? ?????????  ????????? ?????? ????????? ????????? ?????????.</span></div>
		</div>
		<div class="row" style="margin-top: 1rem;">
			<label class="form-label"><b>?????????</b></label>
	   		<div class="input"><input type="text" class="form-control" value="<c:out value="${item.id}"/>" id="id" readonly></div>
		</div>
		<div class="row" style="margin-top: 1rem;">
			<label class="form-label"><b>????????? ??????</b></label>
	   		<div class="input"><input type="text" class="form-control" value="<c:out value="${item.phone}"/>" id="phone" readonly></div>
		</div>
		<div class="row" style="margin-top: 1rem;">
			<label class="form-label"><b>????????? ??????</b></label>
	   		<div class="input"><input type="text" class="form-control" value="<c:out value="${item.email}"/>" id="email" readonly></div>
		</div>
		<div class="row" style="margin-top: 1rem;">
			<label class="form-label"><b>????????????</b></label>
	   		<div class="row input-group">
		   		<input type="text" class="form-control" id="zipcode" value="<c:out value="${item.zipcode}"/>" placeholder="????????????" style="width: 100%;" readonly>
			</div>
		</div>
		<div class="row" style="margin-top: 1rem;">
			<div class="input"><input type="text" class="form-control" id="address" value="<c:out value="${item.address}"/>" placeholder="??????" readonly></div>
		</div>
		<div class="row" style="margin-top: 1rem;">
			<div class="input"><input type="text" class="form-control" id="addressDetail" value="<c:out value="${item.addressDetail}"/>" id="addressDetail" placeholder="?????? ??????" readonly></div>
		</div>
		<div class="row" style="margin-top: 1rem;">
			<div class="input"><input type="text" class="form-control" id="addr3" value="<c:out value="${item.addr3}"/>" placeholder="????????????" readonly></div>
		</div>
		<div class="row" style="margin-top: 1rem;">
			<label class="form-label"><b>?????? ?????? ??????</b></label>
   			<select class="form-select" aria-label="Default select example" readonly>
   			<option value="" <c:if test="${empty item.request}"> selected</c:if>>??????</option>
			  <option value="8" <c:if test="${item.request eq 8 }"> selected</c:if>>none</option>
			  <option value="9" <c:if test="${item.request eq 9 }"> selected</c:if>>??? ?????? ????????? ????????????</option>
			  <option value="10" <c:if test="${item.request eq 10 }"> selected</c:if>>?????? ??? ??????????????????</option>
		  	</select>
		</div>
		<hr class="hrstyle">
		<div class="row" style="margin-top: 3rem;"><h4><b>??????/??????</b></h4></div>
		<div class="row" style="margin-top: 1rem;">
			<label class="form-label"><b>??????</b></label>
	   		<div class="row">
		   		<div class="col-9">
		   			<input type="text" class="form-control" value="${item.coupon}???" readonly>
		   		</div>
		   		<div class="col-3">
		   			<a type="button" href="#" role="button" class="btn btn-dark" style="width: 215px;">?????? ??????</a>
				</div>
			</div>
			<div style="margin-top: 0.5rem;"><span class="down">?????? ?????? <7??? ????????? ?????? ?????? > 4?????? ???????????? ????????? ??????</span></div>
		</div>
		<hr class="hrstyle">
		<div class="row" style="margin-top: 3rem;"><h4><b>?????? ??????</b></h4></div>
		<div class="row" style="margin-top: 1rem;">
			<div class="col-10"><span><b>??? ????????????</b></span></div>
			<div class="col-2 text-end"><span><b><fmt:formatNumber type="number" value="${itemImg.price}" pattern="#,###"/>???</b></span></div>
		</div>
		<div class="row" style="margin-top: 1rem;">
			<div class="col-10"><span><b>?????????</b></span></div>
			<div class="col-2 text-end"><span><b>??????</b></span></div>
		</div>
		<div class="row" style="margin-top: 1rem;">
			<div class="col-10"><span><b>?????? ?????? ??????</b></span></div>
			<div class="col-2 text-end"><span> - <fmt:formatNumber type="number" value="${(itemImg.price)*((itemImg.discountRate)*0.01)}" pattern="#,###"/>???</span></div>
		</div>
		<div class="row" style="margin-top: 1rem;">
			<div class="col-10"><span><b>?????? ?????? ??????</b></span></div>
			<div class="col-2 text-end" id="DCcoupon"><span> - <fmt:formatNumber type="number" value="${item.coupon}" pattern="#,###"/>???</span></div>
		</div>
		<div class="row" style="margin-top: 1rem;">
			<div class="col-10" id="finalPrice"><h5><b>?????? ??????</b></h5></div>
			<div class="col-2 text-end" id="finalPrice"><span><h5><b><fmt:formatNumber type="number" value="${(itemImg.price)-((itemImg.price)*((itemImg.discountRate)*0.01))-(item.coupon)}" pattern="#,###"/>???</b></h5></span></div>
		</div>
		<div class="row" style="margin-top: 1rem;">
			<div class="col-2" id="finalPrice"><span><b>??? ?????? ??????</b></span></div>
			<div class="col-8" id="mip"><small>????????? 5?????? ??????</small></div>
			<div class="col-2 text-end" id="finalPrice"><span><b><fmt:formatNumber type="number" value="${((itemImg.price)-((itemImg.price)*((itemImg.discountRate)*0.01))-(item.coupon))/5}" pattern="#,###"/>???</b></span></div>
		</div>
		<hr class="hrstyle">
		<div class="row" style="margin-top: 3rem;"><h4><b>?????? ??????</b></h4></div>
		<div class="row" style="margin-top: 1rem; margin-left: 3rem;">
			<div class="col-2 form-check" name="pay">
			  <input class="form-check-input" type="radio" id="pay1" value="1" <c:if test="${itemImg.pay eq 6 }"> checked</c:if>>
			  <label class="form-check-label" for="pay1">???????????????</label>
			</div>
			<div class="col-2 form-check" name="pay">
			  <input class="form-check-input" type="radio" id="pay2" value="1" <c:if test="${itemImg.pay eq 7 }"> checked</c:if>>
			  <label class="form-check-label" for="pay2">????????? ??????</label>
			</div>
		</div>
		<div class="row justify-content-center">
			<div class="col-6 text-center"><button type="button" role="button" class="btn btn-danger" id="btnComplete">?????? ??????</button></div>
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
		
		var seq = $("input:hidden[name=seq]");			/* #-> */
		
		var form = $("form[name=form]");
		
		$("#btnComplete").on("click", function(){
			form.attr("action", goUrlList).submit();
		});
		
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