package cn.com.zjf.model;

import java.util.Arrays;

public class Student {
	private Integer id;
	private String code;
	private String name;
	private String sex;
	private String []likes;
	public Student() {
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
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
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String [] getLikes() {
		return likes;
	}
	public void setLikes(String [] likes) {
		this.likes = likes;
	}
	public Student(Integer id, String code, String name, String sex, String[] likes) {
		super();
		this.id = id;
		this.code = code;
		this.name = name;
		this.sex = sex;
		this.likes = likes;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", code=" + code + ", name=" + name + ", sex=" + sex + ", likes="
				+ Arrays.toString(likes) + "]";
	}
	@Override
	public boolean equals(Object obj) {
		Student student=null;
		if(obj instanceof Student){
			student=(Student) obj;
			return this.id==student.id;
		}
		return super.equals(obj);
	}
}
