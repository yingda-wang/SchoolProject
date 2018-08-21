package pojo;

import java.sql.Date;

public class Devicemaintenance {
    private Long id;

    private String mid;

    private String model;

    private Date time1;

    private Date time2;

    private Integer time3;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getMid() {
        return mid;
    }

    public void setMid(String mid) {
        this.mid = mid == null ? null : mid.trim();
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model == null ? null : model.trim();
    }

    public Date getTime1() {
        return time1;
    }

    public void setTime1(Date time1) {
        this.time1 = time1;
    }

    public Date getTime2() {
        return time2;
    }

    public void setTime2(Date time2) {
        this.time2 = time2;
    }

    public Integer getTime3() {
        return time3;
    }

    public void setTime3(Integer time3) {
        this.time3 = time3;
    }

	@Override
	public String toString() {
		return "Devicemaintenance [id=" + id + ", mid=" + mid + ", model=" + model + ", time1=" + time1 + ", time2="
				+ time2 + ", time3=" + time3 + "]";
	}
}