package cn.com.zjf.action;

import com.opensymphony.xwork2.ActionSupport;

public class IndexAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public String execute(){

		System.out.println(getText("student.code"));
		System.out.println(getText("student.name"));
		System.out.println(getText("student.age"));
		System.out.println(getText("student.sex"));
		
		return "success";
	}
}
