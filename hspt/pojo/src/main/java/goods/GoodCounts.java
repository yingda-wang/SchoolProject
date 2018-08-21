package goods;

import java.util.Date;

public class GoodCounts {
private int id;
private int number;
private String startTime;
private String stopTime;
private String updateTime;
private String date;
private int zId;
private String name;
private float price;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}

public int getNumber() {
	return number;
}
public void setNumber(int number) {
	this.number = number;
}

public String getStartTime() {
	return startTime;
}
public void setStartTime(String startTime) {
	this.startTime = startTime;
}
public String getStopTime() {
	return stopTime;
}
public void setStopTime(String stopTime) {
	this.stopTime = stopTime;
}

public int getzId() {
	return zId;
}
public void setzId(int zId) {
	this.zId = zId;
}

public float getPrice() {
	return price;
}
public void setPrice(float price) {
	this.price = price;
}
public String getUpdateTime() {
	return updateTime;
}
public void setUpdateTime(String updateTime) {
	this.updateTime = updateTime;
}

public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}

}
