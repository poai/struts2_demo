package cn.com.zjf.action;

import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;

public class InputAction extends ActionSupport{

	private Integer code;
	private String name;
	private Date birth; /*2015年11月23日 12时:08分:45秒*/
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String execute() throws Exception {
		System.out.println(this);
		
		return SUCCESS;
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

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	@Override
	public String toString() {
		return "InputAction [code=" + code + ", name=" + name + ", birth=" + birth + "]";
	}
	
}
