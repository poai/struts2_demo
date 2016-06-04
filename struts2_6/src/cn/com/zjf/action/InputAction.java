package cn.com.zjf.action;

import java.sql.SQLException;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class InputAction extends ActionSupport{
	
	private static final long serialVersionUID = 1L;
	private Integer code;
	private String pass;
	private String sex;
	//private String []likes;
	private List<String> likes;
	private String school;
	public String execute() throws SQLException{
		
		System.out.println(this);
		
		return "success";
	}
	public Integer getCode() {
		return code;
	}
	public void setCode(Integer code) {
		this.code = code;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	@Override
	public String toString() {
		return "InputAction [code=" + code + ", pass=" + pass + ", sex=" + sex + ", likes=" + likes
				+ ", school=" + school + "]";
	}
	public List<String> getLikes() {
		return likes;
	}
	public void setLikes(List<String> likes) {
		this.likes = likes;
	}
	
}
