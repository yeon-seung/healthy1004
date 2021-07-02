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

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- fullcalender -->

<link href='${pageContext.request.contextPath}/fullcalendar/main.css' rel='stylesheet' />
<script src='${pageContext.request.contextPath}/fullcalendar/main.js'></script>
<script src='${pageContext.request.contextPath}/fullcalendar/locales/ko.js'></script>
<script class="cssdesk" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.0/moment.min.js" type="text/javascript"></script>

<script>
<%--$.ajax({
	url: '/getUserDiaryTest',
	type: 'GET',
	success: function(data){
		   var list = data;
		  for(var i=0;i<list.length;i++){
           console.log(list);
		  }
		  var calendarEl = document.getElementById('calendar');
		  var events = list.map(function(item) {
				return {
					title : item.Excercise_Content,
					start : item.Diary_date
				}
			});
	
     // document.addEventListener('DOMContentLoaded', function() {
       
        var calendar = new FullCalendar.Calendar(calendarEl, {
          	events : events,
        	initialView: 'dayGridMonth',
        	// 달력 툴
  			headerToolbar: {
  			      left: 'prev',
  			      center: 'title',
  			      right: 'next today'
  			 },
  			editable: true,     // 드래그 수정 가능
  			 // 요일 클릭 이벤트
  			dateClick : function() {
  				alert('요일 클릭!');
  			},	
  			// 일정 클릭 이벤트
  			eventClick : function() {
  				alert('일정 클릭!');
  			}, 
  		});	
    	 // 데이터 삽입방식
		calendar.addEvent({'title':'고객1-컷팅', 'start':'2021-07-16T15:00'});
        calendar.render();
      //});
	}
});--%>

<%--document.addEventListener('DOMContentLoaded', function() {
    
	var calendarEl = document.getElementById('calendar');
    var calendar = new FullCalendar.Calendar(calendarEl, {
    	
      	events : [
            {
                title : 'dd',
                start : '2021-07-03'
            }],
      
    	initialView: 'dayGridMonth',
    	// 달력 툴
			headerToolbar: {
			      left: 'prev',
			      center: 'title',
			      right: 'next today'
			 },
			editable: true,     // 드래그 수정 가능
			 // 요일 클릭 이벤트
			dateClick : function() {
				alert('요일 클릭!');
			},	
			// 일정 클릭 이벤트
			eventClick : function() {
				alert('일정 클릭!');
			}, 
		});	
	 // 데이터 삽입방식
	calendar.addEvent({'title':'고객1-컷팅', 'start':'2021-07-16T15:00'});
    calendar.render();
  });

