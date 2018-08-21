package ksxs;

public class Expertguidance {
	private String id;
	private String time;
	private String type;
	private String company;
	private String department;
	private String specialist;
	private String title;
	private String photoSave;
	@Override
	public String toString() {
		return "Computer [id=" + id + ",time=" + time + ",type=" + type + ",company=" + company + ",department=" + department + ",specialist=" + specialist + ",title=" + title + ",photoSave=" + photoSave + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
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
	public String getSpecialist() {
		return specialist;
	}
	public void setSpecialist(String specialist) {
		this.specialist = specialist;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPhotoSave() {
		return photoSave;
	}
	public void setPhotoSave(String photoSave) {
		this.photoSave = photoSave;
	}
}
