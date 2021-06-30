package org.kosta.healthy.model.vo;

public class MemberVO {
	private String memberId;
	private String password;
	private String memberName;
	private String address;
	private String email;
	private String height;
	private String weight;
	private String age;
	private String phone;
	private String enabled;
	public MemberVO() {
		super();
	}
	public MemberVO(String memberId, String password, String memberName, String address, String email, String height,
			String weight, String age, String phone, String enabled) {
		super();
		this.memberId = memberId;
		this.password = password;
		this.memberName = memberName;
		this.address = address;
		this.email = email;
		this.height = height;
		this.weight = weight;
		this.age = age;
		this.phone = phone;
		this.enabled = enabled;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHeight() {
		return height;
	}
	public void setHeight(String height) {
		this.height = height;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEnabled() {
		return enabled;
	}
	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}
	@Override
	public String toString() {
		return "MemberVO [memberId=" + memberId + ", password=" + password + ", memberName=" + memberName + ", address="
				+ address + ", email=" + email + ", height=" + height + ", weight=" + weight + ", age=" + age
				+ ", phone=" + phone + ", enabled=" + enabled + "]";
	}
	
	

}
