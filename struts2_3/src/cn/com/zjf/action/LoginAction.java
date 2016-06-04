package cn.com.zjf.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 1.Struts�����˵�����ʽ���,��ͨ��Java�༴������ΪStruts��Action
 * 2.Struts�б����ݵĻ�ȡ����ͨ��Action��������ӳ��
 * 		.��Action�ж���ͱ���name����ֵ����Ӧ������
 * 		.ΪAction�����Զ����Ӧ��get&set����
 * 
 * 
 * 3.Struts��Action������ʹ������ע�����
 * 		.������ӳ���� ParametersInterceptor ���������
 * 		.Action���Եĸ�ֵ���ݵ�����û�ж�Ӧ��set����,  : userCode  setUserCode()
 * 4.����ת��������
 * 		.Struts ������Զ�����ת��
 * 		.Struts ����ת������Ӱ��ҳ�����ת�����ǻᱨ��
 * 		.��Action �̳�ActionSupport ����ʹ��ActionSupport�е�һЩĬ�ϴ������
 * 		.���̳���ActionSupport ֮�������������ת���쳣�������ᱨ�����Ƿ���һ��name="input"��һ���߼���ͼ
 * 
 * 5.Struts Ĭ��֧�ֵ�����ת������
 * 		.String
 *  	.boolean / Boolean
 *    	.char / Character
 *   	.int / Integer, float / Float, long / Long, double / Double
 *  	.dates 
 *  	.arrays 		
 *   	.collections		
 * */


public class LoginAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String Code;
	private String userSex;
	private String userPass;
	private Integer userAge;
	
	//private String[] userLikes;
	private List<String> userLikes;
	
	public String getUserCode() {
		return Code;
	}
	public void setUserCode(String userCode) {
		this.Code = userCode;
	}
	public String getUserSex() {
		return userSex;
	}
	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	
	public String execute(){
		System.out.println(Code+"_"+userSex+"_"+userPass+"_"+userAge +"_"+userLikes);
		
		return "success";
	}
	public Integer getUserAge() {
		return userAge;
	}
	public void setUserAge(Integer userAge) {
		this.userAge = userAge;
	}
	public List<String> getUserLikes() {
		return userLikes;
	}
	public void setUserLikes(List<String> userLikes) {
		this.userLikes = userLikes;
	}
	
}
