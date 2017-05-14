package com.imgyf.mapper;

import java.util.List;

import com.imgyf.entity.Address;

/**
 * 
 * @author 管严锋
 * @version 1.0
 * 
 */
public interface AddressMapper {
	/**
	 * 根据用户id查询地址
	 * 
	 * @param id
	 *            地址id
	 * @return 地址对象
	 * @throws Exception
	 */
	public Address queryById(int id) throws Exception;

	/**
	 * 根据用户id查询地址
	 * 
	 * @param userid
	 *            用户id
	 * @return 用户对象
	 * @throws Exception
	 */
	public List<Address> queryByUserId(int userId) throws Exception;

	/**
	 * 更新地址信息
	 * 
	 * @param address
	 *            地址对象
	 * @throws Exception
	 */
	public void update(Address address) throws Exception;

	/**
	 * 添加地址
	 * 
	 * @param address
	 *            地址对象
	 * @throws Exception
	 */
	public void add(Address address) throws Exception;

	/**
	 * 删除地址
	 * 
	 * @param id
	 *            删除对象id
	 * @throws Exception
	 */
	public void delete(int id) throws Exception;

	/**
	 * 根据用户id删除相关的地址
	 * 
	 * @param userId 用户id
	 */
	public void deleteByUserId(int userId);

}
