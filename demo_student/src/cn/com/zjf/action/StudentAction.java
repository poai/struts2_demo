package cn.com.zjf.action;


import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.opensymphony.xwork2.ActionSupport;

import cn.com.zjf.db.StudentDB;
import cn.com.zjf.model.Student;

public class StudentAction extends ActionSupport implements RequestAware{
	private Student student;
	private static final long serialVersionUID = 1L;
	
	/*1.添加*/
	public String add(){
		student.setId(StudentDB.students.size()+1);
		StudentDB.students.add(student);
		return "add_student_success";
	}
	/*2.查询*/
	public String query(){
		requestMap.put("students", StudentDB.students);
		return "success";
	}
	/*3.删除*/
	public String delete(){
		StudentDB.students.remove(student);
		return "delete_student_success";
	}
	/*4.编辑*/
	public String editor(){
		student=StudentDB.students.get(StudentDB.students.indexOf(student));
		requestMap.put("student", student);
		return "success";
	}
	
	/*5.保存操作*/
	
	public String save(){
		StudentDB.students.set(student.getId(), student);
		return "save_student_success";
	}
	public Student getStudent() {
		return student;
	}


	public void setStudent(Student student) {
		this.student = student;
	}

	
	private Map<String, Object> requestMap;
	@Override
	public void setRequest(Map<String, Object> requestMap) {
		this.requestMap=requestMap;
	}
}
