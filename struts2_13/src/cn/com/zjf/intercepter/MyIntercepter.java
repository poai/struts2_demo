package cn.com.zjf.intercepter;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class MyIntercepter implements Interceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("MyIntercepter_destroy");
	}

	@Override
	public void init() {
		System.out.println("MyIntercepter_init");
	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {

		System.out.println("intercept pre");
		String resultCode = invocation.invoke();
		System.out.println("intercept post");
		return resultCode;
	}

}
