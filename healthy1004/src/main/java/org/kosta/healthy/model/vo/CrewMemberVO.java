package org.kosta.healthy.model.vo;

public class CrewMemberVO {
   private String memberId;
   private String crewId;
   private String joinDate;
   
   public CrewMemberVO() {
      super();
   }

   public CrewMemberVO(String memberId, String crewId, String joinDate) {
      super();
      this.memberId = memberId;
      this.crewId = crewId;
      this.joinDate = joinDate;
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

   public String getJoinDate() {
      return joinDate;
   }

   public void setJoinDate(String joinDate) {
      this.joinDate = joinDate;
   }

   @Override
   public String toString() {
      return "CrewMemberVO [memberId=" + memberId + ", crewId=" + crewId + ", joinDate=" + joinDate + "]";
   }
   
   
   
   

}