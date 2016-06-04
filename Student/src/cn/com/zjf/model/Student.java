package cn.com.zjf.model;

import java.io.Serializable;
import java.util.Date;

public class Student implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer code;
	private String name;
	private String sex;
	private String like;
	private String introduce;
	private String school;
	private String image;
	private Date birth;
	
	public Student() {
		// TODO Auto-generated constructor stub
	}

	public Student(Integer code, String name, String sex, String like, String introduce, String school, String image,Date birth) {
		super();
		this.code = code;
		this.name = name;
		this.sex = sex;
		this.like = like;
		this.introduce = introduce;
		this.school = school;
		this.image = image;
		this.birth=birth;
	}
	public Student(Integer code, String name, String sex, String like, String introduce, String school, String image) {
		super();
		this.code = code;
		this.name = name;
		this.sex = sex;
		this.like = like;
		this.introduce = introduce;
		this.school = school;
		this.image = image;
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

	public String getLike() {
		return like;
	}

	public void setLike(String like) {
		this.like = like;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}


	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	@Override
	public String toString() {
		return "Student [code=" + code + ", name=" + name + ", sex=" + sex + ", like=" + like + ", introduce="
				+ introduce + ", school=" + school + ", image=" + image + ", birth=" + birth + "]";
	}
	
}
