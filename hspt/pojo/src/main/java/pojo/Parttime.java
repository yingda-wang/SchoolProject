package pojo;

import java.sql.Date;

public class Parttime {
    private Integer id;

    private String meeting;

    private String specializedMeet;

    private String duty;

    private Date time;

    private String photo;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMeeting() {
        return meeting;
    }

    public void setMeeting(String meeting) {
        this.meeting = meeting == null ? null : meeting.trim();
    }

    public String getspecializedMeet() {
        return specializedMeet;
    }

    public void setspecializedMeet(String specializedMeet) {
        this.specializedMeet = specializedMeet == null ? null : specializedMeet.trim();
    }

    public String getDuty() {
        return duty;
    }

    public void setDuty(String duty) {
        this.duty = duty == null ? null : duty.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo == null ? null : photo.trim();
    }

	@Override
	public String toString() {
		return "Parttime [id=" + id + ", meeting=" + meeting + ", specializedMeet=" + specializedMeet + ", duty=" + duty
				+ ", time=" + time + ", photo=" + photo + "]";
	}
}