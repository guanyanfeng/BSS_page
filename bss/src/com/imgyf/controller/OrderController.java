package com.imgyf.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.imgyf.entity.Orders;
import com.imgyf.service.OrdersService;

@Controller
public class OrderController {
	@Autowired
	private OrdersService orderService;

	@RequestMapping("/pay")
	public String deleteItem(HttpServletRequest request,
			HttpServletResponse resp) {
		HttpSession session = request.getSession();

		int userId = Integer.valueOf(request.getParameter("userId"));
		int orderId = Integer.valueOf(request.getParameter("orderId"));
		try {
			orderService.pay(userId, orderId);

		} catch (Exception e) {
			session.setAttribute("exception", e.getMessage());
			return "error";
		}  

		return "forward:/lookOrder";
	}

	@RequestMapping("lookOrder")
	public String lookOrder(HttpServletRequest request, HttpServletResponse resp) {
		HttpSession session = request.getSession();

		int userId = Integer.valueOf(request.getParameter("userId"));
		try {
			List<Orders> orders = orderService.look(userId);
			session.setAttribute("orders", orders);
		} catch (Exception e) {
			session.setAttribute("exception", e.getMessage());
			return "error";
		}

		return "redirect:/page/order.jsp";
	}

}
