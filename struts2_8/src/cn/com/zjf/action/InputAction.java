package cn.com.zjf.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class InputAction extends ActionSupport {
	/**
	 * 
	 */
	private List<Student> students;
	private static final long serialVersionUID = 1L;
	
	public String execute(){
		System.out.println(students);
		return "success";
	}


	public List<Student> getStudents() {
		return students;
	}

	public void setStudents(List<Student> students) {
		this.students = students;
	}


}
