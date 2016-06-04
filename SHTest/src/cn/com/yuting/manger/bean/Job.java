package cn.com.yuting.manger.bean;

import java.util.Date;

public class Job {
	private Integer id;
	private String title;
	private String content;
	private Date sdate;
	public Job() {
	}
	
	
	public Job(Integer id, String title) {
		super();
		this.id = id;
		this.title = title;
	}


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


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}

	public Job(String title, String content) {
		super();
		this.title = title;
		this.content = content;
	}



	@Override
	public String toString() {
		return "Job [id=" + id + ", title=" + title + ", content=" + content + ", sdate=" + sdate + "]";
	}


	public Date getSdate() {
		return sdate;
	}


	public void setSdate(Date sdate) {
		this.sdate = sdate;
	}
	
}
