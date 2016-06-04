package cn.com.zjf.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.com.zjf.model.ModelTest;

public class ConversionAction extends ActionSupport implements ModelDriven<ModelTest>{
	private static final long serialVersionUID = 1L;
	private ModelTest modelTest;
	private Student student;
	@Override
	public ModelTest getModel() {
		modelTest=new ModelTest();
		return modelTest;
	}
	public ModelTest getModelTest() {
		return modelTest;
	}
	public void setModelTest(ModelTest modelTest) {
		this.modelTest = modelTest;
	}
	public ConversionAction() {
	}
	public String execute(){
		System.out.println(this);
		return SUCCESS;
	}
	@Override
	public String toString() {
		return "ConversionAction [modelTest=" + modelTest + "]";
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	
}
