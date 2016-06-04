package cn.comn.zjf.action;

import com.opensymphony.xwork2.ActionContext;

public class InputAction {
	/**
	 * 
	 */
	private String code;
	private String name;
	
	
	public String getCode() {
		System.out.println(Math.random());
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
	
	public String execute()  {
		
		System.out.println(code+"_"+name);
		
		People people=new People("people");
		Animal animal=new Animal("animal");
		ActionContext.getContext().getValueStack().push(people);
		ActionContext.getContext().getValueStack().push(animal);
		
		
		return "success";
	}
	public static String   get(){
		
		return "sss";
	}
}
