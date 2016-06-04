package cn.com.zjf.action;

import com.opensymphony.xwork2.ActionSupport;

public class HandlerMessageAction extends ActionSupport {
	private int price;
	private static final long serialVersionUID = 1L;
	@Override
	public String execute() throws Exception {
		if(price%4==1){
			return ERROR;
		}
		if(price%4==2){
			return INPUT;
		}
		if(price%4==3){
			return LOGIN;
		}
		if(price%4==0){
			return NONE;
		}
		return "success";
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
		
}
