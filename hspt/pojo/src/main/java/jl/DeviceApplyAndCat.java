package jl;

import java.sql.Date;

public class DeviceApplyAndCat {
	private long id;
	private String name;
	private int did;
	private Date arrivetime;
	private String applicant;
	private double number;
	public String getApplicant() {
		return applicant;
	}
	public void setApplicant(String applicant) {
		this.applicant = applicant;
	}
	public double getNumber() {
		return number;
	}
	public void setNumber(double number) {
		this.number = number;
	}
	private String ifyes;
	private String type;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public Date getArrivetime() {
		return arrivetime;
	}
	public void setArrivetime(Date arrivetime) {
		this.arrivetime = arrivetime;
	}
	public String getIfyes() {
		return ifyes;
	}
	public void setIfyes(String ifyes) {
		this.ifyes = ifyes;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "DeviceApplyAndCat [id=" + id + ", name=" + name + ", did=" + did + ", arrivetime=" + arrivetime
				+ ", applicant=" + applicant + ", number=" + number + ", ifyes=" + ifyes + ", type=" + type + "]";
	}
}
