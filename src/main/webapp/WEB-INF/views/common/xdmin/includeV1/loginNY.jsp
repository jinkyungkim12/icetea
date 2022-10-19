<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

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
				          <a class="nav-link" href="#" id="ListClass"><b>클래스</b></a>
				        </li> 
				        <li class="nav-item">
				          <a class="nav-link" href="#" id="ListStore"><b>스토어</b></a>
				        </li>
				      </ul>
				    </div>
				      <form class="d-flex" role="search">
				        <input class="form-control me-2" type="search" placeholder="검색어를 입력하세요." aria-label="Search" style="width: 400px;">
				        <button class="btn btn-outline-dark" type="submit">Search</button>
				      </form>
				    </div>
				 </nav>  
			</div>

			<!-- 로그인 전	 -->
			<c:if test="${sessSeq eq null}">
				<div class="col">
					<ul class="nav justify-content-end" id="leftList">
						<li class="nav-item"><a class="nav-link" aria-current="page"
							href="#">크리에이터 지원</a></li>
						<li class="nav-item"><a class="nav-link" href="#">기업교육</a></li>
						<li class="nav-item"><a class="nav-link" href="/member/memberLogin">로그인</a></li>
					</ul>
				</div>
			</c:if>
			
			<!-- 로그인 후 -->
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
									<a href="/member/mypage" class="dropdown-item text-center" style="color: #FF5600">마이페이지 <i class="fa-solid fa-angle-right"></i></a> 
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