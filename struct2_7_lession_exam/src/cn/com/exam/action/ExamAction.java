package cn.com.exam.action;

import java.util.Map;

import org.apache.struts2.interceptor.ParameterAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import cn.com.exam.model.PageService;

public class ExamAction extends ActionSupport implements RequestAware,SessionAware,ParameterAware{
	private PageService service=new PageService();
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	public String execute() throws Exception {
		return super.execute();
	}
	public String page(){
		
		if(!sessionMap.containsKey("name")||!sessionMap.containsKey("code")){
			return "page_error";
		}
		
		
		requestMap.put("single", service.page(PageService.SINGLE));
		requestMap.put("mult", service.page(PageService.MULT));
		return "page_success";
	}
	public String handler(){
		int result=service.handlerResult(paramaterMap,sessionMap.getOrDefault("code", "").toString(),sessionMap.getOrDefault("name", "").toString());
		
		requestMap.put("grade", result);
		return "handler_success";
	}
	private Map<String,String[]> paramaterMap;
	private Map<String,Object> sessionMap;
	private Map<String,Object> requestMap;
	public PageService getService() {
		return service;
	}
	public void setService(PageService service) {
		this.service = service;
	}
	@Override
	public void setSession(Map<String, Object> arg0) {
		this.sessionMap=arg0;
	}
	@Override
	public void setParameters(Map<String, String[]> arg0) {
		this.paramaterMap=arg0;
	}
	@Override
	public void setRequest(Map<String, Object> arg0) {
		this.requestMap=arg0;
	}
}
