package ksxs;

public class Baseteach {
	private String id;
	private String year;
	private String tourType;
	private String region;
	private String time;
	private String place;
	private int partiNumber;
	private String courseSave;
	private String photoSave;
	public String getPhotoSave() {
		return photoSave;
	}
	public void setPhotoSave(String photoSave) {
		this.photoSave = photoSave;
	}
	public String getCourseSave() {
		return courseSave;
	}
	public void setCourseSave(String courseSave) {
		this.courseSave = courseSave;
	}
	@Override
	public String toString() {
		return "Computer [id=" + id + ",year=" + year + ",tourType=" + tourType + ",region=" + region + ",time=" + time + ",place=" + place + ",partiNumber=" + partiNumber + ",courseSave=" + courseSave + ",photoSave=" + photoSave + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getTourType() {
		return tourType;
	}
	public void setTourType(String tourType) {
		this.tourType = tourType;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public int getPartiNumber() {
		return partiNumber;
	}
	public void setPartiNumber(int partiNumber) {
		this.partiNumber = partiNumber;
	}
}
