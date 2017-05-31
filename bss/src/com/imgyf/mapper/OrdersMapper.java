package com.imgyf.mapper;

import java.util.List;

import com.imgyf.entity.Orders;

/**
 * 
 * @author 管严锋
 * @version 1.0
 * 
 */
public interface OrdersMapper {
	/**
	 * 根据用户id查询订单
	 * 
	 * @param userId
	 *            用户id
	 * @return 订单对象集合
	 * @throws Exception
	 */
	public List<Orders> queryByUserId(int userId) throws Exception;

	/**
	 * ' 根据订单id查订单
	 * 
	 * @param id
	 *            订单id
	 * @return 订单对象
	 * @throws Exception
	 */
	public Orders queryById(int id) throws Exception;

	/**
	 * 更新订单
	 * 
	 * @param order
	 *            订单对象
	 * @throws Exception
	 */
	public void update(Orders order) throws Exception;

	/**
	 * 添加订单
	 * 
	 * @param order
	 *            订单对象
	 * @throws Exception
	 */

	public int  add(Orders order) throws Exception;

	/**
	 * 删除订单
	 * 
	 * @param id
	 *            订单id
	 * @throws Exception
	 */
	public void delete(int id) throws Exception;

	/**
	 * 根据用户id删除订单
	 * 
	 * @param userId
	 *            用户id
	 * @throws Exception
	 */
	public void deleteByUserId(int userId) throws Exception;

	public List<Orders> queryAll();

}
