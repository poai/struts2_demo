package cn.com.zjf.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import cn.com.zjf.service.LoginService;

public class LoginAction extends ActionSupport implements SessionAware{
	private Map<String, Object> sessionMap;
	private String userCode;
	private String userPass;
	private LoginService loginService;

	private static final long serialVersionUID = 1L;

	@Override
	public String execute() throws Exception {
		System.out.println(userCode );
		System.out.println(userPass );
		
		loginService=new LoginService();
		
		if(loginService.login(userCode, userPass)){
			sessionMap.put("user", userCode);
			return SUCCESS;
		}
		return INPUT;
	}

	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public String getUserPass() {
		return userPass;
	}

	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

	@Override
	public void setSession(Map<String, Object> sessionMap) {
		this.sessionMap=sessionMap;
	}

}
