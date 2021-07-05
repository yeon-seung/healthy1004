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
let newEvent = function () {
	let eventModal = $('#eventModal');
	
	let diaryDate = $('#diary_date');
	let bodyCondition = $('#body_condition');
	let bodyConditionDetail = $('#body_condition_detail');
	let excerciseContent = $('#excercise_content');
	
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
		language : "ko", // 화면에 출력될 언어를 한국어로 설정
		autoclose : true,
		todayHighlight : true
	}).on("changeDate", function(e){
		diaryDate.val(dateFo(e.date));
		//diaryDate.val();
	});
    /******** 임시 RAMDON ID - 실제 DB 연동시 삭제 **********/
    //var eventId = 1 + Math.floor(Math.random() * 1000);
    /******** 임시 RAMDON ID - 실제 DB 연동시 삭제 **********/

/*
    //새로운 일정 저장버튼 클릭
    $('#save-event').unbind();
    $('#save-event').on('click', function () {

        var eventData = {
            _id: eventId,
            title: editTitle.val(),
            start: diaryDate.val(),
            end: editEnd.val(),
            description: editDesc.val(),
            type: bodyCondition.val(),
            username: '사나',
            allDay: false
        };

        if (eventData.start > eventData.end) {
            alert('끝나는 날짜가 앞설 수 없습니다.');
            return false;
        }

        if (eventData.title === '') {
            alert('일정명은 필수입니다.');
            return false;
        }

        $("#calendar").fullCalendar('renderEvent', eventData, true);
        eventModal.find('input, textarea').val('');
        eventModal.modal('hide');

        //새로운 일정 저장
        $.ajax({
            type: "get",
            url: "",
            data: {
                //.....
            },
            success: function (response) {
                //DB연동시 중복이벤트 방지를 위한
                //$('#calendar').fullCalendar('removeEvents');
                //$('#calendar').fullCalendar('refetchEvents');
            }
        });
    });
*/
};