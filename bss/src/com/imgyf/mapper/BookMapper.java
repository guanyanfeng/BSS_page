package com.imgyf.mapper;

import java.util.List;

import com.imgyf.entity.Book;

/**
 * 
 * @author 管严锋
 * @version 1.0
 * 
 */
public interface BookMapper {
	public Book queryById(int id)throws Exception;
	
	public List<Book> queryAll( ) throws Exception;

	/**
	 * 根据书名精确查询
	 * 
	 * @param name
	 *            书名
	 * @return 书对象
	 * @throws Exception
	 */
	public Book queryByName(String name) throws Exception;

	/**
	 * 根据书名关键字模糊查询查询
	 * 
	 * @param name
	 *            书名
	 * @return 书对象
	 * @throws Exception
	 */
	public List<Book> queryLikeName(String name) throws Exception;

	/**
	 * 更新书本信息
	 * 
	 * @param book
	 *            书本对象
	 * @throws Exception
	 */

	public void update(Book book) throws Exception;

	/**
	 * 添加书本
	 * 
	 * @param book
	 *            书本对象
	 * @throws Exception
	 */
	public void add(Book book) throws Exception;

	/**
	 * 删除书本
	 * 
	 * @param id
	 *            删除书本id
	 * @throws Exception
	 */
	public void delete(int id) throws Exception;

}
