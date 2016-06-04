package cn.com.zjf.action;



import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.opensymphony.xwork2.ActionSupport;

import cn.com.zjf.service.StudentPageService;

public class PageAction extends ActionSupport implements RequestAware{
	
	private Map<String, Object> requestMap;
	private static final long serialVersionUID = 1L;
	private Integer page;
	@Override
	public String execute() throws Exception {
		if(page==null){
			page=1;
		}
		StudentPageService sevice=new StudentPageService();
		requestMap.put("pageModel", sevice.getPageModel(page));
		return SUCCESS;
	}
	@Override
	public void setRequest(Map<String, Object> requestMap) {
		this.requestMap=requestMap;
		
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	
}
