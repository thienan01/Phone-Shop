package com.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;


public class Cart implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private ArrayList<LineItem> items;
	
	public ArrayList<LineItem> getItems() {
        return items;
    }

	public Cart() {
        items = new ArrayList<LineItem>();
    }
	

	
	public int getCount() {
	    return items.size();
	}
	public void addItem(LineItem item) {
        int id = item.getProduct().getId();
        int quantity = item.getQuantity();
        for (LineItem cartItem : items) {
            if (cartItem.getProduct().getId() == id) {
                cartItem.setQuantity(quantity);
                return;
            }
        }
        items.add(item);
	}
	public void removeItem(LineItem item) {
        int id = item.getProduct().getId();
        for (int i = 0; i < items.size(); i++) {
            LineItem lineItem = items.get(i);
            if (lineItem.getProduct().getId() == id) {
                items.remove(i);
                return;
            }
        }
	}
	public double totalCart() {
		double total = 0;
		for (LineItem lineItem : items) {
			total = total + lineItem.getTotal();
		}
		return total;
	}
	public String getTotalCartFormat() {
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        currency.setMinimumFractionDigits(0);
        return currency.format(this.totalCart());
    }
	public BigDecimal getTotalCartBigDecimal() {
		return new BigDecimal(this.totalCart());
	}
	public String getPriceUSD() {
		return 	String.format(String.format("%.2f", (this.totalCart()/23000)));
	}
}
