package cn.com.zjf.action;

import com.opensymphony.xwork2.ActionSupport;

public class ValidateAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private String password;
	private String password2;
	private Integer count;
	private int age;
	private String idCard;
	
	@Override
	public String execute() throws Exception {
		System.out.println(age);
		System.out.println(password);
		System.out.println(password2);
		return SUCCESS;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPassword2() {
		return password2;
	}

	public void setPassword2(String password2) {
		this.password2 = password2;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public String getIdCard() {
		return idCard;
	}

	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	
	
	
}
