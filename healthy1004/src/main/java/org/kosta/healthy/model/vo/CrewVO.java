package org.kosta.healthy.model.vo;

public class CrewVO {
	private String crewId;
	private String crewName;
	private String crewInfo;
	private int crewSize;
	private int crewMemberCount;
	private String crewLocation;
	private String crewImg;
	private String crewThumbImg;
	
	public CrewVO() {
		super();
	}
	public CrewVO(String crewId, String crewName, String crewInfo, int crewSize, int crewMemberCount, String crewLocation, String crewImg, String crewThumbImg) {
		super();
		this.crewId = crewId;
		this.crewName = crewName;
		this.crewInfo = crewInfo;
		this.crewSize = crewSize;
		this.crewMemberCount = crewMemberCount;
		this.crewLocation = crewLocation;
		this.crewImg = crewImg;
		this.crewThumbImg = crewThumbImg;
	}
	public String getCrewId() {
		return crewId;
	}
	public void setCrewId(String crewId) {
		this.crewId = crewId;
	}
	public String getCrewName() {
		return crewName;
	}
	public void setCrewName(String crewName) {
		this.crewName = crewName;
	}
	public String getCrewInfo() {
		return crewInfo;
	}
	public void setCrewInfo(String crewInfo) {
		this.crewInfo = crewInfo;
	}
	public int getCrewSize() {
		return crewSize;
	}
	public void setCrewSize(int crewSize) {
		this.crewSize = crewSize;
	}
	public String getCrewLocation() {
		return crewLocation;
	}
	public void setCrewLocation(String crewLocation) {
		this.crewLocation = crewLocation;
	}
	public int getCrewMemberCount() {
		return crewMemberCount;
	}
	public void setCrewMemberCount(int crewMemberCount) {
		this.crewMemberCount = crewMemberCount;
	}
	public String getCrewImg() {
		return crewImg;
	}
	public void setCrewImg(String crewImg) {
		this.crewImg = crewImg;
	}
	public String getCrewThumbImg() {
		return crewThumbImg;
	}
	public void setCrewThumbImg(String crewThumbImg) {
		this.crewThumbImg = crewThumbImg;
	}
	
	@Override
	public String toString() {
		return "CrewVO [crewId=" + crewId + ", crewName=" + crewName + ", crewInfo=" + crewInfo + ", crewSize="
				+ crewSize + ", crewMemberCount=" + crewMemberCount + ", crewLocation=" + crewLocation + "]";
	}

}
