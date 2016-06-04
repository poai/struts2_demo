package cn.com.zjf.action;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import cn.com.zjf.model.Employee;
import cn.com.zjf.service.Dao;

public class EmployeeAction implements RequestAware, ModelDriven<Employee> ,Preparable {
	private Dao dao = new Dao();

	private Employee employee;
	private Integer employeeId;

	public String list() {
		requestMap.put("emps", dao.getEmployee());
		return "list";
	}

	private Map<String, Object> requestMap;

	@Override
	public void setRequest(Map<String, Object> requestMap) {
		this.requestMap = requestMap;
	}

	public String delete() {
		dao.delete(employeeId);
		/*
		 * 返回结果的类型应该为redirectAction 或者chain 使用chain
		 * 则到达目标地址栏后，目标地址栏后显示的任然是删除的表单，刷新会删除
		 */
		return "success";
	}

	public String save() {
		System.out.println(employee);
		dao.save(employee);
		return "success";
	}

	public String edit() {
		/* 1.获取Employee ID */
		Integer employeeId = employee.getEmployeeId();
		/* 2.获取Employee对象 */
		Employee emp = dao.get(employeeId);
		employee.setEmail(emp.getEmail());
		employee.setFirstName(emp.getFirstName());
		employee.setLastName(emp.getLastName());
		return "edit";
	}
	@Override
	public void prepare() throws Exception {
		System.out.println("prepare");
	}
	@Override
	public Employee getModel() {
		
		System.out.println("getModel");
		/* 实例化employee 对象 
		// employee=new Employee();
		 将Employee对象放在ValueStack 的栈顶元素,由Paramater 拦截器实例化栈顶元素的值 

		if (employeeId == null) {
			employee = new Employee();
		} else {
			employee = dao.get(employeeId);
		}*/
		return employee;
	}

	
	
	public String update() {
		dao.update(employee);
		return "success";
	}

	public void prepareUpdate(){
		employee=dao.get(employeeId);
	}
	
	public void prepareEdit(){
		employee=dao.get(employeeId);
	}
	public void prepareSave(){
		employee=new Employee();
	}
	
	
	public Integer getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(Integer employeeId) {
		this.employeeId = employeeId;
	}

	

}
