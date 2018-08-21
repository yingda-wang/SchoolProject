package ksxs;

public class Meeting {
	private String year;
	private String meetingName;
	private String proNumber;
	private String proleader;
	private String creditType;
	private String credit;
	private String startTime;
	private String offTime;
	private int partiNumber;
	private String fileSave;
	private int id;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFileSave() {
		return fileSave;
	}
	public void setFileSave(String fileSave) {
		this.fileSave = fileSave;
	}
	private String filePerson;
	@Override
	public String toString() {
		return "Computer [year=" + year + ",meetingName=" + meetingName + ",proNumber=" + proNumber + ",proleader=" + proleader + ",creditType=" + creditType + ",credit=" + credit + ",startTime=" + startTime + ",offTime=" + offTime + ",partiNumber=" + partiNumber + ",fileSave=" + fileSave + ",filePerson=" + filePerson + "]";
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMeetingName() {
		return meetingName;
	}
	public void setMeetingName(String meetingName) {
		this.meetingName = meetingName;
	}
	public String getProNumber() {
		return proNumber;
	}
	public void setProNumber(String proNumber) {
		this.proNumber = proNumber;
	}
	public String getProleader() {
		return proleader;
	}
	public void setProleader(String proleader) {
		this.proleader = proleader;
	}
	public String getCreditType() {
		return creditType;
	}
	public void setCreditType(String creditType) {
		this.creditType = creditType;
	}
	public String getCredit() {
		return credit;
	}
	public void setCredit(String credit) {
		this.credit = credit;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getOffTime() {
		return offTime;
	}
	public void setOffTime(String offTime) {
		this.offTime = offTime;
	}
	public int getPartiNumber() {
		return partiNumber;
	}
	public void setPartiNumber(int partiNumber) {
		this.partiNumber = partiNumber;
	}
	public String getFilePerson() {
		return filePerson;
	}
	public void setFilePerson(String filePerson) {
		this.filePerson = filePerson;
	}
}
