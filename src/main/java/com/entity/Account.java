package com.entity;

import java.io.Serializable;

import javax.persistence.*;

@Entity(name="Accounts")
public class Account implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "userName")
	private String userName;
	@Column(name = "passWord")
	private String passWord;
	@Column(name = "isAdmin")
	private int isAdmin;

	public Account() {}
	public Account(int id, String userName, String passWord) {
		super();
		this.id = id;
		this.userName = userName;
		this.passWord = passWord;
	}
	public int getIsAdmin() {
		return isAdmin;
	}
	public void setIsAdmin(int isAdmin) {
		this.isAdmin = isAdmin;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	
}
