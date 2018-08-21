package pojo;

import java.util.Date;

public class Information {
    private Integer id;

    private String name;

    private String sex;

    private String nation;

    private String idcard;

    @Override
	public String toString() {
		return "Information [id=" + id + ", name=" + name + ", sex=" + sex + ", nation=" + nation + ", idcard=" + idcard
				+ ", classes=" + classes + ", phone=" + phone + ", chara=" + chara + ", birth=" + birth + ", degree="
				+ degree + ", graduatetime=" + graduatetime + ", worktime=" + worktime + ", party=" + party + ", duty="
				+ duty + ", engagetime=" + engagetime + ", technical=" + technical + ", technicaltime=" + technicaltime
				+ ", teacherposition=" + teacherposition + ", teachertime=" + teachertime + ", tutor=" + tutor
				+ ", tutortime=" + tutortime + ", gid=" + gid + ", qx=" + qx + ", password=" + password + ", rolename="
				+ rolename + "]";
	}

	private String classes;

    private String phone;

    private String chara;

    private Date birth;

    private String degree;

    private Date graduatetime;

    private Date worktime;

    private String party;

    private String duty;

    private Date engagetime;

    private String technical;

    private Date technicaltime;

    private String teacherposition;

    private Date teachertime;

    private String tutor;

    private Date tutortime;

    private Integer gid;

    private String qx;

    private String password;

    private String rolename;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation == null ? null : nation.trim();
    }

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard == null ? null : idcard.trim();
    }

    public String getClasses() {
        return classes;
    }

    public void setClasses(String classes) {
        this.classes = classes == null ? null : classes.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getChara() {
        return chara;
    }

    public void setChara(String chara) {
        this.chara = chara == null ? null : chara.trim();
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree == null ? null : degree.trim();
    }

    public Date getGraduatetime() {
        return graduatetime;
    }

    public void setGraduatetime(Date graduatetime) {
        this.graduatetime = graduatetime;
    }

    public Date getWorktime() {
        return worktime;
    }

    public void setWorktime(Date worktime) {
        this.worktime = worktime;
    }

    public String getParty() {
        return party;
    }

    public void setParty(String party) {
        this.party = party == null ? null : party.trim();
    }

    public String getDuty() {
        return duty;
    }

    public void setDuty(String duty) {
        this.duty = duty == null ? null : duty.trim();
    }

    public Date getEngagetime() {
        return engagetime;
    }

    public void setEngagetime(Date engagetime) {
        this.engagetime = engagetime;
    }

    public String getTechnical() {
        return technical;
    }

    public void setTechnical(String technical) {
        this.technical = technical == null ? null : technical.trim();
    }

    public Date getTechnicaltime() {
        return technicaltime;
    }

    public void setTechnicaltime(Date technicaltime) {
        this.technicaltime = technicaltime;
    }

    public String getTeacherposition() {
        return teacherposition;
    }

    public void setTeacherposition(String teacherposition) {
        this.teacherposition = teacherposition == null ? null : teacherposition.trim();
    }

    public Date getTeachertime() {
        return teachertime;
    }

    public void setTeachertime(Date teachertime) {
        this.teachertime = teachertime;
    }

    public String getTutor() {
        return tutor;
    }

    public void setTutor(String tutor) {
        this.tutor = tutor == null ? null : tutor.trim();
    }

    public Date getTutortime() {
        return tutortime;
    }

    public void setTutortime(Date tutortime) {
        this.tutortime = tutortime;
    }

    public Integer getGid() {
        return gid;
    }

    public void setGid(Integer gid) {
        this.gid = gid;
    }

    public String getQx() {
        return qx;
    }

    public void setQx(String qx) {
        this.qx = qx == null ? null : qx.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename == null ? null : rolename.trim();
    }
}