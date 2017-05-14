package com.imgyf.test;


import java.io.InputStream;
import java.util.Properties;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class MyBatisUtil {
	private static SqlSessionFactory factory;
	static{
		//1.����SqlSessionFactoryBuilder
		SqlSessionFactoryBuilder sfb  =
					new SqlSessionFactoryBuilder();
		//2.��ȡ�����ļ����Ҵ���SqlSessionFactory
	      factory = 
	    		  sfb.build(MyBatisUtil.class.getResourceAsStream("configuration.xml"));
	}
	
	public static SqlSession  getSqlSession(){
		//3.�����ỰSqlSession
		SqlSession session = factory.openSession(true);//Ĭ��Ϊfalse�ֶ��ύ
		return session;				
	}
}
