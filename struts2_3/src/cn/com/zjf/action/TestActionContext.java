package cn.com.zjf.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class TestActionContext extends ActionSupport{

	/**
	 * Struts ����ServletAPI
	 * 
	 * 1.ͨ��ActionContext������
	 * 
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	public String execute(){
		
		ActionContext  context=ActionContext.getContext();
		/*1.��ȡapplicationMap*/
		Map<String,Object> applicationMap=context.getApplication();
		System.out.println("applicationMap"+applicationMap.get("A"));
		applicationMap.put("B", "B");
		/*2.��ȡsessionMap*/
		Map<String,Object> sessionMap=context.getSession();
		System.out.println("sessionMap"+sessionMap.get("A"));
		sessionMap.put("B", "B");
		
		
		/*3.��ȡparamenterMap*/
		Map<String,Object> paramenterMap=context.getParameters();
		String[] strs=(String[]) paramenterMap.get("flag");
		System.out.println(strs.length+"");
		
		
		/*4.��ȡrequestMap*/
		
		Map<String,Object> requestMap=(Map<String, Object>) context.get("request");
		
		System.out.println("requestMap"+requestMap.get("A"));
		requestMap.put("B", "B");
		
		return SUCCESS;
	}

}
