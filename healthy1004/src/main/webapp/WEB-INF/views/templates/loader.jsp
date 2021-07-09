<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<%-- loader --%>
<div id="ftco-loader" class="show fullscreen">
	<svg class="circular" width="48px" height="48px">
				<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
			stroke-width="4" stroke="#eeeeee" />
				<circle class="path" cx="24" cy="24" r="22" fill="none"
			stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
</div>


<script
	src="${pageContext.request.contextPath}/healthy/js/jquery.min.js"></script>
<!-- '${_csrf.headerName}'을 사용하기 위해서는 jsp 파일 내에 들어가야 하므로 여기에 존재해야 함  -->
<!-- 또한, jquery가 로드되고 사용되어야하므로 jquery.js 파일 밑에 들어가야함 -->
<!-- options.type.toLowerCase() 함수를 통해서 post, Post, POST 등 다양한 대소문자의 POST를 소문자로 만들어준다. -->
<script>
	$.ajaxPrefilter(function(options) {
		let headerName = '${_csrf.headerName}';
		let token = '${_csrf.token}';
		let type = options.type.toLowerCase();
		if (type === 'post') {		
			options.headers = {};
			options.headers[headerName] = token;
		}
	});
</script>
<script
	src="${pageContext.request.contextPath}/healthy/js/jquery-migrate-3.0.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/healthy/js/popper.min.js"></script>
<script
	src="${pageContext.request.contextPath}/healthy/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/healthy/js/jquery.easing.1.3.js"></script>
<script
	src="${pageContext.request.contextPath}/healthy/js/jquery.waypoints.min.js"></script>
<script
	src="${pageContext.request.contextPath}/healthy/js/jquery.stellar.min.js"></script>
<script
	src="${pageContext.request.contextPath}/healthy/js/owl.carousel.min.js"></script>
<script
	src="${pageContext.request.contextPath}/healthy/js/jquery.magnific-popup.min.js"></script>
<script
	src="${pageContext.request.contextPath}/healthy/js/jquery.animateNumber.min.js"></script>
<script
	src="${pageContext.request.contextPath}/healthy/js/bootstrap-datepicker.js"></script>
<script
	src="${pageContext.request.contextPath}/healthy/js/scrollax.min.js"></script>
<script src="${pageContext.request.contextPath}/healthy/js/main.js"></script>

<%-- fullcalender  --%>
<script src='${pageContext.request.contextPath}/fullcalendar/main.js'></script>
<script class="cssdesk"
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.0/moment.min.js"
	type="text/javascript"></script>
<script
	src='${pageContext.request.contextPath}/fullcalendar/addEvent.js'></script>
<script src='${pageContext.request.contextPath}/fullcalendar/diary.js'></script>
<script
	src='${pageContext.request.contextPath}/fullcalendar/detailEvent.js'></script>
	
	<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=97115187be3f975968a24a96c9e00988&libraries=services,clusterer,drawing"></script>
<script src="${pageContext.request.contextPath}/healthy/js/map.js"></script>

<script src="${pageContext.request.contextPath}/healthy/js/mypage.js"></script>
<script src="${pageContext.request.contextPath}/healthy/js/main.js"></script>