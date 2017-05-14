package com.imgyf.test;


import java.io.InputStream;
import java.util.Properties;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class MyBatisUtil {
	private static SqlSessionFactory factory;
	static{
		//1.创建SqlSessionFactoryBuilder
		SqlSessionFactoryBuilder sfb  =
					new SqlSessionFactoryBuilder();
		//2.读取配置文件并且创建SqlSessionFactory
	      factory = 
	    		  sfb.build(MyBatisUtil.class.getResourceAsStream("configuration.xml"));
	}
	
	public static SqlSession  getSqlSession(){
		//3.创建会话SqlSession
		SqlSession session = factory.openSession(true);//默认为false手动提交
		return session;				
	}
}
