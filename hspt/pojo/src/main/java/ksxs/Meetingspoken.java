package ksxs;

public class Meetingspoken {
	private String year;
	private String meetingName;
	private String holdTime;
	private String place;
	private String spokeMan;
	private String title;
	private String courseSave;
	private String photoSave;
	private int id;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCourseSave() {
		return courseSave;
	}
	public void setCourseSave(String courseSave) {
		this.courseSave = courseSave;
	}
	public String getPhotoSave() {
		return photoSave;
	}
	public void setPhotoSave(String photoSave) {
		this.photoSave = photoSave;
	}
	@Override
	public String toString() {
		return "Computer [year=" + year + ",meetingName=" + meetingName + ",holdTime=" + holdTime + ",place=" + place + ",spokeMan=" + spokeMan + ",title=" + title + ",courseSave=" + courseSave + ",photoSave=" + photoSave + "]";
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMeetingName() {
		return meetingName;
	}
	public void setMeetingName(String meetingName) {
		this.meetingName = meetingName;
	}
	public String getHoldTime() {
		return holdTime;
	}
	public void setHoldTime(String holdTime) {
		this.holdTime = holdTime;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getSpokeMan() {
		return spokeMan;
	}
	public void setSpokeMan(String spokeMan) {
		this.spokeMan = spokeMan;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
}
