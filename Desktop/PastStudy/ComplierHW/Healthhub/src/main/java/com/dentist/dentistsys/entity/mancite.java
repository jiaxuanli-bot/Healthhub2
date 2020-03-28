package com.dentist.dentistsys.entity;

public class mancite {
    private String userName;
    private String type;
    private String message;
    private String id;
    public void setUserName(String userName){
        this.userName = userName;
    }
    public void setId(String id){this.id = id; }
    public void setType(String type){
        this.type = type;
    }
    public void setMessage(String message){
        this.message = message;
    }
    public String getUserName(){
        return this.userName;
    }
    public String getType(){
        return this.type;
    }
    public String getMessage(){
        return this.message;
    }
    public String getId() {return this.id;}
}
