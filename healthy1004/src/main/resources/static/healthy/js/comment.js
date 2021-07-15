$(document).ready(function() {
	commentList();
	});//$(document).ready(function() {
		
function commentList(){
	$.ajax({
				type: "get",
				url: "/findCommentListByBoardId?boardId="+$("#boardId").val(),
				dataType: "JSON",
				success: function(list){
					console.log(list);
					for(let i=0; i<list.length; i++){
						$("#commentResult").append(
							'내용'+list[i].commentContent
							+ '<br>'
							+'작성자' + list[i].memberId
						);
					}
				}//success :function
			})//$.ajax
} // commentList()

function commentInsert(insertData){
	$.ajax({
        url : '/insertComment',
        type : 'post',
        data : insertData,
        success : function(data){
            if(data == 1) {
                commentList(); //댓글 작성 후 댓글 목록 reload
                $('[name=content]').val('');
            }
        }
    });

}