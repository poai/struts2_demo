package cn.com.zjf.converter;

import java.text.SimpleDateFormat;

import org.apache.struts2.util.IteratorGenerator.Converter;


public class DateConverter implements Converter{
	@Override
	public Object convert(String str) throws Exception {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy年MM月dd日");
		return sdf.parse(str);
	}

}
