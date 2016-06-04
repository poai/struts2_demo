package cn.com.yuting.manger.bean;

import java.util.Date;

public class News {
	private String []types=new String[]{"最新动态","公务员","创业园地","通知","就业指导"};
	private Integer id;
	private String title;
	private String label;
	private String content;
	private Date sdate;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getSdate() {
		return sdate;
	}
	public void setSdate(Date sdate) {
		this.sdate = sdate;
	}
	@Override
	public String toString() {
		return "New [id=" + id + ", title=" + title + ", label=" + label + ", content=" + content + ", sdate=" + sdate
				+ "]";
	}
	public String [] getTypes() {
		return types;
	}
	public void setTypes(String [] types) {
		this.types = types;
	}
}
