<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
<head>
	<title>test</title>
	<script src="https://kit.fontawesome.com/15c84217dd.js" crossorigin="anonymous"></script>
	<!-- Bootstrap CSS -->
	<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap extra CSS -->    
    <link href="/resources/xdmin/css/bootstrap/sidebars.css" rel="stylesheet">
    <!-- jquery ui CSS -->    
    <link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/xdmin/css/commonXdmin.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="shortcut icon" type="image/x-icon" href="https://cdn-icons-png.flaticon.com/512/477/477796.png">
</head>
<body>	
	List

	<br>aaa : <c:out value="${SIGUN_NM }"/>
	<br>aaa : <c:out value="${SIGUN_CD }"/>
	<br>aaa : <c:out value="${RESTRT_NM }"/>
	<br>aaa : <c:out value="${REPRSNT_FOOD_NM }"/>
	<br>aaa : <c:out value="${TASTFDPLC_TELNO }"/>
	<br>aaa : <c:out value="${items }"/>
	<br>aaa : <c:out value="${fn:length(items) }"/>
	
	<c:forEach items="${items}" var="item" varStatus="status">
		<c:out value="${item.REFINE_LOTNO_ADDR }"/>
		<br><c:out value="${item.REFINE_ROADNM_ADDR }"/>	
		<br><c:out value="${item.REFINE_ZIP_CD }"/>	
		<br><c:out value="${item.REFINE_WGS84_LOGT }"/>	
		<br><c:out value="${item.REFINE_WGS84_LAT }"/>	
	</c:forEach>
	
	
</body>
</html>