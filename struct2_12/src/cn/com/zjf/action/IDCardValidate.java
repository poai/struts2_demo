package cn.com.zjf.action;

import com.opensymphony.xwork2.validator.ValidationException;
import com.opensymphony.xwork2.validator.validators.FieldValidatorSupport;

public class IDCardValidate extends FieldValidatorSupport{
	@Override
	public void validate(Object object) throws ValidationException {
			String fieldName = getFieldName();
	        Object value = this.getFieldValue(fieldName, object);
	        IDCard idCard=new IDCard();
	        boolean isCard=idCard.Verify((String)value);
	        if(!isCard){
	        	addFieldError(fieldName, object);
	        }
	}
}
