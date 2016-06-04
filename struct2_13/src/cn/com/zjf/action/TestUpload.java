package cn.com.zjf.action;

import java.io.File;
import java.util.List;



import com.opensymphony.xwork2.ActionSupport;

public class TestUpload extends ActionSupport{
	/**
	 * 文件上传
	 */
	private List<File> file;
	private List<String> fileContentType;
	private List<String> fileFileName;
	private List<String> fileDesc;
	
	private static final long serialVersionUID = 1L;

	@Override
	public String execute() throws Exception {
		
		System.out.println(file);
		System.out.println(fileContentType);
		System.out.println(fileFileName);
		System.out.println(fileDesc);
		//ServletContext servletContent=ServletActionContext.getServletContext();
		//String dir=servletContent.getRealPath("/"+fileFileName);
		
		/*File file_=new File(dir);
		if(!file.exists()){
			file.createNewFile();
		}
		
		FileInputStream in=new FileInputStream(file);
		FileOutputStream out=new FileOutputStream(file_);
		byte buff[]=new byte[1024];
		int len=0;
		while((len=in.read(buff))!=-1){
			out.write(buff, 0, len);
		}
		out.flush();
		out.close();
		in.close();*/
		return INPUT;
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

	public List<String> getFileDesc() {
		return fileDesc;
	}

	public void setFileDesc(List<String> fileDesc) {
		this.fileDesc = fileDesc;
	}
	
}
