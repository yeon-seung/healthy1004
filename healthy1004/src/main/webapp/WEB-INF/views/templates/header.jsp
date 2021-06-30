<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<nav
	class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
	id="ftco-navbar">
	<div class="container">
		<a class="navbar-brand" href="${pageContext.request.contextPath}/home?pageName=home"><span>Healthy</span>Sexy</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#ftco-nav" aria-controls="ftco-nav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="oi oi-menu"> Menu </span>
		</button>

		<div class="collapse navbar-collapse" id="ftco-nav">
			<ul class="navbar-nav ml-auto">
				<!-- ${pageContext.request.contextPath }/ -->
				<%-- <li class="nav-item" id="home"><a
					href="${pageContext.request.contextPath}/home" class="nav-link">Home</a></li>
				<li class="nav-item" id="instructor"><a
					href="${pageContext.request.contextPath}/instructor"
					class="nav-link">Instructor</a></li>
				<li class="nav-item" id="blog"><a
					href="${pageContext.request.contextPath}/blog" class="nav-link">Blog</a></li>
				<li class="nav-item" id="contact"><a
					href="${pageContext.request.contextPath}/contact" class="nav-link">Contact</a></li> --%>
				<li class="nav-item active " id="home"><a
					href="#" class="nav-link">Home</a></li>
				<li class="nav-item active" id="about"><a
					href="#" class="nav-link">크루 찾기</a></li>
				<li class="nav-item active" id="course"><a
					href="#" class="nav-link">다이어리</a></li>
				<li class="nav-item active" id="instructor"><a
					href="#" class="nav-link ">Instructor</a></li>
				<li class="nav-item active" id="blog"><a
					href="#" class="nav-link">Blog</a></li>
				<li class="nav-item active" id="contact"><a
					href="#" class="nav-link">Contact</a></li>
			</ul>
			<form id="frm" method="get" action="">
				<input type="hidden" name="pageName" id="pageName">
			</form>
		</div>
	</div>
</nav>