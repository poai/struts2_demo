package cn.com.yuting.manger.action;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Order;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import cn.com.yuting.manger.bean.News;
import cn.com.yuting.util.HibernateUtil;

public class NewsAction extends ActionSupport implements ModelDriven<News>, RequestAware,Preparable {
	
	
	private static Integer total = 0;
	private Integer id;
	private Integer page;
	private Integer pageSize;
	private News news;
	
	private static final long serialVersionUID = 1L;
	
	/**
	 * 保存
	 * 
	 * */
	public String save(){
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.update(news);
		session.getTransaction().commit();
		return "save_News";
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
		news=(News) session.get(News.class, id);
		session.getTransaction().commit();
	}
	
	/**
	 * 删除
	 * */
	public  String delete(){
		
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.delete(news);
		session.getTransaction().commit();
		init();
		return "delete_News";
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
		Criteria citeria = session.createCriteria(News.class);
		citeria.addOrder(Order.desc("sdate"));
		citeria.setMaxResults(pageSize);
		citeria.setFirstResult((page - 1) * pageSize);
		requestMap.put("news", citeria.list());
		requestMap.put("total", total);
		requestMap.put("page", page);
		session.getTransaction().commit();
		return SUCCESS;
	}

	/**
	 * 添加
	 */
	public String add() {
		System.out.println(news);
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(news);
		session.getTransaction().commit();
		init();
		return "add_News";
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public News getNews() {
		return news;
	}

	public void setNews(News news) {
		this.news = news;
	}

	@Override
	public News getModel() {

		if (news == null) {
			news = new News();
		}

		return news;
	}

	private void init() {
		synchronized (total) {
			Session session = HibernateUtil.getSessionFactory().getCurrentSession();
			session.beginTransaction();
			Query query = session.createQuery("from News as news");
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
		
	}

}
