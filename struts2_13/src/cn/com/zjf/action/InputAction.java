package cn.com.zjf.action;


import com.opensymphony.xwork2.ActionSupport;

public class InputAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	
	private Integer id;
	private String name;
	
	public String execute(){
		
		/*try {
			Thread.sleep(3*1000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		//ActionContext.getContext().getActionInvocation().addPreResultListener(arg0);
		System.out.println(this);
		return "success";
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "InputAction [id=" + id + ", name=" + name + "]";
	}
	
}
