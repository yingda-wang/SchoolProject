package pojo;

public class Gstudent {
	private String name;
	private String grade;
	private String major;
	private String phone;
	private String entryTime;
	private String leaveTime;
	private int id;
	@Override
	public String toString() {
		return "Computer [name=" + name + ",grade=" + grade + ",major=" + major + ",phone=" + phone + ",entryTime=" + entryTime + ",leaveTime=" + leaveTime + ",id=" + id + "]";
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
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
}
