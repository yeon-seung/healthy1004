/* ****************
 *  일정 상세 조회
 * ************** */
let detailEvent = function (calEvent, element, view) {

    $('.popover.fade.top').remove();
    $(element).popover("hide");
    modalTitle.html('다이어리 상세 및 수정');
	//일정 들고오기
	var date = calEvent.event.start;
	var condition = calEvent.event.type;
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
		//diaryDate.val();
	});
	
    addBtnContainer.hide();
    modifyBtnContainer.show();
    eventModal.modal('show');
};