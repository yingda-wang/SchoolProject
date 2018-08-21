package pojo;

import java.sql.Date;


public class gfile {
private Integer id;
private String oName;
private String operation;
private String oVersion;
private Integer gId;
private String zName;
private String person;
private String time;
private String text;

public String getzName() {
	return zName;
}
public void setzName(String zName) {
	this.zName = zName;
}
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getoName() {
	return oName;
}
public void setoName(String oName) {
	this.oName = oName;
}
public String getOperation() {
	return operation;
}
public void setOperation(String operation) {
	this.operation = operation;
}
public String getoVersion() {
	return oVersion;
}
public void setoVersion(String oVersion) {
	this.oVersion = oVersion;
}
public Integer getgId() {
	return gId;
}
public void setgId(Integer gId) {
	this.gId = gId;
}
public String getPerson() {
	return person;
}
public void setPerson(String person) {
	this.person = person;
}
public String getTime() {
	return time;
}
public void setTime(String time) {
	this.time = time;
}
public String getText() {
	return text;
}
public void setText(String text) {
	this.text = text;
}
@Override
public String toString() {
	return "gfile [id=" + id + ", oName=" + oName + ", operation=" + operation + ", oVersion=" + oVersion + ", gId="
			+ gId + ", person=" + person + ", time=" + time + ", text=" + text + "]";
}

}