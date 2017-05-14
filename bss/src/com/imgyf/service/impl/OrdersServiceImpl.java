package com.imgyf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.imgyf.entity.Book;
import com.imgyf.entity.OrderItem;
import com.imgyf.entity.Orders;
import com.imgyf.entity.Users;
import com.imgyf.mapper.BookMapper;
import com.imgyf.mapper.OrderItemMapper;
import com.imgyf.mapper.OrdersMapper;
import com.imgyf.mapper.UsersMapper;
import com.imgyf.service.OrdersService;
@Service("ordersService")
public class OrdersServiceImpl implements OrdersService {
	@Autowired
	private OrdersMapper ordersMapper;
	@Autowired
	private UsersMapper usersMapper;
	@Autowired
	private BookMapper bookMapper;
	@Autowired
	private OrderItemMapper itemMapper;

	@Override
	public void pay(int userId, int orderId) throws Exception {
		Orders order = ordersMapper.queryById(orderId);

		if (order == null) {
			throw new Exception("该订单不存在");
		}
		if (order.getStatus() != 0) {
			throw new Exception("该订单不能支付");
		}
		Users admin = usersMapper.queryById(10000);
		Users user = usersMapper.queryById(userId);
		double total = order.getTotal();
		if (user.getAccount() < total) {
			throw new Exception("账户余额不足");
		}
		user.setAccount(user.getAccount() - total);
		admin.setAccount(admin.getAccount() + total);
		order.setStatus(1);
		List<OrderItem> items = order.getItems();
		for (OrderItem item : items) {
			Book book = bookMapper.queryByName(item.getName());
			int num = item.getNum();
			if (book.getStorage() < num) {
				throw new Exception("库存不足");
			}
			book.setStorage(book.getStorage() - num);
			bookMapper.update(book);
		}
		usersMapper.update(admin);
		usersMapper.update(user);
		ordersMapper.update(order);

	}

	@Override
	public void back(int userId, int orderId) throws Exception {
		Orders order = ordersMapper.queryById(orderId);
		if (order == null) {
			throw new Exception("该订单不存在");
		}
		if (order.getStatus() != 1) {
			throw new Exception("该订单不可退");
		}
		Users admin = usersMapper.queryById(10000);
		Users user = usersMapper.queryById(userId);
		double total = order.getTotal();
		user.setAccount(user.getAccount() + total);
		admin.setAccount(admin.getAccount() - total);
		order.setStatus(2);
		List<OrderItem> items = order.getItems();
		for (OrderItem item : items) {
			Book book = bookMapper.queryByName(item.getName());
			int num = item.getNum();
			book.setStorage(book.getStorage() + num);
			bookMapper.update(book);
		}
		usersMapper.update(admin);
		usersMapper.update(user);
		ordersMapper.update(order);

	}

	@Override
	public void cancel(int orderId) throws Exception {
		Orders order = ordersMapper.queryById(orderId);
		if (order == null) {
			throw new Exception("该订单不存在");
		}
		if (order.getStatus() != 0) {
			throw new Exception("该订单不可取消");
		}

		itemMapper.deleteByOrderId(orderId);
		ordersMapper.delete(orderId);
	}

	@Override
	public List<Orders> look(int userId) throws Exception {
		return ordersMapper.queryByUserId(userId);

	}

}
