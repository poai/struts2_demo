package cn.com.zjf.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class TestConnectionAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private List<Student> students=null;
	@Override
	public String execute() throws Exception {
		System.out.println(students);
		return SUCCESS;
	}
	public List<Student> getStudents() {
		return students;
	}

	public void setStudents(List<Student> students) {
		this.students = students;
	}
}
