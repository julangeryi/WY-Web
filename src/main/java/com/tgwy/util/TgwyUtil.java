package com.tgwy.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TgwyUtil {

	/** 缺省长日期格式 */
	public static final String DEFAULT_DATETIME_FORMAT = "yyyy-MM-dd HH-mm";

	/** 缺省长日期格式,精确到秒 */
	public static final String DEFAULT_DATETIME_FORMAT_SEC = "yyyy-MM-dd HH:mm:ss";

	public static String getLocalDate() {
		SimpleDateFormat format = new SimpleDateFormat(DEFAULT_DATETIME_FORMAT);
		return format.format(new Date());
	}

}
