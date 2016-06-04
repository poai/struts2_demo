package cn.com.zjf.action;

import com.opensymphony.xwork2.ActionSupport;

public class InputAction extends ActionSupport {
	/**
	 * 
	 */
	private String code;
	private String name;
	private static final long serialVersionUID = 1L;
	
	public String execute(){
		return "success";
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
