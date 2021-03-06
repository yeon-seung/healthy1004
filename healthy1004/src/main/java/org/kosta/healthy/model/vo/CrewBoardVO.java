package org.kosta.healthy.model.vo;

public class CrewBoardVO {
	private String boardId;
	private String memberId; // memberId 추가
	private String crewId;	 // crewId도 추가
	private String boardTitle;
	private String boardContent;
	private String boardTime;
	private String boardImg;
	private String boardThumbImg;
	
	public CrewBoardVO() {
		super();
	}
	public CrewBoardVO(String boardId, String memberId, String crewId, String boardTitle, String boardContent,
			String boardTime, String boardImg, String boardThumbImg) {
		super();
		this.boardId = boardId;
		this.memberId = memberId;
		this.crewId = crewId;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardTime = boardTime;
		this.boardImg = boardImg;
		this.boardThumbImg = boardThumbImg;
	}
	public String getBoardId() {
		return boardId;
	}
	public void setBoardId(String boardId) {
		this.boardId = boardId;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getCrewId() {
		return crewId;
	}
	public void setCrewId(String crewId) {
		this.crewId = crewId;
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
	public String getBoardImg() {
		return boardImg;
	}
	public void setBoardImg(String boardImg) {
		this.boardImg = boardImg;
	}
	public String getBoardThumbImg() {
		return boardThumbImg;
	}
	public void setBoardThumbImg(String boardThumbImg) {
		this.boardThumbImg = boardThumbImg;
	}
	
	@Override
	public String toString() {
		return "CrewBoardVO [boardId=" + boardId + ", memberId=" + memberId + ", crewId=" + crewId + ", boardTitle="
				+ boardTitle + ", boardContent=" + boardContent + ", boardTime=" + boardTime + ", boardImg=" + boardImg
				+ ", boardThumbImg=" + boardThumbImg + "]";
	}
	
}