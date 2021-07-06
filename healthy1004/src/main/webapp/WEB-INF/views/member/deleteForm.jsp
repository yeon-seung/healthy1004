<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<sec:authorize access="hasRole('ROLE_ADMIN')">
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('${pageContext.request.contextPath}/healthy/images/bg_2.jpg');">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-end justify-content-center">
				<div class="col-md-9 ftco-animate pb-5 text-center">
					<%-- <p class="breadcrumbs">
					<span class="mr-2"><a href="${pageContext.request.contextPath}/home">Home <i
							class="fa fa-chevron-right"></i></a></span> <span>Course Lists <i
						class="fa fa-chevron-right"></i></span>
				</p> --%>
					<h1 class="mb-0 bread">Delete Member</h1>
				</div>
			</div>
		</div>
	</section>

	<!-- <div class="sidebar-box bg-white p-4 ftco-animate"> -->
		<div class="text pt-3">
			<h3 style="text-align: center;">회원 목록</h3>
			<form method="POST" action="${pageContext.request.contextPath}/member/registerMember" id="regForm">
			<sec:csrfInput/>
			<table border="1">
				<tr>
					<td>아이디</td>
					<td>패스워드</td>
					<td>이름</td>
					<td>주소</td>
					<td>이메일</td>
					<td>키</td>
					<td>몸무게</td>
					<td>나이</td>
					<td>전화번호</td>
				</tr>
				<c:forEach items="${memberList}" var="list">
					<tr>
						<td><c:out value="${list.memberId}"/></td>
						<td><c:out value="${list.password}"/></td>
						<td><c:out value="${list.memberName}"/></td>
						<td><c:out value="${list.address}"/></td>
						<td><c:out value="${list.email}"/></td>
						<td><c:out value="${list.height}"/></td>
						<td><c:out value="${list.weight}"/></td>
						<td><c:out value="${list.age}"/></td>
						<td><c:out value="${list.phone}"/></td>
				</c:forEach>
			</table>
			<!-- <span class="position mb-2">Business</span> -->
			<!-- <div class="faded">
				<p>I am an ambitious workaholic, but apart from that, pretty
					simple person.</p>
				<ul class="ftco-social text-center">
					<li class="ftco-animate"><a href="#"><span
							class="fa fa-twitter"></span></a></li>
					<li class="ftco-animate"><a href="#"><span
							class="fa fa-facebook"></span></a></li>
					<li class="ftco-animate"><a href="#"><span
							class="fa fa-google"></span></a></li>
					<li class="ftco-animate"><a href="#"><span
							class="fa fa-instagram"></span></a></li>
				</ul>
			</div> -->
		</div>
	<!-- </div> -->

</sec:authorize>