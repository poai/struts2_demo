package cn.com.zjf.action;

import com.opensymphony.xwork2.ActionSupport;

public class InputAction extends ActionSupport {
	/**
	 * 
	 */
	private Integer age;
	private String name;
	private String sex;
	private String confirm;
	private String pass;
	private static final long serialVersionUID = 1L;
	
	public String execute(){
		
		
		System.out.println(this);
		return "success";
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}


	public Integer getAge() {
		return age;
	}


	public void setAge(Integer age) {
		this.age = age;
	}


	public String getSex() {
		return sex;
	}


	public void setSex(String sex) {
		this.sex = sex;
	}


	@Override
	public String toString() {
		return "InputAction [age=" + age + ", name=" + name + ", sex=" + sex + "]";
	}


	public String getConfirm() {
		return confirm;
	}


	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}


	public String getPass() {
		return pass;
	}


	public void setPass(String pass) {
		this.pass = pass;
	}

}
