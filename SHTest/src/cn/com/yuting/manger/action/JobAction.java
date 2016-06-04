package cn.com.yuting.manger.action;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import cn.com.yuting.manger.bean.Job;
import cn.com.yuting.util.HibernateUtil;

public class JobAction extends ActionSupport implements ModelDriven<Job>, RequestAware,Preparable {
	private static Integer total = 0;
	private Integer id;
	private Integer page;
	private Integer pageSize;
	private Job job;
	
	private static final long serialVersionUID = 1L;
	
	/**
	 * 保存
	 * 
	 * */
	public String save(){
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.update(job);
		session.getTransaction().commit();
		return "save_Job";
	}
	
	/**
	 * 编辑
	 */
	public String editor(){
		
		return SUCCESS;
	}
	public void prepareEditor(){
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		job=(Job) session.get(Job.class, id);
		session.getTransaction().commit();
	}
	
	/**
	 * 删除
	 * */
	public  String delete(){
		
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.delete(job);
		session.getTransaction().commit();
		init();
		return "delete_Job";
	}
	/**
	 * 查询
	 * */
	public String query() {

		/* 分页处理 */
		if (page == null) {
			page = 1;
		}
		if (total == 0) {
			init();
		}
		if (page == 0) {
			page = 1;
		}
		if (page > total) {
			page = total;
		}
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Criteria citeria = session.createCriteria(Job.class);
		citeria.setMaxResults(pageSize);
		citeria.setFirstResult((page - 1) * pageSize);
		requestMap.put("jobs", citeria.list());
		requestMap.put("total", total);
		requestMap.put("page", page);
		session.getTransaction().commit();
		return SUCCESS;
	}

	/**
	 * 添加
	 */
	public String add() {
		System.out.println(job);
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(job);
		session.getTransaction().commit();
		init();
		return "add_Job";
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Job getJob() {
		return job;
	}

	public void setJob(Job job) {
		this.job = job;
	}

	@Override
	public Job getModel() {

		if (job == null) {
			job = new Job();
		}

		return job;
	}

	private void init() {
		synchronized (total) {
			Session session = HibernateUtil.getSessionFactory().getCurrentSession();
			session.beginTransaction();
			Query query = session.createQuery("from Job as job");
			Integer size = query.list().size();
			session.getTransaction().commit();
			if (size % pageSize == 0) {
				total = size / pageSize;
			} else {
				total = size / pageSize + 1;
			}
		}
	}

	private Map<String, Object> requestMap;

	@Override
	public void setRequest(Map<String, Object> requestMap) {
		this.requestMap = requestMap;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}


	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		
	}

}
