package cn.com.zjf.action;

import java.io.File;

import com.opensymphony.xwork2.ActionSupport;

public class InputAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	
	/*文件对象*/
	private File image;
	/*文件内容的类型*/
	private String imageContentType;
	/*文件名字*/
	private String imageFileName;
	
	
	private String dist;
	
	public String execute(){
		System.out.println(image.length());
		System.out.println(this);
		return "success";
	}

	public String getDist() {
		return dist;
	}

	public void setDist(String dist) {
		this.dist = dist;
	}

	public File getImage() {
		return image;
	}

	public void setImage(File image) {
		this.image = image;
	}

	public String getImageContentType() {
		return imageContentType;
	}

	public void setImageContentType(String imageContentType) {
		this.imageContentType = imageContentType;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	@Override
	public String toString() {
		return "InputAction [image=" + image + ", imageContentType=" + imageContentType + ", imageFileName="
				+ imageFileName + ", dist=" + dist + "]";
	}
	
}
