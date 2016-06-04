package cn.com.cxsw.common.model;

public class Student {

	@Override
	public String toString() {
		return "Student [code=" + code + ", name=" + name + ", sex=" + sex + ", school=" + school + "]";
	}
	private Integer code;
	private String name;
	private String sex;
	private String school;
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
	public Student(Integer code, String name, String sex, String school) {
		super();
		this.code = code;
		this.name = name;
		this.sex = sex;
		this.school = school;
	}
	public Student() {
		// TODO Auto-generated constructor stub
	}
}
