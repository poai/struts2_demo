package cn.com.zjf.model;

import java.io.Serializable;
import java.util.List;

/**/
public class PageModel<T> implements Serializable{
	private static final long serialVersionUID = 1L;
	private int page;
	private int total;
	private List<T> data;
	private int size;
	private String sql;
	
	public PageModel() {
		
	}
	
	public PageModel(int page, int size, String sql) {
		super();
		this.page = page;
		this.size = size;
		this.sql = sql;
	}

	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public List<T> getData() {
		return data;
	}
	public void setData(List<T> data) {
		this.data = data;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public String getSql() {
		return sql;
	}
	public void setSql(String sql) {
		this.sql = sql;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "PageModel [page=" + page + ", total=" + total + ", data=" + data + ", size=" + size + ", sql=" + sql
				+ "]";
	}
	
}
