package cn.comn.zjf.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class IndexAction {
	private List<String> list=new ArrayList<>();
	private Map<String,String> map=new HashMap<>();
	public String execute(){
		list.add("list1");
		list.add("list2");
		list.add("list3");
		map.put("map1", "map1");
		map.put("map2", "map2");
		map.put("map3", "map3");
		return "success";
	}
	public List<String> getList() {
		return list;
	}
	public void setList(List<String> list) {
		this.list = list;
	}
	public Map<String, String> getMap() {
		return map;
	}
	public void setMap(Map<String, String> map) {
		this.map = map;
	}
	
}
