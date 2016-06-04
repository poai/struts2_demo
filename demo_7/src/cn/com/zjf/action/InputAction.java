package cn.com.zjf.action;

import com.opensymphony.xwork2.ActionSupport;

public class InputAction extends ActionSupport{
	private Integer code;
	private String name;
	private static final long serialVersionUID = 1L;

	public String execute() throws Exception {
		
		
		System.out.println(this);
		return "success";
	}

	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "InputAction [code=" + code + ", name=" + name + "]";
	}
	
}
