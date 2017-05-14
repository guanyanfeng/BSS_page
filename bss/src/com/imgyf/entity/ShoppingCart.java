package com.imgyf.entity;

import java.io.Serializable;
import java.util.List;

public class ShoppingCart implements Serializable{
	private int id;
	private int userId;
	private List<CartItem> cartItems;
	private double total;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public List<CartItem> getCartItems() {
		return cartItems;
	}
	public void setCartItems(List<CartItem> cartItems) {
		this.cartItems = cartItems;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	@Override
	public String toString() {
		return "ShoppingCart [id=" + id + ", userId=" + userId + ", cartItems="
				+ cartItems + ", total=" + total + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((cartItems == null) ? 0 : cartItems.hashCode());
		result = prime * result + id;
		long temp;
		temp = Double.doubleToLongBits(total);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + userId;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ShoppingCart other = (ShoppingCart) obj;
		if (cartItems == null) {
			if (other.cartItems != null)
				return false;
		} else if (!cartItems.equals(other.cartItems))
			return false;
		if (id != other.id)
			return false;
		if (Double.doubleToLongBits(total) != Double
				.doubleToLongBits(other.total))
			return false;
		if (userId != other.userId)
			return false;
		return true;
	}
	public ShoppingCart(int id, int userId, List<CartItem> cartItems,
			double total) {
		super();
		this.id = id;
		this.userId = userId;
		this.cartItems = cartItems;
		this.total = total;
	}
	public ShoppingCart() {
		super();
		// TODO Auto-generated constructor stub
	}

	
}
