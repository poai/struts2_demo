package cn.com.zjf.cxsw;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class IndexAction extends ActionSupport{
	 private List<String> myList1;
	 private List<String> myList2;
	 private List<String> myList3;
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String execute() throws Exception {
		
	    myList1 = new ArrayList<String>();
	     myList1.add("1-1");
	     myList1.add("2-2");
	     myList1.add("3-3");
	 
	     myList2 = new ArrayList<String>();
	     myList2.add("a");
	     myList2.add("abc");
	     myList2.add("ab");
	 
	     myList3 = new ArrayList<String>();
	     myList3.add("A");
	     myList3.add("B");
	     myList3.add("C");
		
		return SUCCESS;
	}

	public List<String> getMyList1() {
		return myList1;
	}

	public void setMyList1(List<String> myList1) {
		this.myList1 = myList1;
	}

	public List<String> getMyList2() {
		return myList2;
	}

	public void setMyList2(List<String> myList2) {
		this.myList2 = myList2;
	}

	public List<String> getMyList3() {
		return myList3;
	}

	public void setMyList3(List<String> myList3) {
		this.myList3 = myList3;
	}
	
}
