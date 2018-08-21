package pojo;



public class Devicecalibration {
    private Long id;

    private String model;

    private String exportid;

    private String count;

    private String text;

    private String time1;

    private String time2;

    private String fujian;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model == null ? null : model.trim();
    }

    public String getExportid() {
        return exportid;
    }

    public void setExportid(String exportid) {
        this.exportid = exportid == null ? null : exportid.trim();
    }

    public String getCount() {
        return count;
    }

    public void setCount(String count) {
        this.count = count == null ? null : count.trim();
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text == null ? null : text.trim();
    }

    public String getTime1() {
        return time1;
    }

    public void setTime1(String time1) {
        this.time1 = time1;
    }

    public String getTime2() {
        return time2;
    }

    public void setTime2(String time2) {
        this.time2 = time2;
    }

    public String getFujian() {
        return fujian;
    }

    public void setFujian(String fujian) {
        this.fujian = fujian == null ? null : fujian.trim();
    }

	@Override
	public String toString() {
		return "Devicecalibration [id=" + id + ", model=" + model + ", exportid=" + exportid + ", count=" + count
				+ ", text=" + text + ", time1=" + time1 + ", time2=" + time2 + ", fujian=" + fujian + "]";
	}
}