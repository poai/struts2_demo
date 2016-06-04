package cn.com.zjf.action;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.apache.struts2.util.StrutsTypeConverter;

public class MyDateConverter extends StrutsTypeConverter {
	DateFormat df = new SimpleDateFormat("yyyy年MM月dd日HH时mm分ss秒");

	@Override
	public Object convertFromString(Map arg0, String[] arg1, Class arg2) {
		Date date = null;
		System.out.println(arg0);
		System.out.println(arg1[0]);
		try {
			date = df.parse(arg1[0]);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}

	@Override
	public String convertToString(Map arg0, Object arg1) {

		if (arg1 instanceof Date) {
			return df.format(arg1);

		}
		return null;
	}

}
