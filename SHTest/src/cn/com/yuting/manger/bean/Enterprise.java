package cn.com.yuting.manger.bean;

public class Enterprise {
	private Integer id;
	private String name;
	private String address;
	private Integer amount;
	private String email;
	private String introduce;
	@Override
	public String toString() {
		return "Enterprise [id=" + id + ", name=" + name + ", address=" + address + ", amount=" + amount + ", email="
				+ email + ", introduce=" + introduce + "]";
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
}
