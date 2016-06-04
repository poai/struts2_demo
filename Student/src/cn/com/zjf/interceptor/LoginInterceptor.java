package cn.com.zjf.interceptor;

import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

/**
 * 1.身份验证拦截器
 * */
public class LoginInterceptor extends AbstractInterceptor {
	private Map<String, Object> sessionMap;
	private static final long serialVersionUID = 1L;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		ActionContext ctx = invocation.getInvocationContext(); 
		sessionMap=ctx.getSession();
		String uri=ServletActionContext.getRequest().getRequestURI();
		
		/*跳过*/
		if(uri.contains("/Student/login.action")){
			return invocation.invoke();
		}
		if(sessionMap.get("user")==null){
			System.out.println("login");
			return "index";
		}
		String result=invocation.invoke();
		return result;
	}
}
