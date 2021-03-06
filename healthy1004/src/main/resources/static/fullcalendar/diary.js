document.addEventListener(
	'DOMContentLoaded',
	function() {
		var calendarEl = document.getElementById('calendar');
		var calendar = new FullCalendar.Calendar(
			calendarEl,
			{
				
				initialView: 'dayGridMonth',
				dayMaxEvents: 2,	// 2개까지만 보이고 3개 이상부터는 more로
				selectable: true, // 선택 가능하도록
				// 달력 툴
				headerToolbar: {
					left: 'prev',
					center: 'title',
					right: 'next today addEventButton'
				},
				customButtons: { // 커스텀 버튼
					addEventButton: {
						text: '운동 기록하기',
						click: function() {
							newEvent();
						}
					}
				},
				// 일정 클릭 이벤트
				eventClick: function (calEvent, jsEvent, view) {
					 detailEvent(calEvent);
					 
				},
				events: function(info, successCallback, failureCallback) {
					$.ajax({
						type:"post",
						url:"/getUserDiary",	
						dataType: 'json',
						data:"memberId="+memberId,
						success:
							function(result) {
								var events = [];

								if (result != null) {
									
									$.each(result, function(index, element) {
										
										var startdate = moment(element.diaryDate).format('YYYY-MM-DD');
										var enddate = moment(element.diaryDate).format('YYYY-MM-DD');
										var conditionLevel = element.bodyCondition;
										console.log(element);
											
										// 컨디션 레벨별로 color 설정
										if (conditionLevel == "상") {
											events.push({
												diaryid:element.diaryId,
												title: element.excerciseContent,
												start: startdate,
												end: enddate,
												type : conditionLevel,
												detail:element.bodyConditionDetail,
												color: "#BAFFB3",
												textColor: "#000000"
											}); //.push()
										}
										else if (conditionLevel == "중") {
											events.push({
												diaryid:element.diaryId,
												title: element.excerciseContent,
												start: startdate,
												end: enddate,
												type : conditionLevel,
												detail:element.bodyConditionDetail,
												color: "#FFE08C",
												textColor: "#000000"
											}); //.push()
										}

										else if (conditionLevel == "하") {
											events.push({
												diaryid:element.diaryId,
												title: element.excerciseContent,
												start: startdate,
												end: enddate,
												type : conditionLevel,
												detail:element.bodyConditionDetail,
												color: "#FF9999",
												textColor: "#000000"
											}); //.push()
										}

									}); //.each()

									console.log(events);

								}//if end                           
								successCallback(events);
							}//success: function end                          
					}); //ajax end
				} //events:function end--%>

			});//new FullCalendar end
		//calendar.addEvent({'title':'고객1-컷팅', 'start':'2021-07-16T15:00'});
		calendar.render();

	});// dom ready end