/* ****************
 *  일정 상세 조회
 * ************** */
let detailEvent = function (calEvent, element, view) {

    $('.popover.fade.top').remove();
    $(element).popover("hide");
    modalTitle.html('다이어리 상세 및 수정');
	
	//상세 정보 들고오기
	var date = calEvent.event.start;
	var diaryid =calEvent.event._def.extendedProps.diaryid; 
	diaryId.val(diaryid);
	diaryDate.val(dateFo(date));
	bodyCondition.val(calEvent.event._def.extendedProps.type);
	bodyConditionDetail.val(calEvent.event._def.extendedProps.detail);
	excerciseContent.val(calEvent.event.title);
	
	
	diaryDate.datepicker({
		format: "yyyy-mm-dd",
		language : "ko", // 화면에 출력될 언어를 한국어로 설정
		autoclose : true,
		todayHighlight : true
	}).on("changeDate", function(e){
		diaryDate.val(dateFo(e.date));
	});
	
    addBtnContainer.hide();
    modifyBtnContainer.show();
    eventModal.modal('show');

	//업데이트 버튼 클릭시
    $('#updateEvent').unbind();
    $('#updateEvent').on('click', function () {
		
		if(diaryDate.val()===""){
			alert("날짜를 지정해주세요");
			return;
		}
		if(bodyConditionDetail.val()===""){
			alert("컨디션 설명을 기재해주세요");
			return;
		}
		// excerciseContent.val()에 아무것도 없으면
		if(excerciseContent.val()===""){
			excerciseContent.val('운동안함');
		}
		
		$("#registerDiaryForm").attr("action", "/diary/updateDiary");
		$("#registerDiaryForm").submit();

        eventModal.modal('hide');
    });

	// 삭제버튼
	$('#deleteEvent').on('click', function () {
	    
	    $('#deleteEvent').unbind();

		$("#registerDiaryForm").attr("action", "/diary/deleteDiary");
		$("#registerDiaryForm").submit();
		

	    eventModal.modal('hide');
	});

};
