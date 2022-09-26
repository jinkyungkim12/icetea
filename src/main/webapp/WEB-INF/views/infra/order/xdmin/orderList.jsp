<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>
<html>
<head>
	<title>order List</title>
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
		.container-fluid{
			font-family: 'Happiness-Sans-Regular';	
		}
		@font-face {
		    font-family: 'Happiness-Sans-Regular';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2205@1.0/Happiness-Sans-Regular.woff2') format('woff2');
		    font-weight: 400;
		    font-style: normal;
		}
		.bgbg{
			background-size: cover;
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
		.check {
		  accent-color: #F7670E;
		}
		.pagination{
		    --bs-pagination-focus-box-shadow: 0 0 0 0.25rem #fcc4a361;
		    --bs-pagination-color: black;
		    --bs-pagination-hover-color: #f87320;
		    --bs-pagination-focus-color: #f87320;
    		--bs-pagination-focus-bg: #FCC4A3;
    		--bs-pagination-active-bg: #FCC4A3;
    		--bs-pagination-active-border-color: #FCC4A3;
		}
	</style>
</head>
<body>

<!-- start -->
	
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
			        <a type="button" class="nav-link btn btn-warining" href="/member/dmin_login" style="background-color: #F87320; color: white;">logout</a>
			      </li>
			     </ul>
		     </div>
	      </div>
	    </div>
	  </div>
	</nav>	
	
	
	
	<div class="bgbg"><img src="../../resources/images/back2.jpg"></div>
	
	<!-- 검색조건 -->
	
	<div class="container-fluid" style="width: 90%; margin-top: 2rem;">
		<div class="text-center"><h1><b>주문관리</b></h1></div>
		<div class="row justify-content-end" style="margin-top: 2rem;">
			<div class="col-2">
				<select class="form-select col-2" aria-label="Default select example">
				  <option selected>삭제여부</option>
				  <option value="1">Y</option>
				  <option value="2">N</option>
				</select>
			</div>
			<div class="col-2">
				<select class="form-select col-2" aria-label="Default select example">
				  <option selected>주문날짜</option>
				  <option value="1">주문날짜</option>
				</select>
			</div>
			<div class="col-2">
				<input type="date" class="form-control" value="2020-01-01" aria-label="Recipient's username with two button addons">
			</div>
			<div class="col-2">
				<input type="date" class="form-control" value="2022-07-01" aria-label="Recipient's username with two button addons">
			</div>
		</div>
	</div>
	<div class="container-fluid p-4" style="width: 90%">
		<div class="row justify-content-end">
			<div class="col-2">
				<select class="form-select" aria-label="Default select example">
				  <option selected>검색구분</option>
				  <option value="1">이름</option>
				  <option value="2">아이디</option>
				  <option value="3">클래스명</option>
				  <option value="4">정가</option>
				  <option value="5">결제수단</option>
				  <option value="6">주소</option>
				</select>
			</div>
			<div class="col-4">
				<input type="text" class="form-control" placeholder="검색어를 입력하세요." aria-label="Recipient's username with two button addons">
			</div>
			<div class="col-2">
			 	<button class="btn btn-outline-dark" type="button"><i class="fa-solid fa-magnifying-glass"></i></button>
				<button class="btn btn-outline-dark" type="button"><i class="fa-solid fa-rotate-left"></i></button>
			</div>
		</div>
	</div>
		
		
	<!-- order List -->
	
	<div class="container-fluid text-center" style="width: 90%">
		<table class="table table-hover" id="minus">
			<thead>
				<tr class="table-dark text-white">
					<th scope="col" >
						<input class="check" type="checkbox" name="check" onclick="selectAll(this)">
					</th>
					<th scope="col" >NO</th>
					<th scope="col">이름</th>
					<th scope="col">아이디</th>
					<th scope="col">클래스명</th>
					<th scope="col">정가</th>
					<th scope="col">할인금액</th>
					<th scope="col">쿠폰할인금액</th>
					<th scope="col">최종가격</th>
					<th scope="col">결제수단</th>
					<th scope="col">주소</th>
					<th scope="col">주문날짜</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>
						<input class="check" type="checkbox" name="check">
					</td>
					<th scope="row">1</th>
					<td>김진경</a></td>
					<td>yeriel</td>
					<td>무명 이모티콘 작가..</td>
					<td>300,000원</td>
					<td>120,000원</td>
					<td>0원</td>
					<td>180,000원</td>
					<td>카카오페이</td>
					<td>서울시 은평구 녹번동 녹번아파트</td>
					<td>2020.12.12 14:00:05</td>
				</tr>
			</tbody>
		</table>
	</div>
		
	<div class="container-fluid" style="width:90%">
		<div class="row justify-content-between">	
	   		<div class="col-10">
	     		<a type="button" class="btn btn-dark" onclick='deleteRow(-1)'><i class="fa-solid fa-circle-minus"></i></a>
	     		<button type="button" class="btn btn-dark" data-bs-toggle="modal" data-bs-target="#exampleModal">삭제하기<i class="fa-solid fa-trash-can"></i></button>
	    	</div>
	    	<div class="col-2 text-end">
				<button type="button" class="btn btn-dark"><i class="fa-solid fa-circle-plus"></i></button>
	    	</div>
	    </div>	
   </div>
	
	<div class="container p-10">
		<nav aria-label="Page navigation example">
		  <ul class="pagination justify-content-center">
		    <li class="page-item">
		      <a class="page-link" href="#" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		    <li class="page-item"><a class="page-link" href="#">1</a></li>
		    <li class="page-item"><a class="page-link" href="#">2</a></li>
		    <li class="page-item"><a class="page-link" href="#">3</a></li>
		    <li class="page-item">
		      <a class="page-link" href="#" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		  </ul>
		</nav>
	</div>
		
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">Class101</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        정말로 삭제하시겠습니까?
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
	        <button type="button" class="btn btn-dark">삭제 </button>
	      </div>
	    </div>
	  </div>
	</div>
	
		
<!-- end	 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/1d7c148109.js" crossorigin="anonymous"></script>
	<script type="text/javascript">
		function selectAll(selectAll)  {
		  const checkboxes 
		       = document.getElementsByName('check');
		  
		  checkboxes.forEach((checkbox) => {
		    checkbox.checked = selectAll.checked;
		  })
		}
	</script>
	<script type="text/javascript">
		function deleteRow(rownum) {
		  // table element 찾기
		  const table = document.getElementById('minus');
		  
		  // 행(Row) 삭제
		  const newRow = table.deleteRow(rownum);
		}
	</script>
</body>
</html>