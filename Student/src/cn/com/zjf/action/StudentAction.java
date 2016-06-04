package cn.com.zjf.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.opensymphony.xwork2.ActionSupport;

import cn.com.zjf.model.Student;
import cn.com.zjf.service.StudentService;
import cn.com.zjf.util.FileHelper;

public class StudentAction extends ActionSupport implements RequestAware{
	/* Student对象字段的校验 */
	
	private Integer code;
	private Student student;
	private File file;
	private String contentType;
	private String fileName;
	private static final long serialVersionUID = 1L;
	private Map<String, Object> requestMap;
	public void setImage(File file) {
		this.file = file;
	}
	private StudentService service=new StudentService();
	
	
	
	
	public String editor(){
		requestMap.put("student", service.queryOneStudent(code));
		
		return SUCCESS;
	}
	
	
	public String add() {

		if (file != null) {
			fileName = FileHelper.generateFileName(fileName);
			student.setImage(fileName);
			FileInputStream in = null;
			FileOutputStream out = null;
			try {
				in = new FileInputStream(file);
				File temp = new File("D:/apache-tomcat-8.0.26/webapps/image", fileName);
				if (!temp.exists()) {
					temp.createNewFile();
				}
				out = new FileOutputStream(temp);
				byte cache[] = new byte[256];
				int len = 0;
				while ((len = in.read(cache)) != -1) {
					out.write(cache, 0, len);
				}
			} catch (Exception e) {
				e.printStackTrace();
				this.addFieldError("image", "图片上传失败");
			} finally {
				if (in != null) {
					try {
						in.close();
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
				if (out != null) {
					try {
						out.close();
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
			}
		}
		
		/*添加学生信息*/
		System.out.println(student);
		service.addStudent(student);
		return "success";
	}
	public String queryAll(){
		requestMap.put("students", service.queryAllStdent());
		return SUCCESS;
	}
	
	public String delete(){
		if(code!=null){
			service.deleteOne(code);
		}
		return SUCCESS;
		
	}
	
	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public void setImageContentType(String contentType) {
		this.contentType = contentType;
	}

	public String getImageContentType() {
		return this.contentType;
	}

	public void setImageFileName(String fileName) {
		this.fileName = fileName;
	}

	@Override
	public void setRequest(Map<String, Object> requestMap) {
		this.requestMap=requestMap;
	}

	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}
}
