package wz;

import java.sql.Date;

public class WzApply {
	private String name;
	private int number;
	private int wzId;
    private String arriveTime;
    private Integer dId;
    private String type;
    public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	private String ifYes;
    private String updateTime;
	private int id;
	private String state;
	private double price;
	public int getWzId() {
		return wzId;
	}
	public void setWzId(int wzId) {
		this.wzId = wzId;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getArriveTime() {
		return arriveTime;
	}
	public void setArriveTime(String arriveTime) {
		this.arriveTime = arriveTime;
	}
	public Integer getdId() {
		return dId;
	}
	public void setdId(Integer dId) {
		this.dId = dId;
	}
	public String getIfYes() {
		return ifYes;
	}
	public void setIfYes(String ifYes) {
		this.ifYes = ifYes;
	}
	
	

    public String getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}

	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
