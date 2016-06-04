package cn.comn.zjf.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class InputAction  extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer code;
	private String name;
	private String sex;
	//private String[] likes;
	private List<String> likes;
	private String school;
	
	public String execute(){
		
		System.out.println(this);
		return "success";
	}
	
	
	public InputAction() {
		// TODO Auto-generated constructor stub
	}

	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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
		return "InputAction [code=" + code + ", name=" + name + ", sex=" + sex + ", likes=" + likes
				+ ", school=" + school + "]";
	}


	public List<String> getLikes() {
		return likes;
	}


	public void setLikes(List<String> likes) {
		this.likes = likes;
	}
	
}
