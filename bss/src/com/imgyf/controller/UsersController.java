package com.imgyf.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.imgyf.entity.Users;
import com.imgyf.service.UsersService;
import com.imgyf.util.DateUtils;

@Controller
@RequestMapping("/user")
public class UsersController {
	@Autowired
	private UsersService usersService;

	@RequestMapping("/login")
	public String login(HttpServletRequest request) {
		HttpSession session = request.getSession();

		String name = request.getParameter("name");
		String password = request.getParameter("password");
		try {
			Users user=usersService.login(name, password);
			session.setAttribute("user", user);
		} catch (Exception e) {
			session.setAttribute("exception", e.getMessage());
			return "error";
		}
		return "forward:/index";
	} 

	@RequestMapping("/register")
	public String register(HttpServletRequest request, Model model,
			HttpServletResponse resp) {
		Users user = new Users();
		HttpSession session = request.getSession();
		user.setName(request.getParameter("name"));
		String password = request.getParameter("password1");
		String password1 = request.getParameter("password2");

		if (!password.equals(password1)) {
			session.setAttribute("exception", "密码不一致！");
			return "error";
		}
		user.setPassword(password);
		String birthday = request.getParameter("age");
		user.setBirthday(birthday);
		user.setAge(DateUtils.getAge("yyyy-MM-dd", birthday));
		user.setAccount(1000);
		user.setEmail(request.getParameter("email"));
		user.setGender(request.getParameter("gender"));
		try {
			usersService.register(user);
			
		} catch (Exception e) {
			session.setAttribute("exception", e.getMessage());
			return "error";
		}
		return "redirect:/page/login.jsp";

	}
	
	@RequestMapping("/update")
	public String update(HttpServletRequest request, Model model,
			HttpServletResponse resp) {
		int id= Integer.valueOf(request.getParameter("id"));
		HttpSession session = request.getSession();
		Users user;
		try {
			user = usersService.look(id);
		} catch (Exception e1) {
			session.setAttribute("exception", e1.getMessage());
			return "error";
		}
		
		user.setName(request.getParameter("name"));
		String password = request.getParameter("password");
		user.setPassword(password);
		String birthday = request.getParameter("birthday");
		user.setBirthday(birthday);
		user.setAge(DateUtils.getAge("yyyy-MM-dd", birthday));
		double account= Double.valueOf(request.getParameter("account"));
		user.setAccount(account);
		user.setEmail(request.getParameter("email"));
		user.setGender(request.getParameter("gender"));
		try {
			usersService.modifyUsers(user);
			session.setAttribute("user", user);
		} catch (Exception e) {
			session.setAttribute("exception", e.getMessage());
			return "error";
		}
		return "redirect:/page/user.jsp";

	}

}
