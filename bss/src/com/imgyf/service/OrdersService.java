package com.imgyf.service;

import java.util.List;

import com.imgyf.entity.Orders;

public interface OrdersService {
	public void pay(int userId, int orderId) throws Exception;

	public void back(int userId, int orderId) throws Exception;

	public void cancel(int orderId) throws Exception;

	public List<Orders> look(int userId) throws Exception;

	public List<Orders> lookAll();

}
