package cn.com.yuting.front.action;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import com.opensymphony.xwork2.ActionSupport;

import cn.com.yuting.manger.bean.Enterprise;
import cn.com.yuting.manger.bean.Job;
import cn.com.yuting.manger.bean.News;
import cn.com.yuting.util.HibernateUtil;

public class IndexAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private String[] types = new String[] { "最新动态", "公务员", "创业园地", "通知", "就业指导" };
	private List<Job> jobs;
	private List<News> zxdt;
	private List<News> gwy;
	private List<News> cyyd;
	private List<News> tz;
	private List<News> jyzd;
	private List<News> zjdy;
	private List<News> jyzc;
	private List<News> xyzt;
	private List<News> sthd;
	
	private List<Enterprise> enterprises;

	@SuppressWarnings("unchecked")
	@Override
	public String execute() throws Exception {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Criteria criteria = session.createCriteria(Job.class);
		criteria.addOrder(Order.desc("sdate"));
		criteria.setMaxResults(5);
		setJobs(criteria.list());
		criteria = session.createCriteria(News.class);
		zxdt = get(criteria, "最新动态", 12);
		criteria = session.createCriteria(News.class);
		gwy = get(criteria, "公务员", 7);
		criteria = session.createCriteria(News.class);
		cyyd = get(criteria, "创业园地", 6);
		criteria = session.createCriteria(News.class);
		tz = get(criteria, "通知", 1);
		criteria = session.createCriteria(News.class);
		jyzd = get(criteria, "就业指导", 9);
		criteria = session.createCriteria(News.class);
		setZjdy(get(criteria, "专家答疑", 9));

		criteria = session.createCriteria(News.class);
		setJyzc(get(criteria, "就业政策", 9));

		criteria = session.createCriteria(News.class);
		setXyzt(get(criteria, "院校直通", 9));

		criteria = session.createCriteria(News.class);
		setSthd(get(criteria, "社团活动", 4));

		
		/*查询企业信息*/
		
		criteria = session.createCriteria(Enterprise.class);
		criteria.setMaxResults(9);
		enterprises=criteria.list();
		session.getTransaction().commit();
		return SUCCESS;
	}

	public List<Job> getJobs() {
		return jobs;
	}

	public void setJobs(List<Job> jobs) {
		this.jobs = jobs;
	}

	public List<News> getZxdt() {
		return zxdt;
	}

	public void setZxdt(List<News> zxdt) {
		this.zxdt = zxdt;
	}

	@SuppressWarnings("unchecked")
	public List<News> get(Criteria criteria, String pattren, int result) {
		criteria.addOrder(Order.desc("sdate"));
		criteria.add(Restrictions.eqOrIsNull("label", pattren));
		criteria.setMaxResults(result);
		return criteria.list();
	}

	public List<News> getGwy() {
		return gwy;
	}

	public void setGwy(List<News> gwy) {
		this.gwy = gwy;
	}

	public List<News> getCyyd() {
		return cyyd;
	}

	public void setCyyd(List<News> cyyd) {
		this.cyyd = cyyd;
	}

	public List<News> getTz() {
		return tz;
	}

	public void setTz(List<News> tz) {
		this.tz = tz;
	}

	public List<News> getJyzd() {
		return jyzd;
	}

	public void setJyzd(List<News> jyzd) {
		this.jyzd = jyzd;
	}

	public String[] getTypes() {
		return types;
	}

	public void setTypes(String[] types) {
		this.types = types;
	}

	public List<News> getZjdy() {
		return zjdy;
	}

	public void setZjdy(List<News> zjdy) {
		this.zjdy = zjdy;
	}

	public List<News> getJyzc() {
		return jyzc;
	}

	public void setJyzc(List<News> jyzc) {
		this.jyzc = jyzc;
	}

	public List<News> getXyzt() {
		return xyzt;
	}

	public void setXyzt(List<News> xyzt) {
		this.xyzt = xyzt;
	}

	public List<News> getSthd() {
		return sthd;
	}

	public void setSthd(List<News> sthd) {
		this.sthd = sthd;
	}

	public List<Enterprise> getEnterprises() {
		return enterprises;
	}

	public void setEnterprises(List<Enterprise> enterprises) {
		this.enterprises = enterprises;
	}
}
