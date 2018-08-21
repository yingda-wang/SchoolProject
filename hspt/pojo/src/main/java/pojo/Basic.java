package pojo;

public class Basic {
	private String studyFrom;
	private String name;
	private String company;
	private String department;
	private String post;
	private String phone;
	private String studyTime;
	@Override
	public String toString() {
		return "Computer [studyFrom=" + studyFrom + ",name=" + name + ",company=" + company + ",department=" + department + ",post=" + post + ",phone=" + phone + ",studyTime=" + studyTime + "]";
	}
	public String getStudyFrom() {
		return studyFrom;
	}
	public void setStudyFrom(String studyFrom) {
		this.studyFrom = studyFrom;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getStudyTime() {
		return studyTime;
	}
	public void setStudyTime(String studyTime) {
		this.studyTime = studyTime;
	}
}

