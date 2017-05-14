package com.imgyf.entity;

import java.io.Serializable;
import java.util.List;

public class Orders implements Serializable{
	private int id;
	private int userId;
	private List<OrderItem> items;
	private double total;
	private int status;// 订单状态 0未支付 1已支付 2退单
	private String orderDate;
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
	public List<OrderItem> getItems() {
		return items;
	}
	public void setItems(List<OrderItem> items) {
		this.items = items;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	@Override
	public String toString() {
		return "Orders [id=" + id + ", userId=" + userId + ", items=" + items
				+ ", total=" + total + ", status=" + status + ", orderDate="
				+ orderDate + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		result = prime * result + ((items == null) ? 0 : items.hashCode());
		result = prime * result
				+ ((orderDate == null) ? 0 : orderDate.hashCode());
		result = prime * result + status;
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
		Orders other = (Orders) obj;
		if (id != other.id)
			return false;
		if (items == null) {
			if (other.items != null)
				return false;
		} else if (!items.equals(other.items))
			return false;
		if (orderDate == null) {
			if (other.orderDate != null)
				return false;
		} else if (!orderDate.equals(other.orderDate))
			return false;
		if (status != other.status)
			return false;
		if (Double.doubleToLongBits(total) != Double
				.doubleToLongBits(other.total))
			return false;
		if (userId != other.userId)
			return false;
		return true;
	}
	public Orders(int id, int userId, List<OrderItem> items, double total,
			int status, String orderDate) {
		super();
		this.id = id;
		this.userId = userId;
		this.items = items;
		this.total = total;
		this.status = status;
		this.orderDate = orderDate;
	}
	public Orders() {
		super();
		// TODO Auto-generated constructor stub
	}

	
}
