package com.dentist.dentistsys.entity;

public class hospitalInfo {
    private String hospitalid;

    private String firstname;

    private String lastname;

    private String maillingaddress;

    private String email;

    private String phone;

    private String dataofbirth;

    private String gender;

    private String departmentname;

    private String doctorname;

    private String basicdiagnosis;

    public String getHospitalid() {
        return hospitalid;
    }

    public void setHospitalid(String hospitalid) {
        this.hospitalid = hospitalid;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getMaillingaddress() {
        return maillingaddress;
    }

    public void setMaillingaddress(String maillingaddress) {
        this.maillingaddress = maillingaddress;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDataofbirth() {
        return dataofbirth;
    }

    public void setDataofbirth(String dataofbirth) {
        this.dataofbirth = dataofbirth;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDepartmentname() {
        return departmentname;
    }

    public void setDepartmentname(String departmentname) {
        this.departmentname = departmentname;
    }

    public String getDoctorname() {
        return doctorname;
    }

    public void setDoctorname(String doctorname) {
        this.doctorname = doctorname;
    }

    public String getBasicdiagnosis() {
        return basicdiagnosis;
    }

    public void setBasicdiagnosis(String basicdiagnosis) {
        this.basicdiagnosis = basicdiagnosis;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", hospitalid=").append(hospitalid);
        sb.append(", firstname=").append(firstname);
        sb.append(", lastname=").append(lastname);
        sb.append(", maillingaddress=").append(maillingaddress);
        sb.append(", email=").append(email);
        sb.append(", phone=").append(phone);
        sb.append(", dataofbirth=").append(dataofbirth);
        sb.append(", gender=").append(gender);
        sb.append(", departmentname=").append(departmentname);
        sb.append(", doctorname=").append(doctorname);
        sb.append(", basicdiagnosis=").append(basicdiagnosis);
        sb.append("]");
        return sb.toString();
    }
}