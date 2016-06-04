package cn.zjf.action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

public class TestServletContextAction {
	public String execute(){
		HttpServletRequest request=	ServletActionContext.getRequest();
		HttpSession session=ServletActionContext.getRequest().getSession();
		ServletContext application=ServletActionContext.getServletContext();
		String name=request.getParameter("name");
		System.out.println(name);
		return "success";
	}
}
