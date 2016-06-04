package cn.com.zjf.action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.util.ServletContextAware;

import com.opensymphony.xwork2.ActionSupport;


/**
 * Struts 访问ServletAPI
 * 
 * 4.通过实现ServletXXXAware 接口
 * 
 */
public class TestServletAwareAction extends ActionSupport implements ServletRequestAware,ServletResponseAware,ServletContextAware{
	private HttpServletRequest request;
	private ServletContext application;
	private HttpServletResponse response;
	private HttpSession session;
	
	private static final long serialVersionUID = 1L;

	@Override
	public String execute() throws Exception {
		
		
		session=request.getSession();
		System.out.println(request.getParameterValues("flag")[1]);
		System.out.println(request.getAttribute("A"));
		System.out.println(session.getAttribute("A"));
		System.out.println(application.getAttribute("A"));
		
		request.setAttribute("B", "B");
		session.setAttribute("B", "B");
		application.setAttribute("B", "B");
		
		return SUCCESS;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request=request;
		
	}

	@Override
	public void setServletContext(ServletContext application) {
		this.application=application;
		
	}

	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response=response;
		
	}

}
