package com.imgyf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.imgyf.entity.Book;
import com.imgyf.mapper.BookMapper;
import com.imgyf.service.BookService;
@Service("bookService")
public class BookServiceImpl implements BookService {
	@Autowired
	private BookMapper bookMapper;

	@Override
	public List<Book> lookAll() throws Exception {

		return bookMapper.queryAll();
	}

	@Override
	public List<Book> lookLikeName(String name) throws Exception {
		List<Book> books =bookMapper.queryLikeName(name);
		return books;
	}

	@Override
	public void add(Book book) throws Exception {
		Book b=bookMapper.queryByName(book.getName());
		if(b==null){
			throw new Exception("该商品已存在！");
		}
		bookMapper.add(book);
	}

	@Override
	public void delete(String name) throws Exception {
		Book book=bookMapper.queryByName(name);
		if(book==null){
			throw new Exception("删除失败，无此商品");
		}
		bookMapper.delete(book.getId());
	}

	@Override
	public void modify(Book book) throws Exception {
		Book b=bookMapper.queryByName(book.getName());
		if(b==null){
			throw new Exception("无此商品");
		}
		bookMapper.update(book);

	}

	@Override
	public Book lookById(int id) throws Exception {
		Book b= bookMapper.queryById(id);
		if(b==null){
			throw new Exception("无此商品");
		}
		return b;
	}

}
