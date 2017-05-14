package com.imgyf.service;

import java.util.List;

import com.imgyf.entity.Book;

public interface BookService {
	public List<Book> lookAll() throws Exception;

	public List<Book> lookLikeName(String name) throws Exception;

	public void add(Book book) throws Exception;

	public void delete(String name) throws Exception;

	public void modify(Book book) throws Exception;

	public Book lookById(int id) throws Exception;
}
