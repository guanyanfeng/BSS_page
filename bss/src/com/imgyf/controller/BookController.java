package com.imgyf.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.imgyf.entity.Book;
import com.imgyf.service.BookService;

@Controller
public class BookController {
	@Autowired
	private BookService bookService;

	@RequestMapping("/index")
	public String lookAll(HttpServletRequest request,HttpServletResponse resp) {
		HttpSession session = request.getSession();
		try {
			List<Book> books = bookService.lookAll();
			session.setAttribute("books",books);
		} catch (Exception e) {
			session.setAttribute("exception", e.getMessage());
			return "error";
		}
		 
		return "redirect:/page/index.jsp";
	} 

	@RequestMapping("/query")
	public String queryLikeName(HttpServletRequest request, Model model,
			HttpServletResponse resp) {
		HttpSession session = request.getSession();
		try {
			String name=request.getParameter("likeName");
			List<Book> likeBooks = bookService.lookLikeName(name);
			session.setAttribute("likeBooks",likeBooks);
		} catch (Exception e) {
			session.setAttribute("exception", e.getMessage());
			return "error";
		}
		 
		return "redirect:/page/queryproducts.jsp";
	}
	@RequestMapping("/book")
	public String queryById(HttpServletRequest request, Model model,
			HttpServletResponse resp) {
		HttpSession session = request.getSession();
		try {
			int id=Integer.valueOf(request.getParameter("bookId"));
			Book book = bookService.lookById(id);
			session.setAttribute("book",book);
		} catch (Exception e) {
			session.setAttribute("exception", e.getMessage());
			return "error";
		}
		 
		return "redirect:/page/productdetail.jsp";
	}
}
