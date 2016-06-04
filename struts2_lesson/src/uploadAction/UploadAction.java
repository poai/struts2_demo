package uploadAction;

import java.io.File;

import com.opensymphony.xwork2.ActionSupport;

public class UploadAction extends ActionSupport {
	
	/**
	 * 
	 */
	private File image;
	private String name;
	private String imageFileName;
	private String imageContentType;
	private static final long serialVersionUID = 1L;

	@Override
	public String execute() throws Exception {
		
		System.out.println(name);
		
		
		System.out.println(image.length());
		System.out.println(imageFileName);
		System.out.println(imageContentType);
		return SUCCESS;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public File getImage() {
		return image;
	}

	public void setImage(File image) {
		this.image = image;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public String getImageContentType() {
		return imageContentType;
	}

	public void setImageContentType(String imageContentType) {
		this.imageContentType = imageContentType;
	}
	
	
}
