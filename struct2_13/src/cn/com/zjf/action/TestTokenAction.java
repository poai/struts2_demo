package cn.com.zjf.action;

import com.opensymphony.xwork2.ActionSupport;


public class TestTokenAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;
	@Override
	public String execute() throws Exception {
		
		Thread.sleep(2*1000);
		System.out.println(username);
		
		return SUCCESS;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
}	
