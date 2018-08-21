package pojo;

import java.util.Date;

public class Assetstransferstatistics {
    private Long id;

    private String devicecoding;

    private String devicename;

    private String specification;

    private Integer number;

    private Double price;

    private Double sum;

    private Date purchasedate;

    private String elapsedlife;

    private String dephabemade;

    private String accountcategory;

    private String transferdepartment;

    private String transfertodepartment;

    private Date applytime;

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

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getSum() {
        return sum;
    }

    public void setSum(Double sum) {
        this.sum = sum;
    }

    public Date getPurchasedate() {
        return purchasedate;
    }

    public void setPurchasedate(Date purchasedate) {
        this.purchasedate = purchasedate;
    }

    public String getElapsedlife() {
        return elapsedlife;
    }

    public void setElapsedlife(String elapsedlife) {
        this.elapsedlife = elapsedlife == null ? null : elapsedlife.trim();
    }

    public String getDephabemade() {
        return dephabemade;
    }

    public void setDephabemade(String dephabemade) {
        this.dephabemade = dephabemade == null ? null : dephabemade.trim();
    }

    public String getAccountcategory() {
        return accountcategory;
    }

    public void setAccountcategory(String accountcategory) {
        this.accountcategory = accountcategory == null ? null : accountcategory.trim();
    }

    public String getTransferdepartment() {
        return transferdepartment;
    }

    public void setTransferdepartment(String transferdepartment) {
        this.transferdepartment = transferdepartment == null ? null : transferdepartment.trim();
    }

    public String getTransfertodepartment() {
        return transfertodepartment;
    }

    public void setTransfertodepartment(String transfertodepartment) {
        this.transfertodepartment = transfertodepartment == null ? null : transfertodepartment.trim();
    }

    public Date getApplytime() {
        return applytime;
    }

    public void setApplytime(Date applytime) {
        this.applytime = applytime;
    }
}