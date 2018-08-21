package pojo;

import java.sql.Date;

public class DevSbSear {
	private long id;
	private String devicecoding;
	private String devicename;
	private String specification;
	private int number;
	private Date applytime;
	private String zname;
	private int zid;
	@Override
	public String toString() {
		return "DevSbSear [id=" + id + ", devicecoding=" + devicecoding + ", devicename=" + devicename
				+ ", specification=" + specification + ", number=" + number + ", applytime=" + applytime + ", zname="
				+ zname + ", zid=" + zid + ", usedpostion=" + usedpostion + ", scrapapplicants=" + scrapapplicants
				+ ", manager=" + manager + "]";
	}
	private String usedpostion;
	private String scrapapplicants;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getDevicecoding() {
		return devicecoding;
	}
	public void setDevicecoding(String devicecoding) {
		this.devicecoding = devicecoding;
	}
	public String getDevicename() {
		return devicename;
	}
	public void setDevicename(String devicename) {
		this.devicename = devicename;
	}
	public String getSpecification() {
		return specification;
	}
	public void setSpecification(String specification) {
		this.specification = specification;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public Date getApplytime() {
		return applytime;
	}
	public void setApplytime(Date applytime) {
		this.applytime = applytime;
	}
	public String getZname() {
		return zname;
	}
	public void setZname(String zname) {
		this.zname = zname;
	}
	public int getZid() {
		return zid;
	}
	public void setZid(int zid) {
		this.zid = zid;
	}
	public String getUsedpostion() {
		return usedpostion;
	}
	public void setUsedpostion(String usedpostion) {
		this.usedpostion = usedpostion;
	}
	public String getScrapapplicants() {
		return scrapapplicants;
	}
	public void setScrapapplicants(String scrapapplicants) {
		this.scrapapplicants = scrapapplicants;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	private String manager;
}
