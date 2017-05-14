package com.imgyf.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.imgyf.entity.Orders;
import com.imgyf.entity.Users;
import com.imgyf.mapper.OrdersMapper;
import com.imgyf.mapper.UsersMapper;

public class UserService {
	public static void main(String[] args) throws Exception {

		ApplicationContext applicationContext = new ClassPathXmlApplicationContext(
				"classpath:config/applicationContext.xml");
		UsersMapper usersMapper = (UsersMapper) applicationContext
				.getBean("usersMapper");
//		(int id, String name, String password, double account, int age,
//				String birthday, String gender, String email)
		Users user = new Users(0,"user1","123456",10000,24,"1777","男","1234@qq.com");
		System.out.println(user);
		usersMapper.add(user);

	
	}
}