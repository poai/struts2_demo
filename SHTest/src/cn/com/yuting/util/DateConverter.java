package cn.com.yuting.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.apache.struts2.util.StrutsTypeConverter;


public class DateConverter extends StrutsTypeConverter {
	DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
	@SuppressWarnings("rawtypes")
	@Override
	public Object convertFromString(Map arg0, String[] arg1, Class arg2) {
		Date date = null;
		System.out.println(arg1[0]);
		try {
			date = df.parse(arg1[0]);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public String convertToString(Map arg0, Object arg1) {
		System.out.println(arg1);
		String result = null;
		result = df.format(arg1);
		return result;
	}

}
