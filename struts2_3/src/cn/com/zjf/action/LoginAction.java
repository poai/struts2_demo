package cn.com.zjf.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 1.Struts采用了低侵入式设计,普通的Java类即可以作为Struts的Action
 * 2.Struts中表单数据的获取可以通过Action的属性来映射
 * 		.在Action中定义和表单中name属性值所对应的属性
 * 		.为Action的属性定义对应的get&set方法
 * 
 * 
 * 3.Struts中Action的属性使用依赖注入完成
 * 		.参数的映射由 ParametersInterceptor 拦截器完成
 * 		.Action属性的赋值依据的是有没有对应的set方法,  : userCode  setUserCode()
 * 4.类型转换的问题
 * 		.Struts 会进行自动类型转换
 * 		.Struts 类型转换错误不影响页面的跳转，但是会报错
 * 		.让Action 继承ActionSupport 进而使用ActionSupport中的一些默认处理操作
 * 		.当继承了ActionSupport 之后如果发生类型转换异常，并不会报错，而是返回一个name="input"的一个逻辑视图
 * 
 * 5.Struts 默认支持的数据转换类型
 * 		.String
 *  	.boolean / Boolean
 *    	.char / Character
 *   	.int / Integer, float / Float, long / Long, double / Double
 *  	.dates 
 *  	.arrays 		
 *   	.collections		
 * */


public class LoginAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String Code;
	private String userSex;
	private String userPass;
	private Integer userAge;
	
	//private String[] userLikes;
	private List<String> userLikes;
	
	public String getUserCode() {
		return Code;
	}
	public void setUserCode(String userCode) {
		this.Code = userCode;
	}
	public String getUserSex() {
		return userSex;
	}
	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	
	public String execute(){
		System.out.println(Code+"_"+userSex+"_"+userPass+"_"+userAge +"_"+userLikes);
		
		return "success";
	}
	public Integer getUserAge() {
		return userAge;
	}
	public void setUserAge(Integer userAge) {
		this.userAge = userAge;
	}
	public List<String> getUserLikes() {
		return userLikes;
	}
	public void setUserLikes(List<String> userLikes) {
		this.userLikes = userLikes;
	}
	
}
