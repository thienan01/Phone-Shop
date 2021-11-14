package com.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name="Category")
public class Category {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "cBrand")
	private String cBrand;
	
	@OneToMany
	private List<Product> products;
	
	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public Category() {}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getcBrand() {
		return cBrand;
	}

	public void setcBrand(String cBrand) {
		this.cBrand = cBrand;
	}

	public Category(int id, String cBrand) {
		super();
		this.id = id;
		this.cBrand = cBrand;
	}
	
	
}
