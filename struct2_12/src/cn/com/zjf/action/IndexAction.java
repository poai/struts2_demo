package cn.com.zjf.action;

import com.opensymphony.xwork2.ActionSupport;

public class IndexAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public String get(){
		
		
		System.out.println("get");
		
		return SUCCESS;
	}
	
}