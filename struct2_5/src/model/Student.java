package model;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;

public class Student implements RequestAware,SessionAware{
	private Map<String,Object> sessionMap;
	private Map<String,Object> requestMap;
	private String studentCode;
	private String studentName;
	private String studentAge;
	public String getStudentCode() {
		return studentCode;
	}
	public void setStudentCode(String studentCode) {
		this.studentCode = studentCode;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getStudentAge() {
		return studentAge;
	}
	public void setStudentAge(String studentAge) {
		this.studentAge = studentAge;
	}
	public Student() {
		// TODO Auto-generated constructor stub
		System.out.println("new");
	}
	public Student(String studentCode, String studentName, String studentAge) {
		super();
		this.studentCode = studentCode;
		this.studentName = studentName;
		this.studentAge = studentAge;
	}
	
	@Override
	public String toString() {
		return "Student [studentCode=" + studentCode + ", studentName=" + studentName + ", studentAge=" + studentAge
				+ "]";
	}
	public String save(){
		System.out.println(this);
		/*1.获取值栈*/
		ValueStack valueStack=ActionContext.getContext().getValueStack();
		
		Test test=new Test();
		test.setStudentCode("100");
		test.setStudentName("test");
		valueStack.push(test);/*作为栈顶元素*/
		requestMap.put("student", this);
		sessionMap.put("test", test);
		return "details";
	}
	public String test(){
		
		return "test";
		
	}
	@Override
	public void setRequest(Map<String, Object> arg0) {
		this.requestMap=arg0;
		
	}
	@Override
	public void setSession(Map<String, Object> arg0) {
		this.sessionMap=arg0;
	}
}
