let eventModal = $('#eventModal');

let modalTitle = $('#modal-title');
let diaryId = $('#diaryId');
let diaryDate = $('#diaryDate');
let bodyCondition = $('#bodyCondition');
let bodyConditionDetail = $('#bodyConditionDetail');
let excerciseContent = $('#excerciseContent');
let memberId = $('#memberId').val();

let addBtnContainer = $('.modalBtnContainer-addEvent');
let modifyBtnContainer = $('.modalBtnContainer-modifyEvent');



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
let newEvent = function() {

	$("#contextMenu").hide(); //메뉴 숨김
	modalTitle.html('다이어리 추가');
	
	bodyCondition.val('상');

	// 오늘 날씨 구하기
	var today = new Date();

	// 오늘 날씨를 기본으로 가지고 있도록 설정
	diaryDate.val(dateFo(today));
	bodyConditionDetail.val('');
	excerciseContent.val('');

	addBtnContainer.show();
	modifyBtnContainer.hide();
	eventModal.modal("show");

	diaryDate.datepicker({
		format: "yyyy-mm-dd",
		language: "ko", // 화면에 출력될 언어를 한국어로 설정
		autoclose: true,
		todayHighlight: true
	}).on("changeDate", function(e) {
		diaryDate.val(dateFo(e.date));
	});

	

	//새로운 일정 저장버튼 클릭
	$('#save-event').unbind();
	$('#save-event').on('click', function() {
		if(diaryDate.val()===""){
			alert("날짜를 지정해주세요");
			return;
		}else if(diaryDate.val()>dateFo(today)){
			alert("오늘까지의 운동만 기록할 수 있습니다.");
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
		
		$("#registerDiaryForm").attr("action", "/diary/registerDiary");
		$("#registerDiaryForm").submit();
		
		eventModal.modal("hide");
	});
};