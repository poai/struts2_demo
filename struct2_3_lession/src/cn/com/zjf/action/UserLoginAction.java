package cn.com.zjf.action;

import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.SessionAware;

public class UserLoginAction implements SessionAware, ApplicationAware {
	private String userName;

	public String execute() {
		session.put("userName", userName);
		Integer count=(Integer) application.get("count");
		if(count==null){
			count=0;
		}
		count++;
		application.put("count", count);
		return "success";
	}
	public String loginout(){
		Integer count=(Integer) application.get("count");
		if(count!=null&&count>0){
			count--;
			application.put("count", count);
		}
		if(session instanceof SessionMap){
			((SessionMap<String,Object>)session).invalidate();
			/*销毁Session*/
		}
		return "success";
	}
	private Map<String, Object> application;
	private Map<String,Object> session;
	@Override
	public void setApplication(Map<String, Object> application) {
		this.application = application;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
}
