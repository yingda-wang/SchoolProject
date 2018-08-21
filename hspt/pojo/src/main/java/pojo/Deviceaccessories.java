package pojo;

import java.sql.Date;

public class Deviceaccessories {
    private Long id;

    private Date savetime;

    private String devicecoding;

    private String name;

    private Integer number;

    private String place;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getSavetime() {
        return savetime;
    }

    public void setSavetime(Date savetime) {
        this.savetime = savetime;
    }

    public String getDevicecoding() {
        return devicecoding;
    }

    public void setDevicecoding(String devicecoding) {
        this.devicecoding = devicecoding == null ? null : devicecoding.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place == null ? null : place.trim();
    }
}