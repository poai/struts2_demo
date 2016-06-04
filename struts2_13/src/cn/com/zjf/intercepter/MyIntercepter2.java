package cn.com.zjf.intercepter;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import com.opensymphony.xwork2.interceptor.PreResultListener;

public class MyIntercepter2 implements Interceptor{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("MyIntercepter2_destroy");
	}

	@Override
	public void init() {
		System.out.println("MyIntercepter2_init");
	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		
		
		invocation.addPreResultListener(new PreResultListener() {
			@Override
			public void beforeResult(ActionInvocation invocation, String resultcode) {
				// TODO Auto-generated method stub
				System.out.println(resultcode);
				if("success".equals(resultcode)){
					ActionContext.getContext().getSession().put("key", "Ö´ÐÐ³É¹¦");
				}
			}
		});
		System.out.println("intercept2 pre");
		String resultCode = invocation.invoke();
		System.out.println("intercept2 post");
		
		
		
		return resultCode;
	}

}
