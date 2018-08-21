package pojo;

import java.sql.Date;

public class Wexperience {
    private Integer id;

    private String workAddress;

    private String classes;

    private String technicalPosition;

    private Date statTime;

    private Date stopTime;
   
    private int wId;
  
	public int getwId() {
		return wId;
	}


	public void setwId(int wId) {
		this.wId = wId;
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getWorkAddress() {
		return workAddress;
	}


	public void setWorkAddress(String workAddress) {
		this.workAddress = workAddress;
	}


	public String getClasses() {
		return classes;
	}


	public void setClasses(String classes) {
		this.classes = classes;
	}


	public String getTechnicalPosition() {
		return technicalPosition;
	}


	public void setTechnicalPosition(String technicalPosition) {
		this.technicalPosition = technicalPosition;
	}


	public Date getStatTime() {
		return statTime;
	}


	public void setStatTime(Date statTime) {
		this.statTime = statTime;
	}


	public Date getStopTime() {
		return stopTime;
	}


	public void setStopTime(Date stopTime) {
		this.stopTime = stopTime;
	}


	@Override
	public String toString() {
		return "Wexperience [id=" + id + ", workAddress=" + workAddress + ", classes=" + classes
				+ ", technicalPosition=" + technicalPosition + ", statTime=" + statTime + ", stopTime=" + stopTime
				+ "]";
	}
}