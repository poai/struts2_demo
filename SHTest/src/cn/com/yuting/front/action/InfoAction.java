package cn.com.yuting.front.action;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.hibernate.Session;

import com.opensymphony.xwork2.ActionSupport;

import cn.com.yuting.manger.bean.Job;
import cn.com.yuting.manger.bean.News;
import cn.com.yuting.util.HibernateUtil;

public class InfoAction extends ActionSupport implements RequestAware{
	private String type;
	private Integer id;
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public String job(){
		Session session=HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		requestMap.put("obj", session.get(Job.class, id));
		session.getTransaction().commit();
		return "success";
	}
	public String news(){
		Session session=HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		requestMap.put("obj", session.get(News.class, id));
		session.getTransaction().commit();
		return "success";
	}

	
	private Map<String, Object> requestMap;
	@Override
	public void setRequest(Map<String, Object> requestMap) {
		this.requestMap=requestMap;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}
	
	
}
