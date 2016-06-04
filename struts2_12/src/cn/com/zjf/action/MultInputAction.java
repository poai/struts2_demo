package cn.com.zjf.action;


import java.io.File;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class MultInputAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	
	/*多文件上传操作*/
	private List<File> image;
	private List<String> imageContentType;
	private List<String> imageFileName;
	public List<File> getImage() {
		return image;
	}

	public void setImage(List<File> image) {
		this.image = image;
	}

	public List<String> getImageContentType() {
		return imageContentType;
	}

	public void setImageContentType(List<String> imageContentType) {
		this.imageContentType = imageContentType;
	}

	public List<String> getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(List<String> imageFileName) {
		this.imageFileName = imageFileName;
	}

	private String dist;
	
	public String execute(){
		System.out.println(this);
		return "success";
	}

	public String getDist() {
		return dist;
	}

	public void setDist(String dist) {
		this.dist = dist;
	}

	@Override
	public String toString() {
		return "MultInputAction [image=" + image + ", imageContentType=" + imageContentType + ", imageFileName="
				+ imageFileName + ", dist=" + dist + "]";
	}
	
}
