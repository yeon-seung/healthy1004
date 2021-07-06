<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<section class="hero-wrap hero-wrap-2"
	style="background-image: url('${pageContext.request.contextPath}/healthy/images/bg_2.jpg');">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-center">
			<div class="col-md-9 ftco-animate pb-5 text-center">
				<h1 class="mb-0 bread">Diary</h1>
			</div>
		</div>
	</div>
</section>


<%-- fullcalendar 가져오기 --%>
<section class="ftco-section bg-light">
	<%--일정 눌렀을 때 뜨게 --%>
	<%-- 
	<div id="contextMenu" class="dropdown clearfix">
		<ul class="dropdown-menu dropNewEvent" role="menu"
			aria-labelledby="dropdownMenu"
			style="display: block; position: static; margin-bottom: 5px;">
			<li><a tabindex="-1" href="#">운동 추가</a></li>
			<li class="divider"></li>
			<li><a tabindex="-1" href="#" data-role="close">Close</a></li>
		</ul>
	</div>
	--%>
	<%--<div id="contextMenu" class="dropdown clearfix">
	</div>--%>
	<%-- 일정 추가 MODAL --%>
	<div class="modal fade" tabindex="-1" role="dialog" id="eventModal">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">일정 추가하기</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-12">
							<label class="col-md-4" for="diary_date">날짜</label> <input
								class="inputModal" type="text" name="diary_date" id="diary_date" />
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<label class="col-md-4" for="body_condition">컨디션</label> <select
								class="inputModal" type="text" name="body_condition"
								id="body_condition">
								<option value="상">상</option>
								<option value="중">중</option>
								<option value="하">하</option>
							</select>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<label class="col-md-4" for="body_condition_detail">컨디션
								설명</label>
							<textarea rows="2" cols="50" class="inputModal" maxlength="100"
								name="body_condition_detail" id="body_condition_detail"></textarea>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<label class="col-md-4" for="excercise_content">운동 설명</label>
							<textarea rows="4" cols="50" class="inputModal" maxlength="100"
								name="excercise_content" id="excercise_content" placeholder="기본 값은 운동안함으로 들어갑니다."></textarea>
						</div>
					</div>
				</div>
				<div class="modal-footer modalBtnContainer-addEvent">
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					<button type="button" class="btn btn-primary" id="save-event">저장</button>
				</div>
			</div>
			<%-- /.modal-content --%>
		</div>
		<%-- /.modal-dialog --%>
	</div>
	<%-- /.modal --%>
	<div class="container">
		<div id='calendar'></div>
	</div>

</section>
