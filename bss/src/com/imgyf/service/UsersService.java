package com.imgyf.service;

import java.util.List;

import com.imgyf.entity.Users;

public interface UsersService {
	public Users login(String name, String password) throws Exception;

	public void register(Users user) throws Exception;

	public void modifyPassword(String name, String newPassword)
			throws Exception;

	public void modifyUsers(Users user) throws Exception;

	public Users look(int userId) throws Exception;

	public List<Users> lookAll() throws Exception;
}
