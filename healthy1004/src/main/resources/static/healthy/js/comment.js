$(document).ready(function() {
		// 로딩시 모든 크루 위치 마커 표시
		$.ajax({
				type: "get",
				url: "/findCommentListByBoardId?boardId="+$("#boardId").val(),
				dataType: "JSON",
				success: function(list){
					console.log(list);
					for(let i=0; i<list.length; i++){
						$("#commentResult").append(
							list[i].crewId
						);
					}
				}//success :function
			})//$.ajax
	});