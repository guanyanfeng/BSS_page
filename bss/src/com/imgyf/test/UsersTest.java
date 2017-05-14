package com.imgyf.test;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.imgyf.entity.Orders;
import com.imgyf.entity.Users;
import com.imgyf.mapper.OrdersMapper;
import com.imgyf.mapper.ShoppingCartMapper;
import com.imgyf.mapper.UsersMapper;

public class UsersTest {
	public static void main(String[] args) {
		try {
			InputStream inputStream = Resources
					.getResourceAsStream("config/SqlMapConfig.xml");
			SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder()
					.build(inputStream);
			SqlSession sqlSession = sessionFactory.openSession(true);
			// UsersMapper userMapper = sqlSession.getMapper(UsersMapper.class);
			// Users user = new Users(0, "小强", "123456", 100, 18, "1999-12-1",
			// "男", "1231456@qq.com");
			// userMapper.add(user);
			// Users u = userMapper.queryById(10001);
			// System.out.println(u);
			// Users u=userMapper.queryByName("嗯哈哈");
			// u.setAge(22);
			// userMapper.delete(u.getId());;
			// System.out.println(u);
			// sqlSession.close();
			// ShoppingCartMapper shoppingCartMapper = sqlSession
			// .getMapper(ShoppingCartMapper.class);
			//
			// System.out.println(shoppingCartMapper.queryByUserId(10001));
			//
			OrdersMapper ordersMapper = sqlSession
					.getMapper(OrdersMapper.class);
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {

		}

	}
}
