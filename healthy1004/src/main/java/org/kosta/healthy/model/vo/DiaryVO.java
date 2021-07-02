package org.kosta.healthy.model.vo;

public class DiaryVO {
	private String diaryId;
	private String diaryDate;
	private String bodyCondition;
	private String bodyConditionDetail;
	private String excerciseContent;
	public DiaryVO() {
		super();
	}
	
	public DiaryVO(String diaryId, String diaryDate, String bodyCondition, String bodyConditionDetail,
			String excerciseContent) {
		super();
		this.diaryId = diaryId;
		this.diaryDate = diaryDate;
		this.bodyCondition = bodyCondition;
		this.bodyConditionDetail = bodyConditionDetail;
		this.excerciseContent = excerciseContent;
	}

	public String getDiaryId() {
		return diaryId;
	}
	public void setDiaryId(String diaryId) {
		this.diaryId = diaryId;
	}
	public String getDiaryDate() {
		return diaryDate;
	}
	public void setDiaryDate(String diaryDate) {
		this.diaryDate = diaryDate;
	}
	public String getBodyCondition() {
		return bodyCondition;
	}
	public void setBodyCondition(String bodyCondition) {
		this.bodyCondition = bodyCondition;
	}
	public String getBodyConditionDetail() {
		return bodyConditionDetail;
	}
	public void setBodyConditionDetail(String bodyConditionDetail) {
		this.bodyConditionDetail = bodyConditionDetail;
	}
	public String getExcerciseContent() {
		return excerciseContent;
	}
	public void setExcerciseContent(String excerciseContent) {
		this.excerciseContent = excerciseContent;
	}

	@Override
	public String toString() {
		return "DiaryVO [diaryId=" + diaryId + ", diaryDate=" + diaryDate + ", bodyCondition=" + bodyCondition
				+ ", bodyConditionDetail=" + bodyConditionDetail + ", excerciseContent=" + excerciseContent + "]";
	}
	
	

}
