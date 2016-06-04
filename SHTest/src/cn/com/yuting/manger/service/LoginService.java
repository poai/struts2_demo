package cn.com.yuting.manger.service;

import org.hibernate.Query;
import org.hibernate.Session;

import cn.com.yuting.manger.bean.Admin;
import cn.com.yuting.util.HibernateUtil;

public class LoginService {
	
	public Admin login(String code,String pass){
		Session session=HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		/*Admin admin=new Admin();
		admin.setCode("admin");
		admin.setName("张玉停");
		admin.setPass("root");
		session.save(admin);*/
		
		String hql="from Admin where code=? and pass=?";
		Query query=session.createQuery(hql);
		query.setString(0, code);
		query.setString(1, pass);
		
		Admin admin=(Admin) query.uniqueResult();
		System.out.println(admin);
		return admin;
	}
}
