package cn.com.zjf.service;

import java.util.List;
import java.util.Map;

import cn.com.zjf.util.DbUtil;
public class LoginService {
	private String sql;
	private DbUtil db;
	private List<Map<String,Object>> data;
	
	public boolean login(String userCode,String userPass){
		sql="select id from user where userCode=? and userPass= ?";
		db=new DbUtil();
		data=db.query(sql,new String[]{userCode,userPass});
		if(data.size()==1){
			return true;
		}else{
			return false;
		}
	}
}
