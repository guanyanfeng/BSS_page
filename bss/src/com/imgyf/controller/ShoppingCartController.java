package com.imgyf.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.imgyf.entity.Book;
import com.imgyf.entity.ShoppingCart;
import com.imgyf.service.BookService;
import com.imgyf.service.ShoppingCartService;

@Controller
public class ShoppingCartController {
	@Autowired
	private ShoppingCartService cartService;
	@Autowired
	private BookService bookService;

	@RequestMapping("/cart")
	public String lookAll(HttpServletRequest request, HttpServletResponse resp) {
		HttpSession session = request.getSession();
		int userId = Integer.valueOf(request.getParameter("userId"));
		int bookId = Integer.valueOf(request.getParameter("bookId"));

		try {
			Book book = bookService.lookById(bookId);
			cartService.addToCart(userId, book, 1);
			ShoppingCart cart = cartService.look(userId);
			session.setAttribute("cart", cart);
		} catch (Exception e) {
			session.setAttribute("exception", e.getMessage());
			return "error";
		}

		return "redirect:/page/shoppingcart.jsp";
	}

	@RequestMapping("/deleteItem")
	public String deleteItem(HttpServletRequest request,
			HttpServletResponse resp) {
		HttpSession session = request.getSession();
		String name = request.getParameter("bookName");
		int userId = Integer.valueOf(request.getParameter("userId"));
		try {

			cartService.deleteItem(userId, name);
			ShoppingCart cart = cartService.look(userId);
			session.setAttribute("cart", cart);
		} catch (Exception e) {
			session.setAttribute("exception", e.getMessage());
			return "error";
		}

		return "redirect:/page/shoppingcart.jsp";
	}

	@RequestMapping("/lookcart")
	public String lookCart(HttpServletRequest request, HttpServletResponse resp) {
		HttpSession session = request.getSession();

		int userId = Integer.valueOf(request.getParameter("userId"));
		try {
			ShoppingCart cart = cartService.look(userId);
			session.setAttribute("cart", cart);
		} catch (Exception e) {
			session.setAttribute("exception", e.getMessage());
			return "error";
		}

		return "redirect:/page/shoppingcart.jsp";
	}

	@RequestMapping("/settlement")
	public String settlement(HttpServletRequest request,
			HttpServletResponse resp) {
		HttpSession session = request.getSession();

		int userId = Integer.valueOf(request.getParameter("userId"));
		try {
			ShoppingCart cart = cartService.look(userId);
			session.setAttribute("cart", cart);
			int orderId = cartService.settlement(userId);
			session.setAttribute("orderId", orderId);

		} catch (Exception e) {
			session.setAttribute("exception", e.getMessage());
			return "error";
		}

		return "redirect:/page/checkout.jsp";
	}

}
