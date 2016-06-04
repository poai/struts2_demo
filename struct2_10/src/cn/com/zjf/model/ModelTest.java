package cn.com.zjf.model;

import java.util.Date;

import cn.com.zjf.action.Student;

public class ModelTest {
	private int age;
	private Date birth;
	private Student student;
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	@Override
	public String toString() {
		return "ModelTest [age=" + age + ", birth=" + birth + ", student=" + student + "]";
	}
	
	
}
