<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Hielo by TEMPLATED</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="${path }/resources/css/main.css" />
</head>
<body class="subpage">

	<!-- Header -->
	<header id="header">
		<div class="logo">
			<a href="index.html">Hielo <span>by TEMPLATED</span></a>
		</div>
		<a href="#menu">Menu</a>
	</header>

	<!-- Nav -->
	<nav id="menu">
		<ul class="links">
			<li><a href="index.html">Home</a></li>
			<li><a href="generic.html">Generic</a></li>
			<li><a href="elements.html">Elements</a></li>
		</ul>
	</nav>

	<!-- One -->
	<section id="One" class="wrapper style3">
		<div class="inner">
			<header class="align-center">
				<p>Sed amet nulla</p>
				<h2>로얄 스타일 시뮬레이터</h2>
			</header>
		</div>
	</section>

	<!-- Main -->
	<div id="main" class="container">

		<!-- Elements -->
		<h2 id="elements">Elements</h2>
		<div class="row 200%">
		
			<div class="">

				<form method="get" action="home">
					<div class="row uniform">
						<div class="9u 12u$(small)">
							<input type="number" name="trials"
								placeholder="시행횟수" />
						</div>
						<div class="3u$ 12u$(small)">
							<input type="submit" value="Simulate" class="fit" />
						</div>
					</div>
				</form>

				<h4>Ordered</h4>
				<p>스페셜 라벨 갯수 : ${count }</p>
				<ol>
					<c:forEach var="result" items="${list}">
						<li>${result}</li>
					</c:forEach>
				</ol>

				<h4>Icons</h4>
				<ul class="icons">
					<li><a href="#" class="icon fa-twitter"><span
							class="label">Twitter</span></a></li>
					<li><a href="#" class="icon fa-facebook"><span
							class="label">Facebook</span></a></li>
					<li><a href="#" class="icon fa-instagram"><span
							class="label">Instagram</span></a></li>
					<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
					<li><a href="#" class="icon fa-dribbble"><span
							class="label">Dribbble</span></a></li>
					<li><a href="#" class="icon fa-tumblr"><span class="label">Tumblr</span></a></li>
				</ul>

			</div>
		</div>

	</div>

	<!-- Footer -->
	<footer id="footer">
		<div class="container">
			<ul class="icons">
				<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
				<li><a href="#" class="icon fa-facebook"><span
						class="label">Facebook</span></a></li>
				<li><a href="#" class="icon fa-instagram"><span
						class="label">Instagram</span></a></li>
				<li><a href="#" class="icon fa-envelope-o"><span
						class="label">Email</span></a></li>
			</ul>
		</div>
		<div class="copyright">&copy; Untitled. All rights reserved.</div>
	</footer>

	<!-- Scripts -->
	<script src="${path }/resources/js/jquery.min.js"></script>
	<script src="${path }/resources/js/jquery.scrollex.min.js"></script>
	<script src="${path }/resources/js/skel.min.js"></script>
	<script src="${path }/resources/js/util.js"></script>
	<script src="${path }/resources/js/main.js"></script>

</body>
</html>