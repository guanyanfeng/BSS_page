package com.imgyf.mapper;

import com.imgyf.entity.ShoppingCart;

/**
 * 
 * @author 管严锋
 * @version 1.0
 * 
 */
public interface ShoppingCartMapper {
	/**
	 * 根据用户id查询购物车
	 * 
	 * @param userId
	 *            用户id
	 * @return 购物车对象
	 * @throws Exception
	 */
	public ShoppingCart queryByUserId(int userId) throws Exception;

	/**
	 * 根据id查询购物车
	 * 
	 * @param id
	 *            购物车id
	 * @return 购物车对象
	 * @throws Exception
	 */
	public ShoppingCart queryById(int id) throws Exception;

	/**
	 * 更新购物车信息
	 * 
	 * @param shoppingCart
	 *            购物车对象
	 * @throws Exception
	 */
	public void update(ShoppingCart shoppingCart) throws Exception;

	/**
	 * 增加购物车
	 * 
	 * @param shoppingCart
	 *            购物车对象
	 * @throws Exception
	 */

	public void add(ShoppingCart shoppingCart) throws Exception;

	/**
	 * 删除购物车
	 * 
	 * @param userid
	 *            根据用户id删除
	 * @throws Exception
	 */
	public void delete(int userId) throws Exception;

}
