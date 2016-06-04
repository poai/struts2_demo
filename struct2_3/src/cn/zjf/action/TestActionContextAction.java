package cn.zjf.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

public class TestActionContextAction {
	public String execute(){
		/*ActionContext������Action�������Ķ��󣬿��Դ��л�ȡ��ص���Ϣ*/
		ActionContext actionContext=ActionContext.getContext();
		/*��ȡApplication��Ӧ��Map*/
		Map<String,Object> applicationMap= actionContext.getApplication();
		applicationMap.put("application", "application");
		/*��ȡsession��Ӧ��Map*/
		Map<String,Object> sessionMap=actionContext.getSession();
		sessionMap.put("session", "session");
		/*��ȡrequest��Ӧ��Map*/
		Map<String,Object> requestMap=(Map<String, Object>) actionContext.get("request");
		requestMap.put("request", "request");
		/*��ȡ���������Ӧ��Map
		 * ֻ�ܶ�����д(д������)
		 * */
		Map<String,Object> paramMap=actionContext.getParameters();
		/*���ص����ַ�������*/
		System.out.println(((String[])paramMap.get("name"))[0]);
		return "success";
	}
}
