package cn.com.zjf.action;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import cn.com.zjf.db.StudentDB;
import cn.com.zjf.model.Student;

public class StudentAction extends ActionSupport implements ModelDriven<Student>, RequestAware,Preparable {

	private Student student;
	private Long id;
	private static final long serialVersionUID = 1L;
	/*
	 * 1.添加操作
	 **/
	public String add() {
		student.setId(System.currentTimeMillis());
		StudentDB.students.put(student.getId(), student);
		return "add_student_success";
	}
	/*
	 * 2.查询操作
	 **/
	public String query(){
		requestMap.put("students", StudentDB.students);
		return "success";
	}
	/*
	 * 3.删除操作
	 **/
	public String delete(){
		StudentDB.students.remove(id);
		return "delete_student_success";
	}
	/*
	 * 4.编辑查询操作
	 **/
	public String editor(){
		return "success";
	}
	/*
	 * 5.保存操作
	 **/
	public String save(){
		StudentDB.students.put(id, student);
		return "success";
	}
	private Map<String, Object> requestMap;
	@Override
	public void setRequest(Map<String, Object> requestMap) {
		this.setRequestMap(requestMap);
	}
	public Map<String, Object> getRequestMap() {
		return requestMap;
	}
	public void setRequestMap(Map<String, Object> requestMap) {
		this.requestMap = requestMap;
	}
	@Override
	public Student getModel() {
		if(student==null){
			student=new Student();
		}
		return student;
	}
	@Override
	public void prepare() throws Exception {
		
	}
	/*editor 方法的前处理*/
	public void prepareEditor(){
		System.out.println(id);
		student=StudentDB.students.get(id);
	}
	
	
	
	
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
}
