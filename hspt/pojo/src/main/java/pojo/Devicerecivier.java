package pojo;

import java.util.Date;

public class Devicerecivier {
    private Long id;

    private Date date;

    private String receiver;

    private String devicename;

    private String devicecoding;

    private Integer number;

    private String tempsavepolice;

    private Long nowremain;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getReceiver() {
        return receiver;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver == null ? null : receiver.trim();
    }

    public String getDevicename() {
        return devicename;
    }

    public void setDevicename(String devicename) {
        this.devicename = devicename == null ? null : devicename.trim();
    }

    public String getDevicecoding() {
        return devicecoding;
    }

    public void setDevicecoding(String devicecoding) {
        this.devicecoding = devicecoding == null ? null : devicecoding.trim();
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public String getTempsavepolice() {
        return tempsavepolice;
    }

    public void setTempsavepolice(String tempsavepolice) {
        this.tempsavepolice = tempsavepolice == null ? null : tempsavepolice.trim();
    }

    public Long getNowremain() {
        return nowremain;
    }

    public void setNowremain(Long nowremain) {
        this.nowremain = nowremain;
    }

	@Override
	public String toString() {
		return "Devicerecivier [id=" + id + ", date=" + date + ", receiver=" + receiver + ", devicename=" + devicename
				+ ", devicecoding=" + devicecoding + ", number=" + number + ", tempsavepolice=" + tempsavepolice
				+ ", nowremain=" + nowremain + "]";
	}
    
}