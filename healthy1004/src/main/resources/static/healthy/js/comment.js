//댓글 리스트
function commentList(){
	$.ajax({
				type: "get",
				url: "/findCommentListByBoardId?boardId="+$("#boardId").val(),
				dataType: "JSON",
				success: function(list){
					console.log(list);
					$("#commentResult").empty();
					for(let i=0; i<list.length; i++){
						$("#commentResult").append(
							"<div class='staff' style='margin: 0 1rem -1rem 1rem;'>"
							+ "<div class='text pt-3'>"
							+ "<p style='color: #4986fc; float: left;'>"	
							+ list[i].memberId + "</p>"	
							+ "<p style='color: black; float: left;'>"	
							+ "&nbsp: " + list[i].commentContent + "</p>"		
							+ "<p style='float: right;'>작성일시 : " + list[i].regDate + "</p>"
							+ "</div></div><br>"
						);
					}
				}//success :function
			})//$.ajax
} // commentList()

$('[name=commentInsertBtn]').click(function(){ //댓글 등록 버튼 클릭시 
    var insertData = $('[name=commentInsertForm]').serialize(); //commentInsertForm의 내용을 가져옴
    commentInsert(insertData); //Insert 함수호출(아래)
});

// 댓글입력창에서 엔터키 눌러도 댓글등록 되도록
$('[name=commentContent]').keypress(function(event){
	if ( event.which == 13 ) {
		$('[name=commentInsertBtn]').click();
		return false;
	}
});

//댓글 입력
function commentInsert(insertData){
	$.ajax({
        url : '/insertComment',
        type : 'post',
        data : insertData,
        success : function(){
				commentList(); //댓글 작성 후 댓글 목록 reload
                $('[name=commentContent]').val('');
            }
        
    });

}

$(document).ready(function() {
	commentList();
	});//$(document).ready(function() {
