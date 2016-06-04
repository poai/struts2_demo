package cn.com.zjf.action;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class MyIntercepter extends AbstractInterceptor{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		System.out.println("before invocation");
		/*执行其它拦截器*/
		String result=invocation.invoke();
		System.out.println("after invocation");
		return result;
	}

}
