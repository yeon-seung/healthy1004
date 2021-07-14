package org.kosta.healthy.model.vo;

public class CommentVO {
	private String commentId;
	private String commentContent;
	private String memberId;
	private int crewId;
	private int boardId;
	private String regDate;
	
	public CommentVO() {
		super();
	}

	public CommentVO(String commentId, String commentContent, String memberId, int crewId, int boardId,
			String regDate) {
		super();
		this.commentId = commentId;
		this.commentContent = commentContent;
		this.memberId = memberId;
		this.crewId = crewId;
		this.boardId = boardId;
		this.regDate = regDate;
	}

	public String getCommentId() {
		return commentId;
	}

	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getCrewId() {
		return crewId;
	}

	public void setCrewId(int crewId) {
		this.crewId = crewId;
	}

	public int getBoardId() {
		return boardId;
	}

	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "CommentVO [commentId=" + commentId + ", commentContent=" + commentContent + ", memberId=" + memberId
				+ ", crewId=" + crewId + ", boardId=" + boardId + ", regDate=" + regDate + "]";
	}
	
	
	
	

	
	
}