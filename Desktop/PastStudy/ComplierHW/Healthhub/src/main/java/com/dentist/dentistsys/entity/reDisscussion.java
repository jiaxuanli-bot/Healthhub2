package com.dentist.dentistsys.entity;

public class reDisscussion {
    private String disname;

    private String disdate;

    private String distype;

    private String disgroup;

    private String distopic;

    private String diskeyword;

    private String dismessage;

    private String disid;

    private String disparentid;

    private String addinf;

    public String getDisname() {
        return disname;
    }

    public void setDisname(String disname) {
        this.disname = disname;
    }

    public String getDisdate() {
        return disdate;
    }

    public void setDisdate(String disdate) {
        this.disdate = disdate;
    }

    public String getDistype() {
        return distype;
    }

    public void setDistype(String distype) {
        this.distype = distype;
    }

    public String getDisgroup() {
        return disgroup;
    }

    public void setDisgroup(String disgroup) {
        this.disgroup = disgroup;
    }

    public String getDistopic() {
        return distopic;
    }

    public void setDistopic(String distopic) {
        this.distopic = distopic;
    }

    public String getDiskeyword() {
        return diskeyword;
    }

    public void setDiskeyword(String diskeyword) {
        this.diskeyword = diskeyword;
    }

    public String getDismessage() {
        return dismessage;
    }

    public void setDismessage(String dismessage) {
        this.dismessage = dismessage;
    }

    public String getDisid() {
        return disid;
    }

    public void setDisid(String disid) {
        this.disid = disid;
    }

    public String getDisparentid() {
        return disparentid;
    }

    public void setDisparentid(String disparentid) {
        this.disparentid = disparentid;
    }

    public String getAddinf() {
        return addinf;
    }

    public void setAddinf(String addinf) {
        this.addinf = addinf;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", disname=").append(disname);
        sb.append(", disdate=").append(disdate);
        sb.append(", distype=").append(distype);
        sb.append(", disgroup=").append(disgroup);
        sb.append(", distopic=").append(distopic);
        sb.append(", diskeyword=").append(diskeyword);
        sb.append(", dismessage=").append(dismessage);
        sb.append(", disid=").append(disid);
        sb.append(", disparentid=").append(disparentid);
        sb.append(", addinf=").append(addinf);
        sb.append("]");
        return sb.toString();
    }
}