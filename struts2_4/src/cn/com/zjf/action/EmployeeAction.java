package cn.com.zjf.action;

import com.opensymphony.xwork2.ActionSupport;

public class EmployeeAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String action;
	public String add() {

		System.out.println("add");
		System.out.println(action);
		return SUCCESS;
	}

	public String delete() {

		System.out.println("delete");
		System.out.println(action);
		return SUCCESS;
	}

	public String editor() {

		System.out.println("editor");
		System.out.println(action);
		return SUCCESS;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

}
