package pojo;

import java.sql.Date;

public class Devicescrappedapplyregist {
    private Long id;

    private String devicecoding;

    private String devicename;

    private String specification;

    private Integer number;

    private Date applytime;

    private String zname;

    private String usedpostion;

    private String scrapapplicants;

    private String manager;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDevicecoding() {
        return devicecoding;
    }

    public void setDevicecoding(String devicecoding) {
        this.devicecoding = devicecoding == null ? null : devicecoding.trim();
    }

    public String getDevicename() {
        return devicename;
    }

    public void setDevicename(String devicename) {
        this.devicename = devicename == null ? null : devicename.trim();
    }

    public String getSpecification() {
        return specification;
    }

    public void setSpecification(String specification) {
        this.specification = specification == null ? null : specification.trim();
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
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
        this.zname = zname == null ? null : zname.trim();
    }

    public String getUsedpostion() {
        return usedpostion;
    }

    public void setUsedpostion(String usedpostion) {
        this.usedpostion = usedpostion == null ? null : usedpostion.trim();
    }

    public String getScrapapplicants() {
        return scrapapplicants;
    }

    public void setScrapapplicants(String scrapapplicants) {
        this.scrapapplicants = scrapapplicants == null ? null : scrapapplicants.trim();
    }

    public String getManager() {
        return manager;
    }

    public void setManager(String manager) {
        this.manager = manager == null ? null : manager.trim();
    }
}