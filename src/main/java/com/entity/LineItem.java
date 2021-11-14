package com.entity;

import java.io.Serializable;
import java.text.NumberFormat;

public class LineItem implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private Product product;
	private int quantity;
	
	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public LineItem() {}
	
	public LineItem(Product product, int quantity) {
		super();
		this.product = product;
		this.quantity = quantity;
	}
	
	public double getTotal() {
        double total = product.getPrice() * quantity;
        return total;
    }

    public String getTotalFormat() {
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        currency.setMinimumFractionDigits(0);
        return currency.format(this.getTotal());
    }
}
