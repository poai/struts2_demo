package cn.com.zjf.action;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.apache.struts2.util.StrutsTypeConverter;

/**
 * �Զ�������ת�� 
 * 1.�̳�StrutsTypeConverter ||DefaultTypeConverter 
 * 2.ʵ��ת���ķ���
 * 3.��ActionClassName-conversion.properties ������
 */

public class DateConverter extends StrutsTypeConverter {
	DateFormat df = new SimpleDateFormat("yyyy/MM/dd HH/mm/ss");

	@Override
	public Object convertFromString(Map arg0, String[] arg1, Class arg2) {
		/* ��String���͵�����ת��ΪDate */
		System.out.println(arg2+"_"+Date.class);
		System.out.println("convertFromString");
		Date date = null;
		try {
			date = df.parse(arg1[0]);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}

	@Override
	public String convertToString(Map arg0, Object arg1) {
		String result = null;
		result = df.format(arg1);
		return result;
	}

}
