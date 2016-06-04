package cn.com.zjf.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import cn.com.zjf.model.PageModel;
import cn.com.zjf.model.Student;
import cn.com.zjf.util.DbUtil;

public class StudentPageService {
	private static Integer total=0;
	private DbUtil db;
	private List<Map<String,Object>> data;
	private static int size=5;
	private static String sql="select * from student";
	
	/*static{
		Properties pro=new Properties();
		try {
			File file=new File("student_page.properties");
			System.out.println(file.getAbsolutePath());
			pro.load(new FileInputStream(file));
			size=Integer.parseInt(pro.getProperty("page.size", size+""));
			sql=pro.getProperty("page.sql", sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}*/
	
	
	public StudentPageService() {
		
	}
	
	
	public PageModel<Student> getPageModel(int page){
		db=new DbUtil();
		PageModel<Student>  pageModel=new PageModel<>(page,size,sql);
		if(total==0){
			updateTotal(pageModel);
		}
		pageModel.setTotal(total);
		
		data=db.query("select * from (("+pageModel.getSql()+") as temp) limit ?,?;", new Object[]{(pageModel.getPage()-1)*pageModel.getSize(),pageModel.getSize()});
		pageModel.setData(MapToStuent(data));
		return pageModel;
	}
	public List<Student> MapToStuent(List<Map<String,Object>> data){
		List<Student> sudents=new ArrayList<>();  
		Student student=null;
		for(Map<String,Object> map: data){
			student=new Student(Integer.parseInt(map.getOrDefault("code", "").toString()), map.getOrDefault("name", "").toString(), map.getOrDefault("sex", "").toString(), "", "", map.getOrDefault("school", "").toString(), "");
			sudents.add(student);
		}
		return sudents;
	}
	public void updateTotal(PageModel<Student> pageModel){
		synchronized (total) {
			db=new DbUtil();
			int totalCount=db.query(pageModel.getSql()).size();
			if(totalCount%pageModel.getSize()==0){
				total=totalCount/pageModel.getSize();
			}else{
				total=totalCount/pageModel.getSize()+1;
			}
		}
	}
}
