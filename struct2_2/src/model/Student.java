package model;

public class Student {
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
		
		return "details";
	}
	public String test(){
		
		return "test";
		
	}
}