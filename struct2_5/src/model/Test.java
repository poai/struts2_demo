package model;

public class Test {
	private String StudentCode;
	private String StudentName;
	public Test() {
		// TODO Auto-generated constructor stub
	}
	public String getStudentCode() {
		return StudentCode;
	}
	public void setStudentCode(String studentCode) {
		StudentCode = studentCode;
	}
	public String getStudentName() {
		return StudentName;
	}
	public void setStudentName(String studentName) {
		StudentName = studentName;
	}
	@Override
	public String toString() {
		return "Test [StudentCode=" + StudentCode + ", StudentName=" + StudentName + "]";
	}
}
