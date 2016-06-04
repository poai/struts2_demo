package cn.com.zjf;

import java.io.PrintWriter;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletResponseAware;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

import com.opensymphony.xwork2.ActionSupport;

public class IndexAction extends ActionSupport implements ServletResponseAware{
	private static final long serialVersionUID = 1L;
	private String type;
	private String xml;
	@Override
	public String execute() throws Exception {
		System.out.println(this);
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/xml");
		Map<String,String> map=xmlToMap(xml);
		PrintWriter out= response.getWriter();
		
		if("text".equals(type)){
			out.print(generalTEXTXML(map, "谢谢您的关注哦:\nQQ:247690790"));
		}else if("image".equals(type)){
			out.print(generalIMAGEXML(map, "谢谢您的关注哦:\nQQ:247690790"));
		}
		out.flush();
		out.close();
		return  null;
	}
	@Override
	public String toString() {
		return "IndexAction [type=" + type + ", xml=" + xml + ", response=" + response + "]";
	}
	public String getXml() {
		return xml;
	}
	public void setXml(String xml) {
		this.xml = xml;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	private HttpServletResponse response;
	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response=response;
		
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
	public String generalTEXTXML(Map<String,String> map,String message){
		Document document = DocumentHelper.createDocument();
        Element root = document.addElement( "xml" );
        root.addElement( "ToUserName" ).addText(map.get("FromUserName"));
        root.addElement( "FromUserName" ).addText(map.get("ToUserName"));
        root.addElement( "CreateTime" ).addText(new Date().getTime()+"");
        root.addElement( "MsgType" ).addText(map.get("MsgType"));
        root.addElement( "Content" ).addText(message+"\n"+map.get("Content"));
		return document.asXML();
	}
	public String generalIMAGEXML(Map<String,String> map,String message){
		Document document = DocumentHelper.createDocument();
        Element root = document.addElement( "xml" );
        root.addElement( "ToUserName" ).addText(map.get("FromUserName"));
        root.addElement( "FromUserName" ).addText(map.get("ToUserName"));
        root.addElement( "CreateTime" ).addText(new Date().getTime()+"");
        root.addElement( "MsgType" ).addText(map.get("MsgType"));
        Element image=root.addElement( "Image" );
        image.addElement("MediaId").addText(map.get("MediaId"));
		return document.asXML();
	}
	public String generalTESTXML(Map<String,String> map){
		Document document = DocumentHelper.createDocument();
        Element root = document.addElement( "xml" );
        for(Entry<String, String> entry:map.entrySet()){
        	root.addElement( entry.getKey() ).addText(entry.getValue());
        }
        return document.asXML();
	}
}
