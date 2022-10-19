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
	</style>

</head>
<body>

<!-- start -->
<!-- NAV bar	 -->
	<!-- loginNY s -->
	<%@include file="../../../common/xdmin/includeV1/loginNY.jsp"%>
	<!-- loginNY e -->
	
	<!-- 상단 -->
	<div class="container" id="containerFont">
		<div style="margin-top: 3rem;"><h3><b><a type="button" class="nav-link" href="javascript:goForm('${list.seq }')"><c:out value="${sessName}"/></a></b></h3></div>
		<div><a type="button" href="/member/mypageModForm" class="nav-link"><h6><c:out value="${sessEmail}"/></h6></a></div>
	</div>
	<!-- 중간 -->
	<div class="container" id="containerFont2">
		<div class="row">
			<!-- 왼쪽 -->
			<div class="col-4">
				<div style="margin-top: 3rem;"><h5><b>내등급</b></h5></div>
				<div class="shadow p-3 mb-5 rounded" style="margin-top: 1rem;" id="leveltap">
					<div class="row justify-content-between">
						<div class="col-5"><h5><b><a type=button class="nav-link text-white" href="/member/mypageGrade">Lv. Amateur</a></b></h5></div>
						<div class="col-4 text-end"><span><a type=button class="nav-link text-white" href="/member/mypageGrade">혜택보기</a></soan></div>
					</div>
					<hr class="hrStyle">
					<div><b>10,000P</b>&emsp;<span>추가 적립시 다음 달 &nbsp; Lv. Professtional</span></div>
				</div>
				<div style="margin-top: 3rem;"></div>
				<div><h5><b>내정보</b></h5></div>
				<div style="margin-top: 2rem;">내 캐시</div>
				<div style="margin-top: 1rem;">내 포인트</div>
				<div style="margin-top: 1rem;">내 쿠폰</div>
				<div style="margin-top: 1rem;">주문 내역</div>
				<div style="margin-top: 1rem;">후기</div>
				<div style="margin-top: 3rem;"></div>
				<div><h5><b>맴버쉽</b></h5></div>
				<div style="margin-top: 2rem;">101 Prime</div>
				<div style="margin-top: 1rem;">Money+</div>
				<div style="margin-top: 3rem;"></div>
				<div><h5><b>메뉴</b></h5></div>
				<div style="margin-top: 2rem;">클래스 101앱 설치하기</div>
				<div style="margin-top: 1rem;">크리에이터 지원하기</div>
			</div>


			<!-- 오른쪽 -->
			<div class="col-8">
				<form  id="form" name="form" method="post" >
				<input type="hidden" name="seq" value="${vo.seq}"/>  
				<input type="hidden" name="mSeq" value="${sessSeq}"/>
				  	<div style="margin-top: 3rem;"><h5><b>주문 내역보기</b></h5></div>
					<div class="row" style="margin-top: 0.5rem;"><h5><b>[<c:out value="${itemImg.category}"/>]</b></h5></div>
					<div class="row" style="margin-top: 0.5rem;"><span><c:out value="${itemImg.title}"/></span></div>
					<div class="row" style="margin-top: 0.5rem; width: 150px; height: 100px;"><img src="${itemImg.path}${itemImg.uuidName}"></div>
				<br>
				</form>  
			</div>
		</div>
		</div>	
	</div>
	</div>
	
	
	<!-- 끝 -->
	<!-- loginNY s -->
	<%@include file="../../../common/xdmin/includeV1/footer.jsp"%>
	<!-- loginNY e -->
	</form>	
<!-- end	 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/1d7c148109.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script type="text/javascript">
		
		var goUrlForm = "/member/mypageModForm";
	
		var form = $("form[name=form]");
		var seq = $("input:hidden[name=seq]");
		
		goForm = function(keyValue) {
	    	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
	    	seq.val(keyValue);
			form.attr("action", goUrlForm).submit();
		}
		
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