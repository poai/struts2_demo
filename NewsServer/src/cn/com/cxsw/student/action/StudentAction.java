package cn.com.cxsw.student.action;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import cn.com.cxsw.common.model.Student;
import cn.com.cxsw.student.service.StudentServiceImp;

public class StudentAction extends ActionSupport implements RequestAware, ModelDriven<Student>, Preparable {
	private StudentServiceImp service = new StudentServiceImp();
	private String param;
	private Student student;
	private Integer code;
	private static final long serialVersionUID = 1L;

	
	/*��Ӳ���*/
	public String add() {
		service.add(student);
		return "add_success";
	}
	/*�б�*/
	public String list() {
		requestMap.put("students", service.list());
		return "list_success";
	}
	/*ɾ������*/
	public String delete() {
		service.delete(code);
		return "delete_success";
	}
	/*�༭����*/
	public String editor() {
		return "editor_success";
	}
	/*�������*/
	public String save() {
		service.update(student);
		return "save_success";
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
		this.requestMap = requestMap;
	}

	public String getParam() {
		return param;
	}

	public void setParam(String param) {
		this.param = param;
	}

	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	@Override
	public Student getModel() {

		if (student == null) {
			student = new Student();
		}
		return student;
	}

	@Override
	public void prepare() throws Exception {

	}

	public void prepareEditor() throws Exception {
		if (code != null) {
			student = service.get(code);
		}
	}

	public void prepareSave() throws Exception {
		if (code != null) {
			student = service.get(code);
		}
	}

}
