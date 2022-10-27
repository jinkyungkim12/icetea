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
		.fontbold{
			font-family: 'Happiness-Sans-Bold';
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
		a {
    		color: #141619;
    	}
	</style>

</head>
<body>

<!-- start -->
	
<!-- NAV bar	 -->
	<%@include file="../../../common/xdmin/includeV1/loginNY.jsp"%>
	
	<!-- 상단 -->
	<div class="container" id="containerFont">
		<div style="margin-top: 3rem;"><h3><b><a type="button" href="/member/mypageModForm" class="nav-link">김진경</a></b></h3></div>
		<div><a type="button" href="/member/mypageModForm" class="nav-link"><h6>example@naver.com</h6></a></div>
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
				<div style="margin-top: 2rem;"><button class="btn btn-light" type="button" id="BtnOrder2">주문 내역</button></div>
				<div style="margin-top: 1rem;"><button class="btn btn-light" type="button" id="BtnReview">후기</button></div>
				<div style="margin-top: 3rem;"></div>
			</div>


			<!-- 오른쪽 -->
			<div class="col-8">
				<div class="container" style="background-color: #00B031; width: 100%; height: 730px;">
					<div class="row justify-content-center">
						<div style="margin-top: 3rem; width: 90%;"><img src="https://class101.net/images/membership/grade_symbol_0.svg" width="70" height="70" style="margin-top: 2rem;"></div>
						<div class="row text-white" style="margin-top: 1rem; width: 90%;"><h1><b>Amatuer</b></h1></div>
						<div class="row text-white" style="width: 90%;">
							<h5>아마추어는 사랑을 뜻하는 아모르에서 나왔어요.<br>"사랑하는 일을 하는 사람" 이란 뜻이죠</h5>
						</div>
						<div class="row justify-content-center" style="background-color: rgb(0, 158, 44); width: 90%; height: 120px; margin-top: 5rem;">
							<div class="row justify-content-between"  style="margin-top: 1rem;">
								<div class="col-5 text-white text-start"><h5><b>내 포인트</b></h5></div>
								<div class="col-5 text-white text-end"><h5>이번달 누적 포인트</h5></div>
								<div class="col-12 text-white text-end"><h5>0P</h5></div>
								<div class="col-12 text-end" style="color: #BDFAAA "><h6>다음 달 예상 Lv. Amateur</h6></div>
							</div>
						</div>
						<div class="row justify-content-center" style="background-color: rgb(0, 158, 44); width: 90%; height: 120px; margin-top: 0.5rem;">
							<div class="row justify-content-between"  style="margin-top: 1rem;">
								<div class="col-5 text-white text-start"><h5><b>혜택</b></h5></div>
								<div class="col-5 text-white text-end"><h5>크리에이티브, 커리어, 머니</h5></div>
								<div class="col-12 text-white text-end"><h5>총 6만원 쿠폰팩</h5></div>
								<div class="col-12 text-end" style="color: #BDFAAA "><h6>크리에이티브, 커리어, 머니 각 2만원 쿠폰</h6></div>
							</div>
						</div>
						<div class="row justify-content-center" style="margin-top: 3rem;">
							<!-- Modal button -->
							<button type="button" class="btn btn-dark" data-bs-toggle="modal" data-bs-target="#exampleModal" style="width: 90%;">
							  6만원 쿠폰팩 받기
							</button>
							<!-- Modal -->
							<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
							  <div class="modal-dialog">
							    <div class="modal-content">
							      <div class="modal-header">
							        <h5 class="modal-title" id="exampleModalLabel">Class 101</h5>
							        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							      </div>
							      <div class="modal-body">
							        6만원 쿠폰팩이 발급되었습니다.<br>발급내용은 마이페이지 "내 쿠폰"에서 확인하실 수 있습니다.
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">확인</button>
							      </div>
							    </div>
							  </div>
							</div>
						</div>
					</div>
				</div>
				<div class="container" style="background-color: white; width: 100%; height: 1050px;">
					<div class="row justify-content-center">
						<div class="row" style="margin-top: 3rem; width: 90%;"><h4 class="fontbold"><b>등급별 혜택</b></h4></div>
						<div class="row justify-content-center" style="background-color: rgb(248, 248, 248); width: 90%; height: 120px;margin-top: 1rem;">
							<div class="row"  style="margin-top: 1rem;">
								<div><h5 class="fontbold"><b>Amateur</b></h5>
									 <small>지난 달 누적 포인트 10,000P 미만</small>
									 <br><span><i class="fa-solid fa-circle-check"></i> 크리에이티브, 커리어, 머니 총 6만원 쿠폰팩</span>
								</div>
							</div>
						</div>
						<div class="row justify-content-center" style="background-color: rgb(248, 248, 248); width: 90%; height: 140px;margin-top: 1rem;">
							<div class="row"  style="margin-top: 1rem;">
								<div><h5 class="fontbold"><b>Professional</b></h5>
									 <small>지난 달 누적 포인트 10,000P - 30,000P</small>
									 <br><span><i class="fa-solid fa-circle-check"></i> 크리에이티브, 커리어, 머니 총 9만원 쿠폰팩 <br><i class="fa-solid fa-circle-check"></i> 신규 구매시 보유한 수강권 1개월 연장 </span>
								</div>
							</div>
						</div>
						<div class="row justify-content-center" style="background-color: rgb(248, 248, 248); width: 90%; height: 140px;margin-top: 1rem;">
							<div class="row"  style="margin-top: 1rem;">
								<div><h5 class="fontbold"><b>Master</b></h5>
									 <small>지난 달 누적 포인트 30,000P 미만</small>
									 <br><span><i class="fa-solid fa-circle-check"></i> 크리에이티브, 커리어, 머니 총 15만원 쿠폰팩 <br><i class="fa-solid fa-circle-check"></i> 신규 구매시 보유한 수강권 2개월 연장 </span>
								</div>
							</div>
						</div>
						<div class="row" style="margin-top: 3rem; width: 90%;"><h4 class="fontbold">기준 안내</h4></div>
						<div class="row" style="margin-top: 1rem; width: 90%;">
							<span>ㆍ 매월 1일 지난 달 포인트 적립 총합 기준으로 새로운 회원 등급이 부여됩니다.
								  <br>ㆍ 회원 등급 제공 혜택은 내부 사정에 의하여 향후 변경 될 수 있습니다.
								  <br>ㆍ 누적 포인트 양은 지난 달 적립된 전체 포인트 양으로, 포인트 적립 후 포인트를 이용해도 회원 등급 산정 기준
								  <br>&emsp;이 되는 누적 적립 포인트가 줄어들지는 않습니다.
							</span>
						</div>
						<div class="row" style="margin-top: 3rem; width: 90%;"><h4 class="fontbold">유의 사항</h4></div>
						<div class="row" style="margin-top: 1rem; width: 90%;">
							<span>ㆍ 쿠폰팩은 마이페이지 > 회원등급 혜택보기 버튼 클릭 > 쿠폰팩 다운로드 클릭 후 발급 가능합니다.
								  <br>ㆍ 쿠폰은 타 쿠폰과 중복 사용이 불가능 합니다.
								  <br>ㆍ 유효기간이 만료된 쿠폰은 재발급이 불가능 합니다.
								  <br>ㆍ 쿠폰별로 적용가능한 상품이 상이 할 수 있습니다.
								  <br>ㆍ 회원등급 업데이트는 매월 1일 갱신됩니다.
								  <br>ㆍ 신규 구매시 보유 수강권 연장 혜택은 1만 원 이상의 클래스를 신규 구매할 때에만 적용됩니다.
								  <br>ㆍ 보유 수강권에는 수강 가능한 기존 수강권과 새로 구매하는 수강권 모두가 해당됩니다. 
								  <br>&emsp;(기간이 만료된 수강권은 해당하지 않습니다.)
								  <br>ㆍ 수강권당 최대 연장 한도는 1년 입니다. (초과 연장은 반영되지 않습니다.)
							</span>
						</div>
					</div>
				</div>
				
			</div>	
		</div>
	</div>
	
	
	<!-- 끝 -->
	<div class="container">
		<div class="row" style="margin-top: 5rem;">
			<div class="col-4">
				<div><img src="../../resources/images/classLogo.png" alt="" width="300" height="121"></div>
				<div><span id="endContent1">클래스 101은 모든 사람이 사랑하는 일을 하며<br>살 수 있도록 세상을 바꾸고자 합니다.</span></div>
				<br>
				<br>
				<div><span id="endContent1"><small>KR</small>&nbsp;한국어</span></div>
			</div>
			<div class="col-2">
				<div class="endTitle">클래스 101</div>
				<div class="endContent2">홈</div>
				<div class="endContent2">기업교육</div>
				<div class="endContent2">채용</div>
				<div class="endContent2">도움말</div>
			</div>
			<div class="col-2">
				<div class="endTitle">크리에이터</div>
				<div class="endContent2">크리에이터 센터</div>
				<div class="endContent2">정규 클래스 지원하기</div>
				<div class="endContent2">도움말</div>
			</div>
			<div class="col-4">
				<div class="endTitle">고객센터</div>
				<div class="text-center"><a type="button" role="button" class="btn btn-light" id="endButton">문의하기</a></div>
				<div class="endContent2 text-center">오전 10시 ~ 오후 6시 (주말, 공휴일 제외)</div> 
			</div>
		</div>
	</div>
	<br>
	<br>
		
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
	<script>
		const myModal = document.getElementById('myModal')
		const myInput = document.getElementById('myInput')
	
		myModal.addEventListener('shown.bs.modal', () => {
		  myInput.focus()
		})
	</script>
</body>
</html>