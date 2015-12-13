<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="cafein.post.Post"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Dear. ${post.dear}</title>
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<link type="text/css" rel="stylesheet" href="/css/index.css">
	<!-- <script defer src="/js/index.js"></script> -->
</head>
<body>
	<nav class="top-bar"><a id="go-back" href="#" onclick="history.back();">뒤로가기</a></nav>
	<div class="the-letter">
		<div>
			<label class="dear-label" for="dear-input">Dear.</label>
			<input id="dear-input" readonly>
			<textarea name="content" readonly>넌,&#10;필요할 때 내 곁에&#10;없어.</textarea>
		</div>
	</section>
</body>
</html>
