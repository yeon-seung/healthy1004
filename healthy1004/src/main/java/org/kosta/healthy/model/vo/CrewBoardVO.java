package org.kosta.healthy.model.vo;

public class CrewBoardVO {
	private String boardId;
	private String boardTitle;
	private String boardContent;
	private String boardTime;
	public CrewBoardVO() {
		super();
	}
	public CrewBoardVO(String boardId, String boardTitle, String boardContent, String boardTime) {
		super();
		this.boardId = boardId;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardTime = boardTime;
	}
	public String getBoardId() {
		return boardId;
	}
	public void setBoardId(String boardId) {
		this.boardId = boardId;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public String getBoardTime() {
		return boardTime;
	}
	public void setBoardTime(String boardTime) {
		this.boardTime = boardTime;
	}
	@Override
	public String toString() {
		return "CrewBoardVO [boardId=" + boardId + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent
				+ ", boardTime=" + boardTime + "]";
	}
	
	
}
