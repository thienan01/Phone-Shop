package com.entity;

import java.io.Serializable;

public class Information implements Serializable {
	private static final long serialVersionUID = 1L;
	private String name;
	private String email;
	private String phone;
	private String province;
	private String address;
	private String message;

    public Information() {
    	name = "";
    	email = "";
    	phone = "";
    	province = "";
    	address = "";
    	message = "";
    }

    public Information(String name, String email, String phone, String province, String address, String message) {
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.province = province;
        this.address = address;
        this.message = message;
    }

    public String getname() {
        return name;
    }

    public void setname(String name) {
        this.name = name;
    }

    public String getemail() {
        return email;
    }

    public void setemail(String email) {
        this.email = email;
    }

    public String getphone() {
        return phone;
    }

    public void setphone(String phone) {
        this.phone = phone;
    }
    public String getprovince() {
        return province;
    }

    public void setprovince(String province) {
        this.province = province;
    }

    public String getaddress() {
        return address;
    }

    public void setaddress(String address) {
        this.address = address;
    }

    public String getmessage() {
        return message;
    }

    public void setmessage(String message) {
        this.message = message;
    }
}
