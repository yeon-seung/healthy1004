package org.kosta.healthy.model.vo;

public class CrewVO {
	private String crewId;
	private String crewName;
	private String crewInfo;
	private String crewSize;
	private String crewLocation;
	public CrewVO() {
		super();
	}
	public CrewVO(String crewId, String crewName, String crewInfo, String crewSize, String crewLocation) {
		super();
		this.crewId = crewId;
		this.crewName = crewName;
		this.crewInfo = crewInfo;
		this.crewSize = crewSize;
		this.crewLocation = crewLocation;
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
	public String getCrewSize() {
		return crewSize;
	}
	public void setCrewSize(String crewSize) {
		this.crewSize = crewSize;
	}
	public String getCrewLocation() {
		return crewLocation;
	}
	public void setCrewLocation(String crewLocation) {
		this.crewLocation = crewLocation;
	}
	@Override
	public String toString() {
		return "CrewVO [crewId=" + crewId + ", crewName=" + crewName + ", crewInfo=" + crewInfo + ", crewSize="
				+ crewSize + ", crewLocation=" + crewLocation + "]";
	}
	
	

}
