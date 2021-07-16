//댓글 리스트
function commentList(){
	$.ajax({
				type: "get",
				url: "/findCommentListByBoardId?boardId="+$("#boardId").val(),
				dataType: "JSON",
				success: function(list){
					console.log(list);
					for(let i=0; i<list.length; i++){
						$("#commentResult").append(
							'내용 : '+list[i].commentContent
							+ '<br>'							
							+'작성자 :' + list[i].memberId
							+ '<br>'
							+'작성시간 :' + list[i].regDate
							+ '<br>'
							+ '<br>'
						);
					}
				}//success :function
			})//$.ajax
} // commentList()

$('[name=commentInsertBtn]').click(function(){ //댓글 등록 버튼 클릭시 
    var insertData = $('[name=commentInsertForm]').serialize(); //commentInsertForm의 내용을 가져옴
    commentInsert(insertData); //Insert 함수호출(아래)
});

//댓글 입력
function commentInsert(insertData){
	$.ajax({
        url : '/insertComment',
        type : 'post',
        data : insertData,
        success : function(data){
            if(data == "success") {
				alert(commentList);
                commentList(); //댓글 작성 후 댓글 목록 reload
                $('[name=commentContent]').val('');
            }
        },
		error:function(request,status,error){
            alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
       }
    });

}

$(document).ready(function() {
	commentList();
	});//$(document).ready(function() {
