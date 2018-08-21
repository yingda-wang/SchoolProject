package jl;

public class Cs {
	private String devicename;
	private String specification;
	private int zid;
	private String zname;
	
	
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
	public int getZid() {
		return zid;
	}
	public void setZid(int zid) {
		this.zid = zid;
	}
	public String getZname() {
		return zname;
	}
	public void setZname(String zname) {
		this.zname = zname;
	}
	@Override
	public String toString() {
		return "Cs [deviceName=" + devicename + ", specification=" + specification + ", zid=" + zid + ", zname=" + zname
				+ "]";
	}
}
