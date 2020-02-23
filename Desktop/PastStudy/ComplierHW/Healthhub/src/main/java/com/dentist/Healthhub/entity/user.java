package com.dentist.Healthhub.entity;

public class user {
    private String id;

    private String username;

    private String password;

    private String realname;

    private String email;

    private String type;

    private String physicion;

    private String additional;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getPhysicion() {
        return physicion;
    }

    public void setPhysicion(String physicion) {
        this.physicion = physicion;
    }

    public String getAdditional() {
        return additional;
    }

    public void setAdditional(String additional) {
        this.additional = additional;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", username=").append(username);
        sb.append(", password=").append(password);
        sb.append(", realname=").append(realname);
        sb.append(", email=").append(email);
        sb.append(", type=").append(type);
        sb.append(", physicion=").append(physicion);
        sb.append(", additional=").append(additional);
        sb.append("]");
        return sb.toString();
    }
}