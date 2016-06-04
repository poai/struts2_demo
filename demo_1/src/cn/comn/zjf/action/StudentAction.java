package cn.comn.zjf.action;

public class StudentAction {
	private String uri;
	
	public String add(){
		
		System.out.println("add");
		System.out.println(uri);
		return "success";
	}
	
	public String delete(){
		
		System.out.println("delete");
		System.out.println(uri);
		return "success";
	}
	public String editor(){
		
		System.out.println("editor");
		System.out.println(uri);
		return "editorInfo";
	}

	public String getUri() {
		return uri;
	}

	public void setUri(String uri) {
		this.uri = uri;
	}
}
