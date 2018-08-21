package pojo;

import java.sql.Date;

public class Deviceapply {
    private Long id;

    private String name;

    @Override
	public String toString() {
		return "Deviceapply [id=" + id + ", name=" + name + ", number=" + number + ", arrivetime=" + arrivetime
				+ ", applicant=" + applicant + ", did=" + did + ", ifyes=" + ifyes + "]";
	}

	private Double number;

    private Date arrivetime;

    private String applicant;

    private Integer did;

    private String ifyes;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Double getNumber() {
        return number;
    }

    public void setNumber(Double number) {
        this.number = number;
    }

    public Date getArrivetime() {
        return arrivetime;
    }

    public void setArrivetime(Date arrivetime) {
        this.arrivetime = arrivetime;
    }

    public String getApplicant() {
        return applicant;
    }

    public void setApplicant(String applicant) {
        this.applicant = applicant == null ? null : applicant.trim();
    }

    public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }

    public String getIfyes() {
        return ifyes;
    }

    public void setIfyes(String ifyes) {
        this.ifyes = ifyes == null ? null : ifyes.trim();
    }
}