<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="cafein.post.Post"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Dear. ${dearName}</title>
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<link type="text/css" rel="stylesheet" href="/css/index.css">
	<script defer src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
	<script defer src="/js/util.js"></script>
	<script defer src="/js/main.js"></script>
	<script defer src="/js/elastic.js"></script>
	<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

		ga('create', 'UA-71768526-1', 'auto');
		ga('send', 'pageview');
	</script>
</head>
<body>
	<nav class="top-bar"><a id="go-back" href="javascript:history.back()"><span class="hidden">뒤로가기</span></a></nav>
	<section class="the-letter">
		<div>
			<label class="dear-label" for="dear-input">Dear.</label>
			<img id="stamp" src="/css/img/stamp.png">
			<input id="dear-input" readonly value="${dearName}">
			<textarea name="content" readonly>${post.content}</textarea>
			<p id="createdDate">${createdDate}</p>
		</div>
	</section>
	<div class="info"><span class="likes">${post.likes}</span><span class="replies">0</span></div>
	<ul id="replies">
	</ul>
	<form id="write-reply">
		<div class="info">
			<div class="message"></div>
		</div>
		<div class="input">
			<input type="hidden" name="postId" value="${post.id}">
			<input id="reply-input" type="text" name="content" maxlength="2000">
			<button>댓글쓰기</button>
		</div>
	</form>
</body>
</html>
