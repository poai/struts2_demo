package cn.zjf.action;

import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.ParameterAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

public class TestAwareAction implements ApplicationAware,RequestAware,SessionAware,ParameterAware{
	private Map<String,Object> applicattionMap;
	private Map<String,Object> requestMap;
	private Map<String,Object> sessionMap;
	private Map<String,String[]>paramMap;
	
	public String execute(){
		applicattionMap.put("application", "application");
		requestMap.put("request", "request");
		sessionMap.put("request","request");
		/*Strut2中表单提交的参数被封装到了一个单独的Map中存储*/
		System.out.println("request:"+requestMap.get("code"));
		System.out.println("request:"+requestMap.get("like"));
		System.out.println("param:"+paramMap.get("code"));
		System.out.println("param:"+paramMap.get("name"));
		System.out.println("param:"+paramMap.get("like"));
		System.out.println(sessionMap.getClass());
		
		if(sessionMap instanceof SessionMap){
			((SessionMap<String, Object>)sessionMap).invalidate();
			System.out.println("Session 失效了....");
		}
		return "success";
	}
	

	@Override
	public void setApplication(Map<String, Object> arg0) {
		this.applicattionMap=arg0;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.sessionMap=session;
		
	}

	@Override
	public void setRequest(Map<String, Object> request) {
		this.requestMap=request;
	}

	@Override
	public void setParameters(Map<String, String[]> parameters) {
		this.paramMap=parameters;
	}
}
