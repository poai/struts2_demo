package cn.com.zjf;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

public class Test {
	
	
	@org.junit.Test
	public void test(){
		String str="<xml><ToUserName><![CDATA[toUser]]></ToUserName><FromUserName><![CDATA[FromUser]]></FromUserName><CreateTime>123456789</CreateTime><MsgType><![CDATA[event]]></MsgType><Event><![CDATA[subscribe]]></Event></xml>";
		System.out.println(xmlToMap(str));
	}
	
	public Map<String,String> xmlToMap(String xml){
		Map<String,String> map=new HashMap<>();
		try {
			Document document = DocumentHelper.parseText(xml);
			Element element=document.getRootElement();
			
			for(@SuppressWarnings("rawtypes")
			Iterator iterator=element.elementIterator();iterator.hasNext();){
				Element e = (Element) iterator.next(); 
				map.put(e.getName(), e.getStringValue());
			}
		} catch (DocumentException e) {
			e.printStackTrace();
		}
		return map;
		
	}
}
