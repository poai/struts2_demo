package cn.com.zjf.action;

import java.io.FileInputStream;
import java.io.InputStream;

import javax.servlet.ServletContext;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class TestDownload extends ActionSupport{
	
	/**
	 * 文件下载
	 */
	private static final long serialVersionUID = 1L;
	
	private String contentType;
	private long contentLength;
	private String contentDisposition ;
	private InputStream inputStream;
	
	
	@Override
	public String execute() throws Exception {
		contentType="text/html";
		contentDisposition="attachment;filename=document.ppt";
		ServletContext servletContext=ServletActionContext.getServletContext();
		String fileName=servletContext.getRealPath("/1.ppt");
		inputStream=new FileInputStream(fileName);
		contentLength=inputStream.available();
		return SUCCESS;
	}


	public String getContentType() {
		return contentType;
	}


	public void setContentType(String contentType) {
		this.contentType = contentType;
	}


	public long getContentLength() {
		return contentLength;
	}


	public void setContentLength(long contentLength) {
		this.contentLength = contentLength;
	}


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
	
}
