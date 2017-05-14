 package com.imgyf.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtils {
	public static Date stringToDate(String format,String strDate) {
		DateFormat df = new SimpleDateFormat(format);
		Date d = null;
		try {
			d = df.parse(strDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return d;
	}
	public static String dateToString(String format,Date date) {
		DateFormat df = new SimpleDateFormat(format);
		return df.format(date);
	}
	public static int getAge(String format,String strDate){
		DateFormat df = new SimpleDateFormat(format);
		Date d = null;
		try {
			d = df.parse(strDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		Date d1=new Date();
		return d1.getYear()-d.getYear();
	}

}
