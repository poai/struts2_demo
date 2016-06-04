package cn.com.zjf.action;

import java.util.Map;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.ParameterAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;


/**
 * Struts 访问ServletAPI
 * 
 * 2.通过实现XXXAware 接口
 * 
 */
public class TestAwareAction extends ActionSupport implements RequestAware,SessionAware,ApplicationAware,ParameterAware{
	
	private Map<String, Object> requestMap;
	private Map<String, Object> sessionMap;
	private Map<String, Object> applicationMap;
	private Map<String, String[]> paramaterMap;
	private static final long serialVersionUID = 1L;

	@Override
	public String execute() throws Exception {
		
		System.out.println(paramaterMap.get("flag")[1]);
		System.out.println(requestMap.get("A"));
		System.out.println(sessionMap.get("A"));
		System.out.println(applicationMap.get("A"));
		
		
		requestMap.put("B", "B");
		sessionMap.put("B", "B");
		applicationMap.put("B", "B");
		return SUCCESS;
	}

	@Override
	public void setRequest(Map<String, Object> requestMap) {
		this.requestMap=requestMap;
		
	}

	@Override
	public void setParameters(Map<String, String[]> parameterMap) {
		this.paramaterMap=parameterMap;
		
	}

	@Override
	public void setApplication(Map<String, Object> applicationMap) {
		this.applicationMap=applicationMap;
	}

	@Override
	public void setSession(Map<String, Object> sessionMap) {
		this.sessionMap=sessionMap;
		
	}
	
	
}
