package pojo;

import java.sql.Date;

public class card {
private Integer id;
private String cardName;
private String major;
private Integer number;
private String photo;
private String startTime;
private String ranges;
private String stopTime;
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getCardName() {
	return cardName;
}
public void setCardName(String cardName) {
	this.cardName = cardName;
}
public String getMajor() {
	return major;
}
public void setMajor(String major) {
	this.major = major;
}
public Integer getNumber() {
	return number;
}
public void setNumber(Integer number) {
	this.number = number;
}
public String getPhoto() {
	return photo;
}
public void setPhoto(String photo) {
	this.photo = photo;
}
public String getStartTime() {
	return startTime;
}
public void setStartTime(String startTime) {
	this.startTime = startTime;
}
@Override
public String toString() {
	return "card [id=" + id + ", cardName=" + cardName + ", major=" + major + ", number=" + number + ", photo=" + photo
			+ ", startTime=" + startTime + ", ranges=" + ranges + ", stopTime=" + stopTime + "]";
}
public String getRanges() {
	return ranges;
}
public void setRanges(String ranges) {
	this.ranges = ranges;
}
public String getStopTime() {
	return stopTime;
}
public void setStopTime(String stopTime) {
	this.stopTime = stopTime;
}
}