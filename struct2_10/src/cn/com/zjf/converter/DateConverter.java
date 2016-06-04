package cn.com.zjf.converter;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.apache.struts2.util.StrutsTypeConverter;

public class DateConverter extends StrutsTypeConverter {

	public DateConverter() {
		System.out.println("DateConverter ");
	}

	DateFormat df = new SimpleDateFormat("yyyy/MM/dd HH/mm/ss");

	@Override
	public Object convertFromString(Map context, String[] values, Class toClass) {
		System.out.println("convarsion toDate");
		System.out.println(values[0]);
		if (toClass == Date.class) {
			try {
				if (values != null && values.length >= 0) {
					String value = values[0];
					return df.parseObject(value);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	@Override
	public String convertToString(Map context, Object o) {
		System.out.println("convarsion fromDate");
		if (o instanceof Date) {
			return df.format(o);
		}
		return null;
	}

}
