package com.entity;

import java.io.Serializable;
import java.text.NumberFormat;

import javax.persistence.*;


@Entity(name="Products")
public class Product implements Serializable  {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@ManyToOne
	@JoinColumn(name = "idCategory")
	private Category category;
	@Column(name = "brand")
	private String brand;
	@Column(name = "name")
	private String name;
	@Column(name = "price")
	private Double price;
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
	
	public Product(int id, String brand, String name, Double price, String color,
			String detail, String description, String status, String image) {
		super();
		this.id = id;
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

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
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

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
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
	
	public String getPriceFormat() {
		NumberFormat currency = NumberFormat.getCurrencyInstance();
		currency.setMaximumFractionDigits(0);
        return currency.format(this.getPrice());
	}
	
}
