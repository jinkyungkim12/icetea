<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Code Group List</title>
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
		.container-fluid{
			font-family: 'Happiness-Sans-Regular';	
		}
		@font-face {
		    font-family: 'Happiness-Sans-Regular';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2205@1.0/Happiness-Sans-Regular.woff2') format('woff2');
		    font-weight: 400;
		    font-style: normal;
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
	
	<!-- nav bar -->
	
	<nav class="navbar navbar-dark bg-dark fixed-top">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="../member/dmin_List.html"><b>CLASS 101</b></a>
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
	            <a class="nav-link bbb" href="./member/dmin_List.html">회원관리</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link bbb" href="./product/dmin_product.html">클래스관리</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link bbb" href="./review/dmin_review.html">리뷰관리</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link bbb" href="./order/dmin_order.html">주문관리</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link bbb" href="codeGroup.html">코드그룹관리</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link bbb" href="code.html">코드관리</a>
	          </li>
	        </ul>
	        <div class="text-center">
		         <ul class="navbar-nav" style="margin-top: 3rem;">
			      <li class="nav-item justify-content-end">
			        <a type="button" class="nav-link btn btn-warining" href="../../dmin/loginForm.html" style="background-color: #F87320; color: white;">logout</a>
			      </li>
			     </ul>
		     </div>
	      </div>
	    </div>
	  </div>
	</nav>	
	
	<!-- tab -->
		
	<div><img src="resources/images/back2.jpg"></div>
	<div class="container-fluid p-4" style="width: 80%">
	
	
	<div class="tab-pane fade show active" id="home-tab-pane" role="tabpanel" aria-labelledby="home-tab" tabindex="0">
		<div class="container-fluid" style="margin-top: 3rem;">
			<div class="text-center ccc"><h1><b>코드그룹 관리</b></h1></div>
			<div class="row justify-content-end"  style="margin-top: 3rem;">
				<div class="col-2">
					<select class="form-select col-2" aria-label="Default select example">
					  <option selected>삭제여부</option>
					  <option value="1">Y</option>
					  <option value="2">N</option>
					</select>
				</div>
				<div class="col-2">
					<select class="form-select col-2" aria-label="Default select example">
					  <option selected>수정일</option>
					  <option value="1">수정일</option>
					  <option value="2">등록일</option>
					</select>
				</div>
				<div class="col-2">
					<input type="text" class="form-control" placeholder="시작일">
				</div>
				<div class="col-2">
					<input type="text" class="form-control" placeholder="종료일">
				</div>
			</div>
		</div>
		<div class="container-fluid p-4">
			<div class="row justify-content-end">
				<div class="col-2">
					<select class="form-select" aria-label="Default select example">
					  <option selected>검색구분</option>
					  <option value="1">코드그룹 코드</option>
					  <option value="2">코드그룹 이름(한글)</option>
					  <option value="3">코드그룹 이름(영문)</option>
					  <option value="4">코드갯수</option>
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
			<div class="row justify-content-between" style="margin-top: 3rem;">
				<div class="col-1 text-start"><h5><b>Total: </b></h5></div>
				<div class="col-1 text-end">
					<select class="form-select" aria-label="Default select example">
					  <option selected>10</option>
					  <option value="1">10</option>
					  <option value="2">20</option>
					  <option value="3">30</option>
					</select>
				</div>
			</div>
		</div>
		
		
		<!-- List -->
		
		<div class="container-fluid text-center">
			<table class="table table-hover" id="minus">
				<thead>
					<tr class="table-dark text-white">
						<th scope="col" >
							<input class="check" type="checkbox" name="check" onclick="selectAll(this)">
						</th>
						<th scope="col" >NO</th>
						<th scope="col">코드그룹 코드</th>
						<th scope="col">코드그룹 이름(한글)</th>
						<th scope="col">코드그룹 이름(영문)</th>
						<th scope="col">코드갯수</th>
						<th scope="col">등록일</th>
						<th scope="col">수정일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<input class="check" type="checkbox" name="check">
						</td>
						<th scope="row">1</th>
						<td></td>
						<td><a class="aaa" href="codeGroupModForm.html">통신사</a></td>
						<td>telCompany</td>
						<td>3</td>
						<td>2020.12.12 14:00:05</td>
						<td>2020.12.12 14:00:05</td>
					</tr>
			   		<tr>
						<td>
							<input class="check" type="checkbox" name="check">
						</td>
						<th scope="row">2</th>
						<td></td>
						<td><a class="aaa" href="#">성별</a></td>
						<td>gender</td>
						<td>2</td>
						<td>2020.12.12 14:00:05</td>
						<td>2020.12.12 14:00:05</td>
				    </tr>
					<tr>
						<td>
							<input class="check" type="checkbox" name="check">
						</td>
						<th scope="row">3</th>
						<td></td>
						<td><a class="aaa" href="#">결제수단</a></td>
						<td>pay</td>
						<td>2</td>
						<td>2020.12.12 14:00:05</td>
						<td>2020.12.12 14:00:05</td>
					</tr>
					<tr>
						<td>
							<input class="check" type="checkbox" name="check">
						</td>
						<th scope="row">4</th>
						<td></td>
						<td><a class="aaa" href="#">배송요청사항</a></td>
						<td>Request</td>
						<td>3</td>
						<td>2020.12.12 14:00:05</td>
						<td>2020.12.12 14:00:05</td>
					</tr>
					<tr>
						<td>
							<input class="check" type="checkbox" name="check">
						</td>
						<th scope="row">5</th>
						<td></td>
						<td><a class="aaa" href="#">별점</a></td>
						<td>peferenceStar</td>
						<td>5</td>
						<td>2020.12.12 14:00:05</td>
						<td>2020.12.12 14:00:05</td>
					</tr>
					<tr>
						<td>
							<input class="check" type="checkbox" name="check">
						</td>
						<th scope="row">6</th>
						<td></td>
						<td><a class="aaa" href="#">할부개월</a></td>
						<td>payMonth</td>
						<td>2</td>
						<td>2020.12.12 14:00:05</td>
						<td>2020.12.12 14:00:05</td>
					</tr>
					<tr>
						<td>
							<input class="check" type="checkbox" name="check">
						</td>
						<th scope="row">7</th>
						<td></td>
						<td><a class="aaa" href=#>개인정보동의</a></td>
						<td>personalInfo</td>
						<td>4</td>
						<td>2020.12.12 14:00:05</td>
						<td>2020.12.12 14:00:05</td>
					</tr>
					<tr>
						<td>
							<input class="check" type="checkbox" name="check">
						</td>
						<th scope="row">8</th>
						<td></td>
						<td><a class="aaa" href="#">직책</a></td>
						<td>position</td>
						<td>3</td>
						<td>2020.12.12 14:00:05</td>
						<td>2020.12.12 14:00:05</td>
					</tr>
					<tr>
						<td>
							<input class="check" type="checkbox" name="check">
						</td>
						<th scope="row">9</th>
						<td></td>
						<td><a class="aaa" href="#">카테고리분류</a></td>
						<td>classDiv</td>
						<td>3</td>
						<td>2020.12.12 14:00:05</td>
						<td>2020.12.12 14:00:05</td>
					</tr>
					<tr>
						<td>
							<input class="check" type="checkbox" name="check">
						</td>
						<th scope="row">10</th>
						<td></td>
						<td><a class="aaa" href="#">이메일도메인</a></td>
						<td>emailDomain</td>
						<td>3</td>
						<td>2020.12.12 14:00:05</td>
						<td>2020.12.12 14:00:05</td>
					</tr>
				</tbody>
			</table>
		</div>
		
		<div class="container-fluid">
			<div class="row justify-content-between">	
		   		<div class="col-10">
		     		<a type="button" class="btn btn-dark" onclick='deleteRow(-1)'><i class="fa-solid fa-circle-minus"></i></a>
		     		<button type="button" class="btn btn-dark" data-bs-toggle="modal" data-bs-target="#exampleModal">삭제하기<i class="fa-solid fa-trash-can"></i></button>
		    	</div>
		    	<div class="col-2 text-end">
		     		<a type="button" class="btn btn-dark" href="codeGroupForm.html" style="color: white;">등록하기<i class="fa-solid fa-file-arrow-up"></i></a>
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
	</div>
		

	
	</div>
	</div>
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