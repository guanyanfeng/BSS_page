package com.imgyf.mapper;

import java.util.List;

import com.imgyf.entity.CartItem;

/**
 * 
 * @author 管严锋
 * @version 1.0
 * 
 */
public interface CartItemMapper {
	/**
	 * 根据购物车id查询子项
	 * 
	 * @param cartId
	 *            购物车id
	 * @return 子项集合
	 * @throws Exception
	 */

	public List<CartItem> queryByCartId(int cartId) throws Exception;

	/**
	 * 根据子项id查子项
	 * 
	 * @param id
	 *            子项id
	 * @return 子项对象
	 * @throws Exception
	 */
	public CartItem queryById(int id) throws Exception;

	/**
	 * 更新子项
	 * 
	 * @param item
	 *            子项对象
	 * @throws Exception
	 */
	public void update(CartItem item) throws Exception;

	/**
	 * 添加子项
	 * 
	 * @param item
	 *            子项对象
	 * @throws Exception
	 */

	public void add(CartItem item) throws Exception;

	/**
	 * 删除子项
	 * 
	 * @param id
	 *            子项id
	 * @throws Exception
	 */
	public void delete(int id) throws Exception;

	/**
	 * 根据购物车id删除子项
	 * 
	 * @param cartId
	 *            购物车id
	 * @throws Exception
	 */
	public void deleteByCartId(int cartId) throws Exception;

}
