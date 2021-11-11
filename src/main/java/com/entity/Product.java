package com.entity;

import java.io.Serializable;

import javax.persistence.*;


@Entity(name="Products")
public class Product implements Serializable  {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "idCategory")
	private int idCategory;
	@Column(name = "brand")
	private String brand;
	@Column(name = "name")
	private String name;
	@Column(name = "price")
	private String price;
	@Column(name = "color")
	private String color;
	@Column(name = "detail")
	private String detail;
	@Column(name = "description")
	private String description;
	@Column(name = "status")
	private String status;
	@Column(name = "image")
	private String image;
	
	public Product() {}
	
	public Product(int id, int idCategory, String brand, String name, String price, String color,
			String detail, String description, String status, String image) {
		super();
		this.id = id;
		this.idCategory = idCategory;
		this.brand = brand;
		this.name = name;
		this.price = price;
		this.color = color;
		this.detail = detail;
		this.description = description;
		this.status = status;
		this.image = image;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getIdCategory() {
		return idCategory;
	}

	public void setIdCategory(int idCategory) {
		this.idCategory = idCategory;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	
	
}
