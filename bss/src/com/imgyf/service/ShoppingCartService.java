package com.imgyf.service;

import com.imgyf.entity.Book;
import com.imgyf.entity.ShoppingCart;

public interface ShoppingCartService {
	
	public ShoppingCart look(int userId) throws Exception;

	public void addToCart(int userId, Book book, int num) throws Exception;

	public void deleteItem(int userId, String bookName) throws Exception;

	public void modifyNum(int userId, String bookName, int newNum)
			throws Exception;

	public int settlement(int userId) throws Exception;

	public void clear(int userId) throws Exception;

}
