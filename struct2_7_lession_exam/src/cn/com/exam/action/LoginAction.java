package cn.com.exam.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import cn.com.exam.model.LoginService;

public class LoginAction extends ActionSupport implements SessionAware{
	private LoginService service=new LoginService();
	private String code;
	private String pass;
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	public String execute() throws Exception {
		if(code==null||pass==null||"".equals(code)||"".equals(pass)){
			return ERROR;
		}
		
		String name=service.login(code, pass);
		if(name==null){
			return ERROR;
			
		}else{
			sessionMap.put("name", name);
			sessionMap.put("code", code);
		}
		return SUCCESS;
	}
	
	private Map<String,Object> sessionMap;
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public LoginService getService() {
		return service;
	}
	public void setService(LoginService service) {
		this.service = service;
	}
	@Override
	public void setSession(Map<String, Object> arg0) {
		this.sessionMap=arg0;
	}
}
