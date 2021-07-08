<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!-- title이 null인 경우는 무시된다 -->
<!-- 페이지 타이틀도 동적으로 만들 수 있음. -->
<title><tiles:insertAttribute name="title" ignore="true" /></title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/healthy/css/animate.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/healthy/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/healthy/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/healthy/css/magnific-popup.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/healthy/css/bootstrap-datepicker.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/healthy/css/jquery.timepicker.css">


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/healthy/css/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/healthy/css/style.css">


<%-- fullcalender --%>
<link href='${pageContext.request.contextPath}/fullcalendar/main.css'
	rel='stylesheet' />

<%-- datetimepicker 설정 --%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.standalone.min.css">

<script type="text/javascript">
	var left = {
		pageSubmitFn : function(menu) {
			if (menu === "home") {
				$("#frm").attr("action",
						"${pageContext.request.contextPath}/home"); //form 의 action 값을 /로 변경			
				$("#pageName").val("home");
				$("#frm").submit();
			} else if (menu === "diary") {
				$("#frm").attr("action",
						"${pageContext.request.contextPath}/diary");
				$("#pageName").val("diary");
				$("#frm").submit();
			} else if (menu === "crewfind") {
				$("#frm").attr("action",
						"${pageContext.request.contextPath}/crewfind");
				$("#pageName").val("crewfind");
				$("#frm").submit();
			} else if (menu === "mypage") {
				$("#frm").attr("action",
						"${pageContext.request.contextPath}/mypage");
				$("#pageName").val("mypage");
				$("#frm").submit();
			} else if (menu === "signup") {
				$("#frm").attr("action",
						"${pageContext.request.contextPath}/signup");
				$("#pageName").val("signup");
				$("#frm").submit();
			} else if (menu === "admin") {
				$("#frm").attr("action",
						"${pageContext.request.contextPath}/admin");
				$("#pageName").val("admin");
				$("#frm").submit();
			}else if(menu ==="logoutAction"){
				$("#pageName").val("logoutAction");
				$("#logoutForm").submit();
			}

		}
	}

	$(function() {
		var pageName = "<c:out value='${param.pageName}' />";
		//var pageName = $(location).attr('pathname');  //파일명 (/index.jsp)
		//alert("경고"+pageName);
		$("#" + pageName).removeClass("active");
		$(".nav-item").click(function() {
			var menu = $(this).attr("id");
			//alert(menu);
			left.pageSubmitFn(menu);
		});

	});
</script>

</head>
<body>
	<div id="header">
		<%-- Tiles header 영역 --%>
		<tiles:insertAttribute name="header" />
	</div>
	<div id="main">
		<%-- Tiles main 영역 --%>
		<tiles:insertAttribute name="main" />
	</div>
	<%-- <div class="container-fluid text-center">
		<div class="row content">
			<div id="main" class="col-sm-7 text-left">
				<!-- Tiles main 영역 -->
				<tiles:insertAttribute name="main" />
			</div>
		</div>
	</div> --%>
	<div id="footer">
		<%-- Tiles footer 영역 --%>
		<tiles:insertAttribute name="footer" />
	</div>
	<tiles:insertAttribute name="loader" />
</body>
</html>
