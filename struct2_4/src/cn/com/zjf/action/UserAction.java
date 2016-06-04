package cn.com.zjf.action;

import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {

	private static final long serialVersionUID = -2597940154572046653L;

	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

	public String add() {

		return "add-"+SUCCESS;
	}

	public String query() {

		return "query-"+SUCCESS;
	}

	public String update() {

		return "update-"+SUCCESS;
	}

	public String delete() {
		return "delete-"+SUCCESS;
	}
}
