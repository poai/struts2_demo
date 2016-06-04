package cn.com.zjf.service;

import java.util.ArrayList;
import java.util.List;

import cn.com.zjf.model.Department;
import cn.com.zjf.model.Role;

public class Dao {
	public List<Department> getDeperements(){
		List<Department> depts=new ArrayList<Department>();
		depts.add(new Department(1001, "AAA"));
		depts.add(new Department(1002, "DDD"));
		depts.add(new Department(1003, "CCC"));
		depts.add(new Department(1004, "DDD"));
		depts.add(new Department(1005, "EEE"));
		return depts;
	}
	public List<Role> getRoles(){
		List<Role> roles=new ArrayList<Role>();
		roles.add(new Role(2001, "XXX"));
		roles.add(new Role(2001, "YYY"));
		roles.add(new Role(2001, "ZZZ"));
		return roles;
	}
}
