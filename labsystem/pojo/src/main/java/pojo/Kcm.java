package pojo;

public class Kcm {
    private String kcm;

    private String version;

    private String kcbh;

    private String xueshi;

    private String xingzhi;

    public String getKcm() {
        return kcm;
    }

    public void setKcm(String kcm) {
        this.kcm = kcm == null ? null : kcm.trim();
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version == null ? null : version.trim();
    }

    public String getKcbh() {
        return kcbh;
    }

    public void setKcbh(String kcbh) {
        this.kcbh = kcbh == null ? null : kcbh.trim();
    }

    public String getXueshi() {
        return xueshi;
    }

    public void setXueshi(String xueshi) {
        this.xueshi = xueshi == null ? null : xueshi.trim();
    }

    public String getXingzhi() {
        return xingzhi;
    }

    public void setXingzhi(String xingzhi) {
        this.xingzhi = xingzhi == null ? null : xingzhi.trim();
    }
}