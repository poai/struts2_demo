package cn.com.yuting.manger.bean;

public class Admin {
	private Integer id;
	private String code;
	private String pass;
	private String name;
	@Override
	public String toString() {
		return "Admin [id=" + id + ", code=" + code + ", pass=" + pass + "]";
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
