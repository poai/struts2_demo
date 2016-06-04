package cn.com.zjf.action;

import java.io.FileInputStream;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

public class UploadAction extends ActionSupport implements ServletRequestAware{

	
	/*内容的类型*/
	//private String contentType;
	/*文件名*/
	private String contentDisposition;
	/*文件的数据*/
	private InputStream inputStream;
	/*文件的长度*/
	private Integer contentLength ;
	private static final long serialVersionUID = 1L;
	@Override
	public String execute() throws Exception {
		
		//contentType="application/vnd.openxmlformats-officedocument.presentationml.presentation";
		contentDisposition="attachment;filename="+System.currentTimeMillis()+".pptx";
		String realPath=request.getServletContext().getRealPath("/ppt.pptx");
		
		inputStream=new FileInputStream(realPath);
		contentLength=inputStream.available();
		return SUCCESS;
	}


	/*public String getContentType() {
		return contentType;
	}


	public void setContentType(String contentType) {
		this.contentType = contentType;
	}*/


	public String getContentDisposition() {
		return contentDisposition;
	}


	public void setContentDisposition(String contentDisposition) {
		this.contentDisposition = contentDisposition;
	}


	public InputStream getInputStream() {
		return inputStream;
	}


	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}


	private HttpServletRequest request;
	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request=request;
	}


	public Integer getContentLength() {
		return contentLength;
	}


	public void setContentLength(Integer contentLength) {
		this.contentLength = contentLength;
	}
		
}
