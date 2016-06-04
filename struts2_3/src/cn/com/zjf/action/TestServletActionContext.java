package cn.com.zjf.action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;


/**
 * Struts ∑√Œ ServletAPI
 * 
 * 3.Õ®π˝ServletActionContext
 * 
 */
public class TestServletActionContext extends ActionSupport {

	
	private static final long serialVersionUID = 1L;

	@Override
	public String execute() throws Exception {
		
		
		
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpServletResponse response=ServletActionContext.getResponse();
		HttpSession session=request.getSession();
		ServletContext application=ServletActionContext.getServletContext(); 
		
		System.out.println(request.getParameterValues("flag")[1]);
		System.out.println(request.getAttribute("A"));
		System.out.println(session.getAttribute("A"));
		System.out.println(application.getAttribute("A"));
		
		request.setAttribute("B", "B");
		session.setAttribute("B", "B");
		application.setAttribute("B", "B");
		return SUCCESS;
	}
}
