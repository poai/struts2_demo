package cn.com.zjf.cxsw;

import com.opensymphony.xwork2.ActionSupport;

public class IndexAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int code;
	@Override
	public String execute() throws Exception{
		if(code==1){
			throw new Exception("亲不能为1哦");
		}
		if(code==2){
			throw new java.sql.SQLException("用户名不能为2");
		}
		if(code==3){
			throw new Exception("出错啦");
			
		}
		System.out.println("success");
		return "input";
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
}
