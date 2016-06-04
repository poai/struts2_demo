package cn.com.zjf.action;


import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import cn.com.zjf.db.StudentDB;
import cn.com.zjf.model.Student;

public class StudentAction extends ActionSupport implements RequestAware,ModelDriven<Student>,Preparable{

	private Student student;
	private Long id;
	private static final long serialVersionUID = 1L;
	/*1.ѧ�����*/
	public String add() {
		student.setId(System.currentTimeMillis());
		StudentDB.students.put(student.getId(), student);
		return "add_student_success";
	}
	/*2.ѧ����ѯ*/
	public String query(){
		requestMap.put("students", StudentDB.students);
		return "success";
	}
	/*3.ѧ��ɾ��*/
	public String delete(){
		StudentDB.students.remove(id);
		return "delete_student_success";
	}
	
	/*4.ѧ���༭*/
	public String editor(){
		return "success";
	}
	/*5.ѧ������*/
	public String save(){
		StudentDB.students.put(id, student);
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
	@Override
	public Student getModel() {
		if(student==null){
			student=new Student();
		}
		return student;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	@Override
	public void prepare() throws Exception {
		System.out.println("prepare,id:"+id+",student:"+student);
	}
	/*��Editor ����֮ǰ���ø÷���ִ���ض��ĳ�ʼ������*/
	public void prepareEditor(){
		student=StudentDB.students.get(id);
	}

}
