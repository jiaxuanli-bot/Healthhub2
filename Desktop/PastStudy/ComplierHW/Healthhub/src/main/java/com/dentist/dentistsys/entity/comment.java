package com.dentist.dentistsys.entity;


public class comment {
    private String messageid;

    private String sender;

    private String context;

    public String getMessageid() {
        return messageid;
    }

    public void setMessageid(String messageid) {
        this.messageid = messageid;
    }

    public String getSender() {
        return sender;
    }

    public void setSender(String sender) {
        this.sender = sender;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", messageid=").append(messageid);
        sb.append(", sender=").append(sender);
        sb.append(", context=").append(context);
        sb.append("]");
        return sb.toString();
    }
}