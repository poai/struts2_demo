package cn.zjf.action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.util.ServletContextAware;

public class TestServletAwareAction implements ServletContextAware,ServletRequestAware,ServletResponseAware{
	private HttpServletResponse response;
	private HttpServletRequest request;
	private ServletContext context;
	public String execute(){
		String name=request.getParameter("name");
		System.out.println(name);
		return "success";
	}
	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response=response;
	}
	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request=request;
	}
	@Override
	public void setServletContext(ServletContext context) {
		this.context=context;
	}
}
