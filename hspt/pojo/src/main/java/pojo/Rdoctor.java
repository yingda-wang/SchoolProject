package pojo;

public class Rdoctor {
	private String base;
	private String name;
	private String grade;
	private String major;
	private String phone;
	private String entryTime;
	private String leaveTime;
	@Override
	public String toString() {
		return "Computer [base=" + base + ",name=" + name + ",grade=" + grade + ",major=" + major + ",phone=" + phone + ",entryTime=" + entryTime + ",leaveTime=" + leaveTime + "]";
	}
	public String getBase() {
		return base;
	}
	public void setBase(String base) {
		this.base = base;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEntryTime() {
		return entryTime;
	}
	public void setEntryTime(String entryTime) {
		this.entryTime = entryTime;
	}
	public String getLeaveTime() {
		return leaveTime;
	}
	public void setLeaveTime(String leaveTime) {
		this.leaveTime = leaveTime;
	}
}
