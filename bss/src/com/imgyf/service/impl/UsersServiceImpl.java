package com.imgyf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.imgyf.entity.ShoppingCart;
import com.imgyf.entity.Users;
import com.imgyf.mapper.ShoppingCartMapper;
import com.imgyf.mapper.UsersMapper;
import com.imgyf.service.UsersService;

@Service("usersService")
public class UsersServiceImpl implements UsersService {
	@Autowired
	private UsersMapper usersMapper;
	@Autowired
	private ShoppingCartMapper cartMapper;

	public Users login(String name, String password) throws Exception {
		Users user = usersMapper.queryByName(name);
		if (user == null) {
			throw new Exception("用户不存在");
		}
		
		if (!user.getPassword().equals(password)) {
			throw new Exception("密码错误，请重试");
		}
		return user;
	}

	@Override
	public void register(Users user) throws Exception {
		Users u = usersMapper.queryByName(user.getName());
		if (u != null) {
			throw new Exception("该用户名已存在");
		}
		usersMapper.add(user);
		Users u1 = usersMapper.queryByName(user.getName());
		ShoppingCart shoppingCart = new ShoppingCart();
		shoppingCart.setUserId(u1.getId());
		cartMapper.add(shoppingCart);
	}

	@Override
	public void modifyPassword(String name, String newPassword)
			throws Exception {
		Users user = usersMapper.queryByName(name);
		if (user == null) {
			throw new Exception("用户不存在");
		}
		user.setPassword(newPassword);
		usersMapper.update(user);
	}

	@Override
	public void modifyUsers(Users user) throws Exception {
		Users u = usersMapper.queryById(user.getId());
		if (u == null) {
			throw new Exception("用户不存在");
		}
		usersMapper.update(user);

	}
	public Users look(int userId)throws Exception{
		return usersMapper.queryById(userId);
	}

	@Override
	public List<Users> lookAll() throws Exception {
		// TODO Auto-generated method stub
		return usersMapper.queryAll();
	}

}
