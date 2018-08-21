package ksxs;

public class Attendancerecords {
	private int id;
	private String time;
	private String meetingName;
	private String place;
	private String schedule;
	private String data;
	private String ppt;
	private String vedio;
	private String recording;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getMeetingName() {
		return meetingName;
	}
	public void setMeetingName(String meetingName) {
		this.meetingName = meetingName;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getSchedule() {
		return schedule;
	}
	public void setSchedule(String schedule) {
		this.schedule = schedule;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getPpt() {
		return ppt;
	}
	public void setPpt(String ppt) {
		this.ppt = ppt;
	}
	public String getVedio() {
		return vedio;
	}
	public void setVedio(String vedio) {
		this.vedio = vedio;
	}
	public String getRecording() {
		return recording;
	}
	public void setRecording(String recording) {
		this.recording = recording;
	}
	@Override
	public String toString() {
		return "Computer [id=" + id + ",time=" + time + ",meetingName=" + meetingName + ",place=" + place + ",schedule=" + schedule + "data=" + data + "ppt=" + ppt + "vedio=" + vedio + "recording=" + recording + "]";
	}
}
