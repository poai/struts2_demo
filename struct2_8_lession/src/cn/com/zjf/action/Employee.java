package cn.com.zjf.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import cn.com.zjf.service.Dao;

public class Employee implements RequestAware{
	private Map<String,Object> requestMap;
	private String name;
	private String passWord;
	private String gender;
	private String dept;
	private List<String > roles;
	private String desc;
	private Dao dao=new Dao();
	public String input(){
		requestMap.put("depts", dao.getDeperements());
		requestMap.put("roles", dao.getRoles());
		/*配置主题*/
		//requestMap.put("theme", "simple");
		return "input";
	}
	@Override
	public void setRequest(Map<String, Object> arg0) {
		this.requestMap=arg0;
	}
	
	public String save(){
		System.out.println("save"+this);
		return "save";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public List<String> getRoles() {
		return roles;
	}
	public void setRoles(List<String> roles) {
		this.roles = roles;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	
}
