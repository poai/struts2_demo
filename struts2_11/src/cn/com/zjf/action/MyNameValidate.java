package cn.com.zjf.action;

import com.opensymphony.xwork2.validator.ValidationException;
import com.opensymphony.xwork2.validator.validators.FieldValidatorSupport;

public class MyNameValidate  extends FieldValidatorSupport{
	private String myName;

	@Override
	public void validate(Object object) throws ValidationException {
		
		String name=object.toString();
		System.out.println(this.getFieldName());
		if(!name.contains(myName)){
			this.addFieldError(this.getFieldName(), "请将我的名字写进去");
		}
	}

	public String getMyName() {
		return myName;
	}

	public void setMyName(String myName) {
		this.myName = myName;
	}
	
}
