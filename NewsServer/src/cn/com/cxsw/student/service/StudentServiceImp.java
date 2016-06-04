package cn.com.cxsw.student.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import cn.com.cxsw.common.dao.BasicDao;
import cn.com.cxsw.common.model.Student;
import cn.com.cxsw.common.util.DbUtil;

public class StudentServiceImp implements BasicDao<Student> {
	private DbUtil db = new DbUtil();
	private String sql = null;
	private List<Map<String, Object>> data;

	@Override
	public void add(Student student) {
		sql = "insert into student(code,name,sex,school) values(?,?,?,?)";

		db.update(sql,
				new String[] { student.getCode() + "", student.getName(), student.getSex(), student.getSchool() });
	}

	@Override
	public List<Student> list() {

		sql = "select * from student";
		data = db.query(sql);
		return listToStudent(data);
	}

	@Override
	public void delete(Integer code) {
		sql = "delete from student where code=?";
		db.update(sql, new String[] { code + "" });
	}

	@Override
	public Student get(Integer code) {

		Student student = null;
		sql = "select * from student where code=?";
		data = db.query(sql, new String[] { code + "" });
		if (data.size() == 1) {
			Map<String, Object> map = data.get(0);
			student = new Student(Integer.parseInt(map.getOrDefault("code", "").toString()),
					map.getOrDefault("name", "").toString(), map.getOrDefault("sex", "").toString(),
					map.getOrDefault("school", "").toString());
		}
		return student;
	}

	@Override
	public void update(Student student) {
		sql = "update student set name=?,sex=?,school=? where code=?";
		db.update(sql,
				new String[] { student.getName(), student.getSex(), student.getSchool(), student.getCode() + "" });

	}

	public List<Student> listToStudent(List<Map<String, Object>> data) {
		List<Student> students = new ArrayList<>();
		Student student = null;
		for (Map<String, Object> map : data) {
			student = new Student(Integer.parseInt(map.getOrDefault("code", "").toString()),
					map.getOrDefault("name", "").toString(), map.getOrDefault("sex", "").toString(),
					map.getOrDefault("school", "").toString());
			students.add(student);
		}
		return students;
	}
}
