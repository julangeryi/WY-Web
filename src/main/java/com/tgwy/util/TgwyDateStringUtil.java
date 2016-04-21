package com.tgwy.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TgwyDateStringUtil {

	/** 缺省长日期格式 */
	private static final String DEFAULT_DATETIME_FORMAT = "yyyy-MM-dd HH:mm";
	
	/*
	 * 日期格式*/
	private static final String LOCAL_DATE_FORMAT = "yyyy-MM-dd";
	
	/** 缺省长日期格式,精确到秒 */
	private static final String DEFAULT_DATETIME_FORMAT_SEC = "yyyy-MM-dd HH:mm:ss";
	
	/** 日期转换 "月/日/年" 转换为 "年/月/日" */
	private static final String LOCAL_DATETIME_FORMAT = "yyyy-MM-dd";
	
	private static final String DATEPICKER_DATETIME_FORMAT = "MM/dd/yyyy";

	
	public static String getLocalDate() {
		SimpleDateFormat format = new SimpleDateFormat(DEFAULT_DATETIME_FORMAT);
		return format.format(new Date());
	}
	
	public static String getOnlyDate(){
		SimpleDateFormat format = new SimpleDateFormat(LOCAL_DATE_FORMAT);
		return format.format(new Date());
	}
	
	public static String getCalcutelaterDate(int day){
		Date d = new Date();
		SimpleDateFormat format = new SimpleDateFormat(LOCAL_DATE_FORMAT);
		return format.format(new Date(d.getTime() + day * 24 * 60 * 60 * 1000));
	}
	
	public static String getExchageDateFormat(String dateTimeStr){
		SimpleDateFormat format = new SimpleDateFormat(DATEPICKER_DATETIME_FORMAT);
		Date date = null;
		String result = "";
		try {
			date = format.parse(dateTimeStr);
			SimpleDateFormat local = new SimpleDateFormat(LOCAL_DATETIME_FORMAT);
			result = local.format(date);
		} catch (ParseException e) {
			result = "";
		}
		return result;
	}
	
	

}
