package com.imgyf.mapper;

import java.util.List;

import com.imgyf.entity.Users;

/**
 * 
 * @author 管严锋
 * @version 1.0
 * 
 */
public interface UsersMapper {
	/**
	 * 根据用户id查询用户
	 * 
	 * @param id
	 *            用户id
	 * @return 用户对象
	 * @throws Exception
	 */
	public Users queryById(int id) throws Exception;

	public List<Users> queryAll() throws Exception;

	/**
	 * 根据用户名查询用户
	 * 
	 * @param name
	 *            用户名
	 * @return 用户对象
	 * @throws Exception
	 */
	public Users queryByName(String name) throws Exception;

	/**
	 * 更新用户信息
	 * 
	 * @param user
	 *            新用户信息对象
	 * @throws Exception
	 */
	public void update(Users user) throws Exception;

	/**
	 * 添加用户
	 * 
	 * @param user
	 *            用户对象
	 * @throws Exception
	 */
	public void add(Users user) throws Exception;

	/**
	 * 删除用户
	 * 
	 * @param id
	 *            删除对象id
	 * @throws Exception
	 */
	public void delete(int id) throws Exception;

}
