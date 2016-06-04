package cn.com.zjf.action;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class InputAction extends ActionSupport {
	
	private List<File> file=new ArrayList<>();
	private List<String> fileContentType=new ArrayList<>();
	private List<String>fileFileName=new ArrayList<>();
	private Integer code;
	public String execute() throws Exception {

		System.out.println(this);
		return "successs";
	}


	@Override
	public String toString() {
		return "InputAction [file=" + file + ", fileContentType=" + fileContentType + ", fileFileName=" + fileFileName
				+ ", code=" + code + "]";
	}


	private static final long serialVersionUID = 1L;

	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public List<File> getFile() {
		return file;
	}

	public void setFile(List<File> file) {
		this.file = file;
	}

	public List<String> getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(List<String> fileContentType) {
		this.fileContentType = fileContentType;
	}

	public List<String> getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(List<String> fileFileName) {
		this.fileFileName = fileFileName;
	}
}
