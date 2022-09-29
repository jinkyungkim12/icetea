<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
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
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    
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
		table, td, th{
			text-align: center;
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
		a {
	   	color: #000000;
	    }
	    a:focus, a:hover{
	    	color: #F7670E;
	    }
	</style>
</head>
<body>
<!-- start -->
	
	<!-- nav bar -->
	
	<nav class="navbar navbar-dark bg-dark fixed-top">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="codeGroup/codeGroupList"><b>CLASS 101</b></a>
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
			         <button type="button" class="nav-link btn btn-warining" id="logoutButton" style="background-color: #F87320; color: white; width: 100%;">logout</button>
			      </li>
			     </ul>
		     </div>
	      </div>
	    </div>
	  </div>
	</nav>	
	
	<!-- tab -->
		
	<div><img src="../../resources/images/back2.jpg"></div>
	<div class="container-fluid p-4" style="width: 80%">
	
	<!-- <form method="post" action="/codeGroup/codeGroupList"> -->
	<form method="post" name="formList" id="formList">
	<input type="hidden" name="seq">
	<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
	<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow }"/>">
		<div class="container-fluid" style="margin-top: 3rem;">
			<div class="text-center"><h1><b>코드그룹 관리</b></h1></div>
			<div class="row justify-content-end"  style="margin-top: 3rem;">
				<div class="col-2">
					<select id="shDelNY" name="shDelNY" class="form-select" aria-label="Default select example">
					  <option value="" <c:if test="${empty vo.shDelNY}">selected </c:if>>삭제여부</option>
					  <option value="0" <c:if test="${vo.shDelNY eq 0}">selected </c:if>>N</option>
					  <option value="1" <c:if test="${vo.shDelNY eq 1}">selected </c:if>>Y</option>
					</select>
				</div>
				<div class="col-2">
					<select class="form-select col-2" name="shOptionDate">
					  <option value="" <c:if test="${empty vo.shOptionDate}">selected </c:if>>날짜</option>
					  <option value="1" <c:if test="${vo.shOptionDate eq 1}">selected </c:if>>등록일</option>
					  <option value="2" <c:if test="${vo.shOptionDate eq 2}">selected </c:if>>수정일</option>
					</select>
				</div>
				<div class="col-2">
					<input class="form-control shDate" type="text" id="shDateStart" name="shDateStart" value="${vo.shDateStart}" placeholder="시작일" autocomplete="off">
				</div>
				<div class="col-2">
					<input class="form-control shDate" type="text" id="shDateEnd" name="shDateEnd" value="${vo.shDateEnd}" placeholder="종료일" autocomplete="off">
				</div>
			</div>
		</div>
		
		<div class="container-fluid p-4">
			<div class="row justify-content-end">
				<div class="col-2">
					<select id="shCgOption" name="shCgOption" class="form-select" aria-label="Default select example">
					  <option value="" <c:if test="${empty vo.shCgOption}">selected </c:if>>검색구분</option>
					  <option value="1" <c:if test="${vo.shCgOption eq 1}">selected </c:if>>코드그룹 코드</option>
					  <option value="2" <c:if test="${vo.shCgOption eq 2}">selected</c:if>>코드그룹 이름(한글)</option>
					  <option value="3" <c:if test="${vo.shCgOption eq 3}">selected</c:if>>코드그룹 이름(영문)</option>
					</select>
				</div>
				<div class="col-4">
					<input type="text" id="shCgValue" name="shCgValue" value="<c:out value="${vo.shCgValue }"/>"class="form-control" placeholder="검색어를 입력하세요." aria-label="Recipient's username with two button addons">
				</div>
				<div class="col-2">
				 	<button class="btn btn-outline-dark" style="height: 2.4rem;" id="btnSearch"><i class="fa-solid fa-magnifying-glass"></i></button>
					<button type="button" class="btn btn-outline-dark" style="height: 2.4rem;" id="btnReset" name=""><i class="fa-solid fa-rotate-left"></i></button>
				</div>
			</div>		
		</div>
	</form>

		<!-- List -->
		
		<div class="container-fluid">
			<div class="row justify-content-between">
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
		
		<div class="container-fluid" style="margin-top: 0.5rem;">
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
						<th scope="col">삭제여부</th>
						<th scope="col">사용여부</th>
						<th scope="col">등록일</th>
						<th scope="col">수정일</th>
					</tr>
				</thead>
				<tbody>
				<c:choose>
					<c:when test="${fn:length(list) eq 0}">
						<tr>
							<td class="text-center" colspan="10">There is no data!</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${list}" var="list" varStatus="status">
							<tr>
								<td>
									<input class="check" type="checkbox" name="check">
								</td>
								<th scope="row"><c:out value="${list.seq }"/></th>
								<td><c:out value="${list.codeGroupCode }"/></td>
								<td>
									<a href="javascript:goForm(<c:out value="${list.seq }"/>)"><c:out value="${list.nameKr}"/></a></td>
								<td><c:out value="${list.name }"/></td>
								<td><c:out value="${list.codeNum }"/></td>
								<td>
									<c:choose>
										<c:when test="${list.cgDelNY eq 0}">N</c:when>
										<c:otherwise>Y</c:otherwise>
									</c:choose>
								</td>	
								<td>
									<c:choose>
										<c:when test="${list.cgUseNY eq 0}">N</c:when>
										<c:otherwise>Y</c:otherwise>
									</c:choose>
								</td>
								<td><c:out value="${list.regDate }"/></td>
								<td><c:out value="${list.modDate }"/></td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
				</tbody>
			</table>
		</div>
		
		<div class="container-fluid">
			<div class="row justify-content-between">	
		   		<div class="col-10">
		     		<button type="button" class="btn btn-dark" onclick='deleteRow(-1)' style="height: 2.4rem;"><i class="fa-solid fa-circle-minus"></i></button>
		     		<button type="button" class="btn btn-dark" data-bs-toggle="modal" data-bs-target="#exampleModal">삭제하기<i class="fa-solid fa-trash-can"></i></button>
		    	</div>
		    	<div class="col-2 text-end">
		     		<a type="button" class="btn btn-dark" href="/codeGroup/codeGroupForm" style="color: white;">등록하기<i class="fa-solid fa-file-arrow-up"></i></a>
					<button type="button" class="btn btn-dark" style="height: 2.4rem;"><i class="fa-solid fa-circle-plus"></i></button>
		    	</div>
		    </div>	
	   </div>
	
		<!-- <div class="container p-10">
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
		</div> -->
		
		<!-- pagination s -->
		<%@include file="../../../common/xdmin/includeV1/pagination.jsp"%>
		<!-- pagination e -->
		
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
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script> -->
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
	<script type="text/javascript">
	
		var goUrlList = "/codeGroup/codeGroupList"; 			/* #-> */
		var goUrlInst = "/codeGroup/codeGroupInst"; 			/* #-> */
		var goUrlUpdt = "/codeGroup/codeGroupUpdt";				/* #-> */
		var goUrlUele = "/codeGroup/codeGroupUele";				/* #-> */
		var goUrlDele = "/codeGroup/codeGroupDele";				/* #-> */
		var goUrlForm = "/codeGroup/codeGroupForm";
		
		var form = $("form[name=formList]");
		
		var seq = $("input:hidden[name=seq]");
		
		$('#btnForm').on("click", function() {
			goForm(0);                
		});
		
		goForm = function(keyValue) {
			/* if(keyValue != 0) seq.val(btoa(keyValue)); */
	    	seq.val(keyValue);
			form.attr("action", goUrlForm).submit();
		}
		
		$("#btnSearch").on("click", function(){
			if(validationList() == false) return false;
			form.attr("action", goUrlList).submit();
		});
	
  		$("#btnReset").on("click", function(){
			$(location).attr("href", goUrlList);
		});
  		
  		goList = function(thisPage){
			$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action", goUrlList).submit();
		}
		
	</script>
	<script type="text/javascript">
		$(document).ready(function(){
			 $("input.shDate").datepicker();
		}); 
	
		$.datepicker.setDefaults({
		    dateFormat: 'yy-mm-dd',
		    prevText: '이전 달',
		    nextText: '다음 달',
		    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
		    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
		    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
		    showMonthAfterYear: true,
		    yearSuffix: '년'
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