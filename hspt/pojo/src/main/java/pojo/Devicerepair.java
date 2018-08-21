package pojo;



public class Devicerepair {
    @Override
	public String toString() {
		return "Devicerepair [id=" + id + ", applytime=" + applytime + ", applicant=" + applicant + ", assetcoding="
				+ assetcoding + ", devicename=" + devicename + ", devicemodel=" + devicemodel + ", repairman="
				+ repairman + ", phone=" + phone + ", warrantytime=" + warrantytime + ", timeofreturn=" + timeofreturn
				+ ", returnstatus=" + returnstatus + ", remarks=" + remarks + "]";
	}

	private Long id;

    private String applytime;

    private String applicant;

    private String assetcoding;

    private String devicename;

    private String devicemodel;

    private String repairman;

    private String phone;

    private Integer warrantytime;

    private String timeofreturn;

    private String returnstatus;

    private String remarks;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getApplytime() {
        return applytime;
    }

    public void setApplytime(String applytime) {
        this.applytime = applytime;
    }

    public String getApplicant() {
        return applicant;
    }

    public void setApplicant(String applicant) {
        this.applicant = applicant == null ? null : applicant.trim();
    }

    public String getAssetcoding() {
        return assetcoding;
    }

    public void setAssetcoding(String assetcoding) {
        this.assetcoding = assetcoding == null ? null : assetcoding.trim();
    }

    public String getDevicename() {
        return devicename;
    }

    public void setDevicename(String devicename) {
        this.devicename = devicename == null ? null : devicename.trim();
    }

    public String getDevicemodel() {
        return devicemodel;
    }

    public void setDevicemodel(String devicemodel) {
        this.devicemodel = devicemodel == null ? null : devicemodel.trim();
    }

    public String getRepairman() {
        return repairman;
    }

    public void setRepairman(String repairman) {
        this.repairman = repairman == null ? null : repairman.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Integer getWarrantytime() {
        return warrantytime;
    }

    public void setWarrantytime(Integer warrantytime) {
        this.warrantytime = warrantytime;
    }

    public String getTimeofreturn() {
        return timeofreturn;
    }

    public void setTimeofreturn(String timeofreturn) {
        this.timeofreturn = timeofreturn;
    }

    public String getReturnstatus() {
        return returnstatus;
    }

    public void setReturnstatus(String returnstatus) {
        this.returnstatus = returnstatus == null ? null : returnstatus.trim();
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }
}