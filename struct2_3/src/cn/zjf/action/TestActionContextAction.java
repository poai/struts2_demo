package cn.zjf.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

public class TestActionContextAction {
	public String execute(){
		/*ActionContext对象是Action的上下文对象，可以从中获取相关的信息*/
		ActionContext actionContext=ActionContext.getContext();
		/*获取Application对应的Map*/
		Map<String,Object> applicationMap= actionContext.getApplication();
		applicationMap.put("application", "application");
		/*获取session对应的Map*/
		Map<String,Object> sessionMap=actionContext.getSession();
		sessionMap.put("session", "session");
		/*获取request对应的Map*/
		Map<String,Object> requestMap=(Map<String, Object>) actionContext.get("request");
		requestMap.put("request", "request");
		/*获取请求参数对应的Map
		 * 只能读不能写(写不出错)
		 * */
		Map<String,Object> paramMap=actionContext.getParameters();
		/*返回的是字符串数组*/
		System.out.println(((String[])paramMap.get("name"))[0]);
		return "success";
	}
}
