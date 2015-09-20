<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="cafein.cafe.Cafe"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>

<html lang="en">
<head>
<meta charset="utf-8">

<title>cafe in</title>
<meta name="description" content="cafe post wall">
<meta name="author" content="toitoitoi">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<link rel="stylesheet" type="text/css" href="/css/index.css">

<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

</head>
<body>
	<a href="/cafe?cid=1">gogogo</a>
	
	<h1>CafeIn</h1>
	<ul class="filter">
		<li><a href="/?sort=postNum">댓글순</a></li>
	</ul>
	<form name="search" method="get" action="/searchcafe">
		<input type="text" name="keyword" placeholder="카페 이름을 검색해주세요." value="${keyword}"/> <input type="submit" value="검색" />
	</form>
	<hr>
	<ul class="cafe-list">
		<c:forEach items="${cafeList}" var="cafe">
			<li><img src="http://placehold.it/80x80">
				<div class="cid">${cafe.cid}</div>
				<div class="name">${cafe.name}</div>
				<div class="post-num">포스트 ${cafe.postNum}개</div>
				<div class="address">성남시 분당구 삼평동</div>
				<div class="distance">0.3km</div></li>
		</c:forEach>
	</ul>
	<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/scripts.js"></script>
</body>
</html>