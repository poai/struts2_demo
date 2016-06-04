package cn.com.zjf.action;

import com.opensymphony.xwork2.validator.ValidationException;
import com.opensymphony.xwork2.validator.validators.FieldValidatorSupport;

public class OtherValidater extends FieldValidatorSupport{

	@Override
	public void validate(Object object) throws ValidationException {
		String name=this.getFieldName();
		String value=(String) this.getFieldValue(name, object);
		if(value.contains("zjf")){
			this.addFieldError(name, object);
		}
	}

}
