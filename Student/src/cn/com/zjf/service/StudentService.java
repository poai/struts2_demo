package cn.com.zjf.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import cn.com.zjf.model.Student;
import cn.com.zjf.util.DbUtil;

public class StudentService {
	private DbUtil db;
	private String sql;
	private List<Map<String, Object>> data;

	public boolean addStudent(Student student) {
		db = new DbUtil();
		sql = "INSERT INTO STUDENT(CODE,NAME,SEX,LIKES,SCHOOL,INTRODUCE,IMAGE) VALUES(?,?,?,?,?,?,?)";
		int count = db.update(sql, new String[] { student.getCode() + "", student.getName(), student.getSex(),
				student.getLike(), student.getSchool(), student.getIntroduce(), student.getImage() });

		if (count == 1) {
			return true;
		}
		return false;
	}

	public List<Student> queryAllStdent() {
		db = new DbUtil();
		sql = "SELECT CODE,NAME,SEX,SCHOOL FROM STUDENT";
		data = db.query(sql);
		return MapToStuent(data);
	}

	public List<Student> MapToStuent(List<Map<String, Object>> data) {
		List<Student> sudents = new ArrayList<>();
		Student student = null;
		for (Map<String, Object> map : data) {
			student = new Student(Integer.parseInt(map.getOrDefault("code", "").toString()),
					map.getOrDefault("name", "").toString(), map.getOrDefault("sex", "").toString(), map.getOrDefault("likes", "").toString(), map.getOrDefault("introduce", "").toString(),
					map.getOrDefault("school", "").toString(), map.getOrDefault("image", "").toString());
			sudents.add(student);
		}
		return sudents;
	}
	
	
	public Student queryOneStudent(int code){
		db = new DbUtil();
		sql = "SELECT CODE,NAME,SEX,SCHOOL,INTRODUCE,IMAGE FROM STUDENT";
		data = db.query(sql);
		return MapToStuent(data).get(0);
	}

	public boolean deleteOne(int code) {
		db = new DbUtil();
		sql = "DELETE FROM STUDENT WHERE CODE=?";
		int result = db.update(sql, new Object[] { code });
		if (result == 1) {
			return true;

		} else {
			return false;
		}
	}
}
