package cn.com.yuting.manger.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import cn.com.yuting.manger.bean.Admin;
import cn.com.yuting.manger.service.LoginService;

public class LoginAction extends ActionSupport implements SessionAware{

	private LoginService loginService=new LoginService();
	private String code;
	private String pass;
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	public String execute() throws Exception {
		System.out.println(code+","+pass);
		Admin admin=loginService.login(code, pass);
		if(admin!=null){
			sessionMap.put("user", admin);
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
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
	private Map<String, Object> sessionMap;
	@Override
	public void setSession(Map<String, Object> sessionMap) {
		this.sessionMap=sessionMap;
	}
	
}
