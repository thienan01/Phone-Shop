package com.entity;

public class Order {
	private String code;	
	private String fullName;
	private String email;
	private String phone;
	private String address;
	private String message;
	private Cart cart;
	public String getCode() {
		return code;
	}
	public Order(String code, String fullName, String email, String phone, String address, String message, Cart cart) {
		super();
		this.code = code;
		this.fullName = fullName;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.message = message;
		this.cart = cart;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	
}
