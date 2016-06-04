package cn.com.cxsw.action;

import java.util.Arrays;
import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;

public class TestI18nAction extends ActionSupport{
	private Date date=null; 
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	public String execute() throws Exception {
		/*在Action中访问国际化资源文件中的值*/
		date=new Date();
		String userName=getText("username");
		System.out.println(userName);
		String time=getText("time", Arrays.asList(new Date()));
		System.out.println(time);
		return SUCCESS;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}

}
