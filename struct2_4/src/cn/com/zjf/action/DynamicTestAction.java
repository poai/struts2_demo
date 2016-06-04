package cn.com.zjf.action;

import com.opensymphony.xwork2.ActionSupport;

public class DynamicTestAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
	public String post(){
		System.out.println("POST");
		return SUCCESS;
	}
	public String get(){
		System.out.println("GET");
		return SUCCESS;
	}
}
