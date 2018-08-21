package pojo;

public class Role {
    private Integer id;

    private String name;

    private String password;

    private Integer zid;

    private String qx;

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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public Integer getZid() {
        return zid;
    }

    public void setZid(Integer zid) {
        this.zid = zid;
    }

    public String getQx() {
        return qx;
    }

    public void setQx(String qx) {
        this.qx = qx == null ? null : qx.trim();
    }

	@Override
	public String toString() {
		return "Role [id=" + id + ", name=" + name + ", password=" + password + ", zid=" + zid + ", qx=" + qx + "]";
	}
}