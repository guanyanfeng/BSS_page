package com.imgyf.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.imgyf.entity.Book;
import com.imgyf.entity.CartItem;
import com.imgyf.entity.OrderItem;
import com.imgyf.entity.Orders;
import com.imgyf.entity.ShoppingCart;
import com.imgyf.mapper.CartItemMapper;
import com.imgyf.mapper.OrderItemMapper;
import com.imgyf.mapper.OrdersMapper;
import com.imgyf.mapper.ShoppingCartMapper;
import com.imgyf.service.ShoppingCartService;
import com.imgyf.util.DateUtils;

@Service("shoppingCartService")
public class ShoppingCartServiceImlp implements ShoppingCartService {
	@Autowired
	private ShoppingCartMapper cartMapper;
	@Autowired
	private CartItemMapper cartItemMapper;
	@Autowired
	private OrderItemMapper orderItemMapper;
	@Autowired
	private OrdersMapper ordersMapper;

	@Override
	public ShoppingCart look(int userId) throws Exception {
		ShoppingCart cart = cartMapper.queryByUserId(userId);
		cart.setCartItems(cartItemMapper.queryByCartId(cart.getId()));
		return cart;
	}

	@Override
	public void addToCart(int userId, Book book, int num) throws Exception {
		ShoppingCart cart = cartMapper.queryByUserId(userId);
		List<CartItem> items = cartItemMapper.queryByCartId(cart.getId());
		int i = 0;

		for (CartItem item : items) {
			if (book.getName().equals(item.getName())) {
				double total = cart.getTotal();
				total -= item.getTotal();
				item.setNum(num + item.getNum());
				item.setTotal(item.getPrice() * item.getNum());
				cartItemMapper.update(item);
				total += item.getTotal();
				cart.setTotal(total);
				cartMapper.update(cart);
				i++;
			}
		}

		if (i == 0) {
			CartItem cartItem = new CartItem(0, cart.getId(), book.getName(),
					book.getPrice(), num, book.getPrice() * num, book.getImg());
			cartItemMapper.add(cartItem);
			cart.setTotal(cart.getTotal() + cartItem.getTotal());
			cartMapper.update(cart);
		}

	}

	@Override
	public void deleteItem(int userId, String bookName) throws Exception {
		ShoppingCart cart = cartMapper.queryByUserId(userId);
		List<CartItem> items = cartItemMapper.queryByCartId(cart.getId());
		for (CartItem item : items) {
			if (bookName.equals(item.getName())) {
				cartItemMapper.delete(item.getId());
				cart.setTotal(cart.getTotal() - item.getTotal());
				cartMapper.update(cart);
			}
		}

	}

	@Override
	public void modifyNum(int userId, String bookName, int newNum)
			throws Exception {
		ShoppingCart cart = cartMapper.queryByUserId(userId);
		List<CartItem> items = cartItemMapper.queryByCartId(cart.getId());
		for (CartItem item : items) {
			if (bookName == item.getName()) {
				item.setNum(newNum);
				item.setTotal(newNum * item.getPrice());
				cartItemMapper.update(item);

			}
		}

	}

	@Override
	public int settlement(int userId) throws Exception {
		ShoppingCart cart = cartMapper.queryByUserId(userId);
		cart.setCartItems(cartItemMapper.queryByCartId(cart.getId()));
		String date = DateUtils.dateToString("yyyy-MM-dd HH:mm:ss", new Date());
		Orders order = new Orders(0, userId, null, cart.getTotal(), 0, date);
		ordersMapper.add(order);
		int ordersId = order.getId();
		for (CartItem item : cart.getCartItems()) {
			OrderItem ordersItem = new OrderItem(0, ordersId, item.getName(),
					item.getPrice(), item.getNum(), item.getTotal());
			orderItemMapper.add(ordersItem);
		}
		clear(userId);
		return ordersId;
	}

	@Override
	public void clear(int userId) throws Exception {
		ShoppingCart cart = cartMapper.queryByUserId(userId);
		cartItemMapper.deleteByCartId(cart.getId());
		cart.setTotal(0);
		cartMapper.update(cart);
	}

}
