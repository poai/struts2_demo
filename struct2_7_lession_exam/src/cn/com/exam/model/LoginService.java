package cn.com.exam.model;


import java.util.List;
import java.util.Map;

import cn.com.exam.util.DbUtil;

public class LoginService {
	private DbUtil db;
	private List<Map<String,Object>> data;
	private String sql;
	public String login(String code,String pass){
		String result=null;
		try{
			db=new DbUtil();
			sql="select code from user where code=? and pass=?";
			data=db.query(sql, new String[]{code,pass});
			if(data.size()>0){
				result=(String) data.get(0).getOrDefault("name", "");
			}
		}catch( Exception e){
		}
		return result;
	}
}
