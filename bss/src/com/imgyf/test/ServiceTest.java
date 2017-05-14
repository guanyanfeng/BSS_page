package com.imgyf.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.imgyf.entity.Orders;
import com.imgyf.entity.ShoppingCart;
import com.imgyf.entity.Users;
import com.imgyf.mapper.OrdersMapper;
import com.imgyf.mapper.ShoppingCartMapper;
import com.imgyf.mapper.UsersMapper;

public class ServiceTest {
	public static void main(String[] args) throws Exception {

		ApplicationContext applicationContext = new ClassPathXmlApplicationContext(
				"classpath:config/applicationContext.xml");
//		UsersMapper usersMapper = (UsersMapper) applicationContext
//				.getBean("usersMapper");
//		Users user = usersMapper.queryById(10011);
//		System.out.println(user);
//		usersMapper.add(user);
		OrdersMapper ordersMapper = (OrdersMapper) applicationContext
				.getBean("ordersMapper");
		Orders o=new Orders(0,0,null,0,0,null);
		int a=ordersMapper.add(o);
//		ShoppingCartMapper cartMapper=(ShoppingCartMapper)applicationContext.getBean("shoppingCartMapper");
//		cartMapper.add(new ShoppingCart());
		System.out.println(o.getId());
		
	}

}
