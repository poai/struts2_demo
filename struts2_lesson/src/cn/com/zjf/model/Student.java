package cn.com.zjf.model;

import java.util.Arrays;

public class Student {
	private Long id;
	private Integer code;
	private String name;
	private String sex;
	private String school;
	private String []likes;
	
	public Student() {
		// TODO Auto-generated constructor stub
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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

	public String[] getLikes() {
		return likes;
	}

	public void setLikes(String[] likes) {
		this.likes = likes;
	}

	public Student(Long id, Integer code, String name, String sex, String school, String[] likes) {
		super();
		this.id = id;
		this.code = code;
		this.name = name;
		this.sex = sex;
		this.school = school;
		this.likes = likes;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", code=" + code + ", name=" + name + ", sex=" + sex + ", school=" + school
				+ ", likes=" + Arrays.toString(likes) + "]";
	}
	
	
}
