package com.dentist.dentistsys.entity;

public class chat {
    private String sender;

    private String receiver;

    private String status;

    private String id;

    public String getSender() {
        return sender;
    }

    public void setSender(String sender) {
        this.sender = sender;
    }

    public String getReceiver() {
        return receiver;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", sender=").append(sender);
        sb.append(", receiver=").append(receiver);
        sb.append(", status=").append(status);
        sb.append(", id=").append(id);
        sb.append("]");
        return sb.toString();
    }
}