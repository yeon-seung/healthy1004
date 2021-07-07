/* ****************
 *  일정 상세 조회
 * ************** */
let detailEvent = function (calEvent, element, view) {

    $('.popover.fade.top').remove();
    $(element).popover("hide");
    modalTitle.html('다이어리 상세 및 수정');
	
	console.log(calEvent.event);
	//상세 정보 들고오기
	var date = calEvent.event.start;
	var diaryid =calEvent.event._def.extendedProps.diaryid; 
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

	//업데이트 버튼 클릭시
    $('#updateEvent').unbind();
    $('#updateEvent').on('click', function () {
		
		// excerciseContent.val()에 아무것도 없으면
		if(excerciseContent.val()===""||excerciseContent.val()===null){
			excerciseContent.val() = '운동안함';
		}
		
		var eventData = { // 회원 id는..?
			memberId: 'java',	// 추후에 memberId가져오기
			diaryId: diaryid,
			diaryDate: diaryDate.val(),
			bodyCondition: bodyCondition.val(),
			bodyConditionDetail: bodyConditionDetail.val(),
			excerciseContent: excerciseContent.val()
		};
		
   		if (eventData.bodyConditionDetail === '') {
			alert('컨디션 설명은 필수입니다.');
			return false;
		}

        eventModal.modal('hide');

        //일정 업데이트
        $.ajax({
            type: "POST",
            url: "/diary/updateDiary",
            data: eventData,
			dataType: 'text',
			success: function() {
                alert('수정되었습니다.')
            }
        });

    });

	// 삭제버튼
	$('#deleteEvent').on('click', function () {
	    
	    $('#deleteEvent').unbind();
	    eventModal.modal('hide');
		
		var deleteData = {
			memberId: 'java',	// 추후에 memberId가져오기
			diaryId: diaryid
		};
		
		console.log(deleteData);
		
	    //삭제시
	    $.ajax({
	        type: "POST",
	        url: "/diary/deleteDiary",
	        data: deleteData,
			dataType: 'text',
			success: function() {
	            alert('삭제되었습니다.')
	        }
	    });
	});

};
