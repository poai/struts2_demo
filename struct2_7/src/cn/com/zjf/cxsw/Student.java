package cn.com.zjf.cxsw;

public class Student {
	private String code;
	private String name;
	private int age;
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
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public Student() {
		// TODO Auto-generated constructor stub
	}
	public Student(String code, String name, int age) {
		super();
		this.code = code;
		this.name = name;
		this.age = age;
	}
	@Override
	public String toString() {
		return "Student [code=" + code + ", name=" + name + ", age=" + age + "]";
	}
	
}