</script>
--%>
document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');   
    var calendar = new FullCalendar.Calendar(calendarEl, {
    	initialView: 'dayGridMonth',
    	// 달력 툴
			headerToolbar: {
			      left: 'prev',
			      center: 'title',
			      right: 'next today'
			 },
			 <%--select: function(startDate, endDate, jsEvent, view) {
		          
		          $(".fc-scrollgrid-sync-table").unbind('click');
		          $(".fc-scrollgrid-sync-table").on('click', 'td', function (e) {
		              
		        	  $("#contextMenu")
		              .addClass("contextOpened")
		              .css({
		                display: "block",
		                left: e.pageX,
		                top: e.pageY
		              });
		            return false;
		          });
		          
		        //날짜 클릭시 카테고리 선택메뉴
		          var $contextMenu = $("#contextMenu");
		          $contextMenu.on("click", "a", function (e) {
		            e.preventDefault();

		            //닫기 버튼이 아닐때
		            if ($(this).data().role !== 'close') {
		              newEvent(startDate, endDate, $(this).html());
		            }

		            $contextMenu.removeClass("contextOpened");
		            $contextMenu.hide();
		          });

		          $('body').on('click', function () {
		            $contextMenu.removeClass("contextOpened");
		            $contextMenu.hide();
		          });
		         
		        },--%>
		        //요일
		        dateClick : function() {
		        	 $(".fc-scrollgrid-section.fc-scrollgrid-section-body.fc-scrollgrid-section-liquid").unbind('click');
			          $(".fc-scrollgrid-section.fc-scrollgrid-section-body.fc-scrollgrid-section-liquid").on('click', 'td', function (e) {
			              
			        	  $("#contextMenu")
			              .addClass("contextOpened")
			              .css({
			                display: "block",
			                left: e.pageX,
			                top: e.pageY/3
			              });
			            return false;
			          });
			        	 
				},	
	  			// 일정 클릭 이벤트
	  			eventClick : function() {
	  				alert('일정 클릭!');
	  			},
        	events:function(info, successCallback, failureCallback){
            $.ajax({
                   url: '/getUserDiaryTest',
                   dataType: 'json',
                   success: 
                       function(result) {
                           var events = [];
                          
                           if(result!=null){
                               
                                   $.each(result, function(index, element) {
                                    
                                    var startdate=moment(element.diaryDate).format('YYYY-MM-DD');
                                    var enddate=moment(element.diaryDate).format('YYYY-MM-DD');
                                    var conditionLevel = element.bodyCondition;
                                    
                                    // 컨디션 레벨별로 color 설정
                                    if (conditionLevel == "상"){
                                        events.push({
                                               title: element.excerciseContent,
                                               start: startdate,
                                               end: enddate,
                                                  color:"#BAFFB3",
                                                  textColor : "#000000"
                                            }); //.push()
                                    }
                                    else if (conditionLevel == "중"){
                                        events.push({
                                               title: element.excerciseContent,
                                               start: startdate,
                                               end: enddate,
                                                  color:"#FFE08C" , 
                                                  textColor : "#000000"
                                            }); //.push()
                                    }
                                    
                                    else if (conditionLevel == "하"){
                                        events.push({
                                               title: element.excerciseContent,
                                               start: startdate,
                                               end: enddate,
                                                  color:"#FF9999" ,    
                                                  textColor : "#000000"
                                            }); //.push()
                                    }
                                    
                                    <%--else if (realmname == "연극"){
                                        events.push({
                                               title: element.title,
                                               start: startdate,
                                               end: enddate,
                                                  url: "${pageContext.request.contextPath }/detail.do?seq="+element.seq,
                                                  color:"#008d62"                                                   
                                            }); //.push()
                                    }
                                    
                                    else if (realmname == "음악"){
                                        events.push({
                                               title: element.title,
                                               start: startdate,
                                               end: enddate,
                                                  url: "${pageContext.request.contextPath }/detail.do?seq="+element.seq,
                                                  color:"#6937a1"                                                   
                                            }); //.push()
                                    }
                                    
                                    else{
                                        events.push({
                                               title: element.title,
                                               start: startdate,
                                               end: enddate,
                                                  url: "${pageContext.request.contextPath }/detail.do?seq="+element.seq,
                                                  color:"#ff3399"                                                   
                                            }); //.push()
                                    }--%>
                                    
                               }); //.each()
                               
                               console.log(events);
                               
                           }//if end                           
                           successCallback(events);                               
                       }//success: function end                          
            }); //ajax end
        }, //events:function end--%>
        
   });//new FullCalendar end
   //calendar.addEvent({'title':'고객1-컷팅', 'start':'2021-07-16T15:00'});
   calendar.render();
   
  });
 </script>

<script type="text/javascript">
	var left = {
		pageSubmitFn : function(menu) {
			if (menu === "home") {
				$("#frm").attr("action",
						"${pageContext.request.contextPath}/home"); //form 의 action 값을 /로 변경			
				$("#pageName").val("home");
			} else if (menu === "diary") {
				$("#frm").attr("action",
						"${pageContext.request.contextPath}/diary"); //form 의 action 값을 home2로 변경
				$("#pageName").val("diary");
			} else if (menu === "crewfind") {
				$("#frm").attr("action",
						"${pageContext.request.contextPath}/crewfind"); //form 의 action 값을 home2로 변경
				$("#pageName").val("crewfind");
			} else if (menu === "mypage") {
				$("#frm").attr("action",
						"${pageContext.request.contextPath}/mypage"); //form 의 action 값을 home2로 변경
				$("#pageName").val("mypage");
			}
			$("#frm").submit();

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
<body >
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



 


