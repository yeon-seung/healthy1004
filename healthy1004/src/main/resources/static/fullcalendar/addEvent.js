// 날짜 포맷 정리 함수
function dateFo(date) {
	var year = date.getFullYear().toString();
	var month = date.getMonth() + 1;
	month = month < 10 ? '0' + month.toString() : month.toString();
	var day = date.getDate();
	day = day < 10 ? '0' + day.toString() : day.toString();
	return year + '-' + month + '-' + day;
}

/* ****************
 *  새로운 일정 생성
 * ************** */
let eventModal = $('#eventModal');

let diaryDate = $('#diary_date');
let bodyCondition = $('#body_condition');
let bodyConditionDetail = $('#body_condition_detail');
let excerciseContent = $('#excercise_content');

let newEvent = function() {
	//let addBtnContainer = $('.modalBtnContainer-addEvent');
	//let modifyBtnContainer = $('.modalBtnContainer-modifyEvent');

	$("#contextMenu").hide(); //메뉴 숨김

	//alert(eventType);

	bodyCondition.val('상');

	// 오늘 날씨 구하기
	var today = new Date();

	// 오늘 날씨를 기본으로 가지고 있도록 설정
	diaryDate.val(dateFo(today));
	bodyConditionDetail.val('');
	excerciseContent.val('');

	eventModal.modal("show");

	diaryDate.datepicker({
		format: "yyyy-mm-dd",
		language: "ko", // 화면에 출력될 언어를 한국어로 설정
		autoclose: true,
		todayHighlight: true
	}).on("changeDate", function(e) {
		diaryDate.val(dateFo(e.date));
		//diaryDate.val();
	});

	//새로운 일정 저장버튼 클릭
	$('#save-event').unbind();
	$('#save-event').on('click', function() {
		//salert("안냥하세요");
		var eventData = { // 회원 id는..?
			memberId : 'java',	// 추후에 memberId가져오기
			diaryDate : diaryDate.val(),
			bodyCondition: bodyCondition.val(),
			bodyConditionDetail: bodyConditionDetail.val(),
			excerciseContent: excerciseContent.val()
		};
		//alert(eventData.memberId);
		//alert(eventData.diaryDate);
		//alert(eventData.bodyCondition);
		//alert(eventData.bodyConditionDetail);
		//alert(eventData.excerciseContent);

		if (eventData.bodyConditionDetail === '') {
			alert('컨디션 설명은 필수입니다.');
			return false;
		}

			//$("#calendar").addEvent( {'title': eventData.bodyConditionDetail, 'start': eventData.diaryDate}); // 얘도 안먹음
		//$("#calendar").addEvent(eventData);	// 얘도 안먹어
		//$("#calendar").fullCalendar('eventRender', eventData, true);		// 이거 안먹음 v3?
		//$('#calendar').fullCalendar('renderEvent', eventData, true);		// 이것도 안댕 v4?
		//eventModal.find('input, textarea').val('');
		//$("#calendar").rerenderEvents()
		
		//$("#calendar").fullCalendar('renderEvent', eventData, true);
		eventModal.modal("hide");

		//새로운 일정 저장 (DB에 저장)
		$.ajax({
			type: "POST",
			url: "diary/registerDiary",
			data: eventData,
			dataType: 'text',
			success: function() {
				alert("안냥"); 	// 왜 안돼 ㅠ
				calender.render();
				//DB연동시 중복이벤트 방지를 위한 (리로드 해줌.) // 지금 안먹엉 ㅠㅠ
				//$('#calendar').fullCalendar('removeEvents');// 안먹어
				//$("#calendar").refetchEvents();	// 안먹어
				//calendar.refetchEvents();	// 안먹어
				//alert("안냥333333333"); 
				//$("#calendar").fullCalendar('destroy'); // 기존 fullcalendar 삭제
				//getEvents	();
				//$("#calendar").refetchEvents()
				//$("#calendar").getEventSources().refetch(); //안먹어
				//$("#calendar").addEvent(eventData);
				//alert(document.getElementById('calendar').fullCalendar("destroy"));
				
				alert("리로드하라고~~");
			}
		});
		
		// 이제 할 일...
		// memberId 받아와서 넣기!!!!
		// event 뿌리기
	});
};