package jl;

import java.io.Serializable;
import java.sql.Date;

public class DeviceSea implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long id;
	private String brand;
	private String cardName;
	private String cname;
	private String model;
	private String name;
	private int number;
	private String position;
	private String sbid;
	private String state;
	private String text;
	private String zname;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getBrand() {
		return brand;
	}
	public void setBand(String band) {
		this.brand = band;
	}
	public String getCardName() {
		return cardName;
	}
	public void setCardName(String cardName) {
		this.cardName = cardName;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getSbid() {
		return sbid;
	}
	public void setSbid(String sbid) {
		this.sbid = sbid;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getZname() {
		return zname;
	}
	public void setZname(String zname) {
		this.zname = zname;
	}
	public Date getTime2() {
		return time2;
	}
	public void setTime2(Date time2) {
		this.time2 = time2;
	}
	public Date getTime1() {
		return time1;
	}
	public void setTime1(Date time1) {
		this.time1 = time1;
	}
	private Date time2;
	private Date time1;
	@Override
	public String toString() {
		return "DeviceSea [id=" + id + ", brand=" + brand + ", cardName=" + cardName + ", cname=" + cname + ", model="
				+ model + ", name=" + name + ", number=" + number + ", position=" + position + ", sbid=" + sbid
				+ ", state=" + state + ", text=" + text + ", zname=" + zname + ", time2=" + time2 + ", time1=" + time1
				+ "]";
	}
}
