package cn.com.zjf.action;

import com.opensymphony.xwork2.ActionContext;

public class InputAction {
	
	
	public static String myName="zjf";
	public static String getMyName(){
		
		
		return "zjf";
	}
	private String code;
	private String name;
	
	
	public InputAction() {
		
		
		
	}
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String execute(){
		
		System.out.println(code+"_"+name);
		
		/*1.��ValueStack ��ROOT ��ѹ�����*/
		People people=new People("people");
		Aniaml aniaml=new Aniaml("aniaml") ;
		ActionContext.getContext().getValueStack().push(people);
		ActionContext.getContext().getValueStack().push(aniaml);
		
		/*2.��Session�д洢�ֶ�*/
		
		ActionContext.getContext().getSession().put("session", "session");
		ActionContext.getContext().getApplication().put("people", people);
		
		return "success";
	}
	
}
