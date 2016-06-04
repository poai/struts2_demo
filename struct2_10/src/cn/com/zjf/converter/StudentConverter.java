package cn.com.zjf.converter;

import java.util.Map;

import org.apache.struts2.util.StrutsTypeConverter;

import cn.com.zjf.action.Student;

public class StudentConverter extends StrutsTypeConverter{

	
	public StudentConverter() {
		// TODO Auto-generated constructor stub
		System.out.println("StudentConverter");
	}
	
	@Override
	public Object convertFromString(Map context, String[] values, Class toClass) {
		
		if(toClass==Student.class){
			try{
				if(values!=null&&values.length>=1){
					String value=values[0];
					
					String []strs=value.split(",");
					Student student=new Student();
					student.setCode(Integer.parseInt(strs[0]));
					student.setName(strs[1]);
					return student;
				}
			}catch(Exception e){
				
				return null;
			}
		}
		return null;
	}

	@Override
	public String convertToString(Map context, Object o) {
		// TODO Auto-generated method stub
		return null;
	}

}
