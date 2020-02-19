package com.dentist.dentistsys.entity;

public class MimeMessage {
    private String form;
    private String to;
    private String subjetc;
    private String text;

    public String getForm() {
        return form;
    }

    public String getText() {
        return text;
    }

    public String getSubjetc() {
        return subjetc;
    }

    public String getTo() {
        return to;
    }

    public void setSubjetc(String subjetc) {
        this.subjetc = subjetc;
    }

    public void setText(String text) {
        this.text = text;
    }
    public void setForm(String form) {
        this.form = form;
    }

    public void setTo(String to) {
        this.to = to;
    }
}