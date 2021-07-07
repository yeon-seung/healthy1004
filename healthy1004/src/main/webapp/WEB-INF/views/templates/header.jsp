<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<nav
	class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
	id="ftco-navbar">
	<div class="container">
		<a class="navbar-brand"
			href="${pageContext.request.contextPath}/home?pageName=home"><span>Healthy</span>Sexy</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#ftco-nav" aria-controls="ftco-nav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="oi oi-menu"> Menu </span>
		</button>

		<div class="collapse navbar-collapse" id="ftco-nav">
			<ul class="navbar-nav ml-auto">
				<sec:authorize access="isAuthenticated()">
					<div style="font-size: 15px; padding-top: 1.5rem; padding-bottom: 1.5rem;padding-left: 20px;padding-right: 20px;color: #fff;font-weight: 500;">
					<li><sec:authentication property="principal.memberName" />님 안녕하세요</li></div>
					
				
				<li class="nav-item active " id="home"><a href="#"
					class="nav-link">Home</a></li>
				<li class="nav-item active" id="crewfind"><a href="#"
					class="nav-link">Find crew</a></li>
				<li class="nav-item active" id="diary"><a href="#"
					class="nav-link">Diary</a></li>
				<li class="nav-item active" id="mypage"><a href="#"
					class="nav-link ">Mypage</a></li>

				<div style="font-size: 15px; padding-top: 1.5rem; padding-bottom: 1.5rem;padding-left: 20px;padding-right: 20px;color: #fff;font-weight: 500;">
					<li><script type="text/javascript">
						$(document).ready(function() {
							$("#logoutAction").click(function() {
								$("#logoutForm").submit();
							});
						});
					</script> <a href="#" id="logoutAction" style="color: white">Logout</a>
						<form id="logoutForm"
							action="${pageContext.request.contextPath}/logout" method="post"
							style="display: none">
							<sec:csrfInput />
						</form>
				</li>
				</div>
				</sec:authorize>
			</ul>
			<form id="frm" method="get" action="">
				<input type="hidden" name="pageName" id="pageName">
			</form>
		</div>
	</div>
</nav>