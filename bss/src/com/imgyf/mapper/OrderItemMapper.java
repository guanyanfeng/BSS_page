package com.imgyf.mapper;

import java.util.List;

import com.imgyf.entity.OrderItem;

/**
 * 
 * @author 管严锋
 * @version 1.0
 * 
 */
public interface OrderItemMapper {
	/**
	 * 根据订单id查询子项
	 * 
	 * @param OrderId
	 *            订单id
	 * @return 子项集合
	 * @throws Exception
	 */

	public List<OrderItem> queryByOrderId(int OrderId) throws Exception;

	/**
	 * 根据子项id查子项
	 * 
	 * @param id
	 *            子项id
	 * @return 子项对象
	 * @throws Exception
	 */
	public OrderItem queryById(int id) throws Exception;

	/**
	 * 更新子项
	 * 
	 * @param item
	 *            子项对象
	 * @throws Exception
	 */
	public void update(OrderItem item) throws Exception;

	/**
	 * 添加子项
	 * 
	 * @param item
	 *            子项对象
	 * @throws Exception
	 */

	public void add(OrderItem item) throws Exception;

	/**
	 * 删除子项
	 * 
	 * @param id
	 *            子项id
	 * @throws Exception
	 */
	public void delete(int id) throws Exception;

	/**
	 * 根据订单id删除子项
	 * 
	 * @param orderId
	 *            订单id
	 * @throws Exception
	 */
	public void deleteByOrderId(int orderId) throws Exception;

}
